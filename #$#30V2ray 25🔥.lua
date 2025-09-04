local CONFIG = {
    FILES = {
        DECRYPT = "/sdcard/decrypt.txt",
        COMPLETE = "/sdcard/decrypt_complete.txt",
   --     VMESS = "/sdcard/vmess_config.txt",
   --     VLESS = "/sdcard/vless_config.txt",
        DARKTUNNEL = "/sdcard/darktunnel_config.txt"
    },
    DEFAULT_ALTIER_ID = "0",
    DEFAULT_SECURITY = "auto",
    DEFAULT_NETWORK = "ws",
    DEFAULT_PATH = "/",
    DEFAULT_SERVER_NAME = ""
}

local MemoryUtils = {}

function MemoryUtils.rwmem(address, sizeOrBuffer)
    assert(address ~= nil, "[rwmem]: dirección nula.")
    
    local _rw = {}
    
    if type(sizeOrBuffer) == "number" then
        local result = ""
        for i = 1, sizeOrBuffer do
            _rw[i] = {
                address = address - 1 + i,
                flags = gg.TYPE_BYTE
            }
        end
        
        for _, value in ipairs(gg.getValues(_rw)) do
            if value.value == 0 and limit == true then
                return result
            end
            result = result .. string.format("%02X", value.value & 255)
        end
        
        return result
    end
    
    local byte = {}
    sizeOrBuffer:gsub("..", function(x)
        byte[#byte + 1] = x
        _rw[#byte] = {
            address = address - 1 + #byte,
            flags = gg.TYPE_BYTE,
            value = x .. "h"
        }
    end)
    
    gg.setValues(_rw)
end

local TextUtils = {}

function TextUtils.hexDecode(hex)
    return (hex:gsub("%x%x", function(digits)
        return string.char(tonumber(digits, 16))
    end))
end

function TextUtils.cleanText(str)
    return (str:gsub("[\0-\31\127]", ""))
end

function TextUtils.formatJson(json)
    local indent = 0
    local inString = false
    local escaped = false
    local result = ""
    
    for i = 1, #json do
        local char = json:sub(i, i)
        
        if escaped then
            result = result .. char
            escaped = false
        elseif char == "\\" then
            result = result .. char
            escaped = true
        elseif char == "\"" then
            result = result .. char
            inString = not inString
        elseif not inString then
            if char == "{" or char == "[" then
                indent = indent + 1
                result = result .. char .. "\n" .. string.rep("  ", indent)
            elseif char == "}" or char == "]" then
                indent = indent - 1
                result = result .. "\n" .. string.rep("  ", indent) .. char
            elseif char == "," then
                result = result .. char .. "\n" .. string.rep("  ", indent)
            elseif char == ":" then
                result = result .. ": "
            else
                result = result .. char
            end
        else
            result = result .. char
        end
    end
    
    return result
end

local Base64Utils = {}

function Base64Utils.encode(data)
    local base64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local result = ""
    local pad = 0
    
    for i = 1, #data, 3 do
        local a = data:byte(i) or 0
        local b = data:byte(i+1) or 0
        local c = data:byte(i+2) or 0
        
        if i + 1 > #data then
            b = 0
            c = 0
            pad = 2
        elseif i + 2 > #data then
            c = 0
            pad = 1
        else
            pad = 0
        end
        
        local combined = (a * 65536) + (b * 256) + c
        
        local b1 = math.floor(combined / 262144) % 64
        local b2 = math.floor(combined / 4096) % 64
        local b3 = math.floor(combined / 64) % 64
        local b4 = combined % 64
        
        result = result .. base64chars:sub(b1 + 1, b1 + 1)
        result = result .. base64chars:sub(b2 + 1, b2 + 1)
        
        if pad == 2 then
            result = result .. "=="
        elseif pad == 1 then
            result = result .. base64chars:sub(b3 + 1, b3 + 1) .. "="
        else
            result = result .. base64chars:sub(b3 + 1, b3 + 1)
            result = result .. base64chars:sub(b4 + 1, b4 + 1)
        end
    end
    
    return result
end

function Base64Utils.decode(data)
    local base64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local result = ""
    
    data = data:gsub("=", "")
    
    for i = 1, #data, 4 do
        local a = base64chars:find(data:sub(i, i)) or 1
        local b = base64chars:find(data:sub(i+1, i+1)) or 1
        local c = base64chars:find(data:sub(i+2, i+2)) or 1
        local d = base64chars:find(data:sub(i+3, i+3)) or 1
        
        a, b, c, d = a-1, b-1, c-1, d-1
        
        local combined = (a * 262144) + (b * 4096) + (c * 64) + d
        
        if i+2 <= #data then
            result = result .. string.char(math.floor(combined / 65536))
            result = result .. string.char(math.floor(combined / 256) % 256)
            result = result .. string.char(combined % 256)
        elseif i+1 <= #data then
            result = result .. string.char(math.floor(combined / 65536))
            result = result .. string.char(math.floor(combined / 256) % 256)
        else
            result = result .. string.char(math.floor(combined / 65536))
        end
    end
    
    return result
end

local JsonParser = {}

function JsonParser.extractValue(json, key)
    local pattern = '"' .. key .. '"%s*:%s*"([^"]*)"'
    local value = json:match(pattern)
    if value then return value end
    
    pattern = '"' .. key .. '"%s*:%s*([^,}%]%s]*)'
    value = json:match(pattern)
    if value then 
        value = value:gsub("%s+$", "")
        return value 
    end
    
    return nil
end

function JsonParser.extractFromVnext(jsonStr)
    local vnextPattern = '"vnext"%s*:%s*%[%s*{([^}]+)}'
    local vnextContent = jsonStr:match(vnextPattern)
    
    if not vnextContent then
        return {}
    end
    
    local result = {
        address = vnextContent:match('"address"%s*:%s*"([^"]*)"'),
        port = vnextContent:match('"port"%s*:%s*"?([^",}%s]*)"?')
    }
    
    local usersPattern = '"users"%s*:%s*%[%s*{([^}]+)}'
    local usersContent = vnextContent:match(usersPattern)
    
    if usersContent then
        result.id = usersContent:match('"id"%s*:%s*"([^"]*)"')
        result.alterId = usersContent:match('"alterId"%s*:%s*"?([^",}%s]*)"?')
        result.security = usersContent:match('"security"%s*:%s*"([^"]*)"')
    end
    
    return result
end

local ConfigGenerator = {}

function ConfigGenerator.extractBasicInfo(jsonStr)
    local info = {
        address = JsonParser.extractValue(jsonStr, "address"),
        port = JsonParser.extractValue(jsonStr, "port"),
        id = JsonParser.extractValue(jsonStr, "id"),
        alterId = JsonParser.extractValue(jsonStr, "alterId") or CONFIG.DEFAULT_ALTIER_ID,
        security = JsonParser.extractValue(jsonStr, "security") or CONFIG.DEFAULT_SECURITY,
        network = JsonParser.extractValue(jsonStr, "network") or CONFIG.DEFAULT_NETWORK,
        path = JsonParser.extractValue(jsonStr, "path") or CONFIG.DEFAULT_PATH,
        serverName = JsonParser.extractValue(jsonStr, "serverName") or CONFIG.DEFAULT_SERVER_NAME
    }
    
    if not info.address then
        info.address = jsonStr:match('"add"%s*:%s*"([^"]*)"') or 
                      jsonStr:match('"server"%s*:%s*"([^"]*)"') or
                      jsonStr:match('"host"%s*:%s*"([^"]*)"')
    end
    
    if not info.port then
        info.port = jsonStr:match('"port"%s*:%s*"?([^",}%s]*)"?') or
                   jsonStr:match('"serverPort"%s*:%s*"?([^",}%s]*)"?')
    end
    
    if not info.id then
        info.id = jsonStr:match('"uuid"%s*:%s*"([^"]*)"') or
                 jsonStr:match('"userId"%s*:%s*"([^"]*)"')
    end
    
    if not info.address or not info.port or not info.id then
        local vnextData = JsonParser.extractFromVnext(jsonStr)
        info.address = info.address or vnextData.address
        info.port = info.port or vnextData.port
        info.id = info.id or vnextData.id
        info.alterId = info.alterId or vnextData.alterId or CONFIG.DEFAULT_ALTIER_ID
        info.security = info.security or vnextData.security or CONFIG.DEFAULT_SECURITY
    end
    
    info.host = JsonParser.extractValue(jsonStr, "Host") or info.address or ""
    info.tls = (jsonStr:match('"tls"') or jsonStr:match('"security"%s*:%s*"tls"')) and "tls" or ""
    
    return info
end

function ConfigGenerator.generateVmess(jsonStr)
    local info = ConfigGenerator.extractBasicInfo(jsonStr)
    
    if not info.address or not info.port or not info.id then
        return nil, "No se pudieron extraer los valores básicos para VMESS"
    end
    
    local vmessJson = string.format([[{
  "v": "2",
  "ps": "v2ray",
  "add": "%s",
  "port": "%s",
  "id": "%s",
  "aid": "%s",
  "scy": "",
  "net": "%s",
  "type": "none",
  "host": "%s",
  "path": "%s",
  "tls": "%s",
  "sni": "%s",
  "alpn": "",
  "allowInsecure": ""
}]], info.address, info.port, info.id, info.alterId, info.network, 
     info.host, info.path, info.tls, info.serverName)
    
    local encodedConfig = Base64Utils.encode(vmessJson)
    return "vmess://" .. encodedConfig, vmessJson
end

function ConfigGenerator.generateVless(jsonStr)
    local info = ConfigGenerator.extractBasicInfo(jsonStr)
    
    if not info.address or not info.port or not info.id then
        return nil, "No se pudieron extraer los valores básicos para VLESS", nil
    end
    
    local params = {}
    
    table.insert(params, "encryption=none")
    
    if info.tls and info.tls ~= "" then
        table.insert(params, "security=" .. info.tls)
        if info.serverName and info.serverName ~= "" then
            table.insert(params, "sni=" .. info.serverName)
        end
    else
        table.insert(params, "security=none")
    end
    
    if info.network and info.network ~= "" then
        table.insert(params, "type=" .. info.network)
        
        if info.network == "ws" then
            if info.path and info.path ~= "" then
                table.insert(params, "path=" .. info.path)
            end
            if info.host and info.host ~= "" then
                table.insert(params, "host=" .. info.host)
            end
        end
    end
    
    local vlessUrl = string.format("vless://%s@%s:%s", info.id, info.address, info.port)
    
    if #params > 0 then
        vlessUrl = vlessUrl .. "?" .. table.concat(params, "&")
    end
    
    vlessUrl = vlessUrl .. "#v2ray-vless"
    
    local vlessJson = string.format([[{
  "v": "2",
  "ps": "vless-config",
  "add": "%s",
  "port": "%s",
  "id": "%s",
  "encryption": "none",
  "net": "%s",
  "type": "none",
  "host": "%s",
  "path": "%s",
  "tls": "%s",
  "sni": "%s",
  "alpn": "",
  "allowInsecure": ""
}]], info.address, info.port, info.id, info.network, 
     info.host, info.path, info.tls, info.serverName)
    
    return vlessUrl, nil, vlessJson
end

function ConfigGenerator.generateDarkTunnel(jsonStr)
    local info = ConfigGenerator.extractBasicInfo(jsonStr)
    
    if not info.address or not info.port or not info.id then
        return nil, "No se pudieron extraer los valores básicos para DarkTunnel"
    end
    
    local darkTunnelJson = string.format([[{
  "type": "VMESS",
  "name": "urltest",
  "vmessTunnelConfig": {
    "v2rayConfig": {
      "host": "%s",
      "port": "%s",
      "uuid": "%s",
      "serverNameIndication": "%s",
      "wsPath": "%s",
      "wsHeaderHost": "%s"
    }
  }
}]], info.address, tonumber(info.port), info.id, info.serverName, info.path, info.host)
    
    local encodedConfig = Base64Utils.encode(darkTunnelJson)
    return "darktunnel://" .. encodedConfig, nil
end

local OutputGenerator = {}

function OutputGenerator.createVisual(jsonStr, vmessUrl, vmessJson, vlessUrl, vlessJson, darkTunnelUrl)
    local info = ConfigGenerator.extractBasicInfo(jsonStr)
    
    local output = {}
    
    table.insert(output, " 𝗩𝟮𝗿𝗮𝘆 🔐")
--    table.insert(output, " 𝗖𝗼𝗱𝗲 𝗕𝘆: The_Clay")
    table.insert(output, "\n")
    
    table.insert(output, "")
    table.insert(output, "  𝗩𝟮𝗥𝗔𝗬 𝗜𝗠𝗣𝗢𝗥𝗧𝗔𝗡𝗧 𝗦𝗘𝗧𝗧𝗜𝗡𝗚𝗦 ▼")
    table.insert(output, "```")
    table.insert(output, "  𝗣𝗿𝗼𝘁𝗼𝗰𝗼𝗹: vmess/vless")
    table.insert(output, "  𝗮𝗱𝗱𝗿𝗲𝘀𝘀: " .. (info.address or "Null"))
 --   table.insert(output, "  𝗽𝗼𝗿𝘁: " .. (info.port or "Null"))
    table.insert(output, "  𝐢𝐝: " .. (info.id or "Null"))
    table.insert(output, "  𝗺𝗲𝘁𝗵𝗼𝗱: " .. (info.security and info.security ~= "" and info.security or "Null"))
    table.insert(output, "  𝗽𝗮𝘀𝘀𝘄𝗼𝗿𝗱: Null")
    table.insert(output, "  𝗻e𝘁𝘄𝗼𝗿𝗸: " .. (info.network and info.network ~= "" and info.network or "Null"))
    table.insert(output, "  𝘀𝗲𝗰𝘂𝗿𝗶𝘁𝘆: " .. (info.tls ~= "" and "tls" or "Null"))
    table.insert(output, "  𝘀𝗲𝗿𝘃𝗲𝗿𝗡𝗮𝗺𝗲: " .. (info.serverName and info.serverName ~= "" and info.serverName or "Null"))
    table.insert(output, "  𝘄𝘀_𝗛𝗼𝘀𝘁: " .. (info.host and info.host ~= "" and info.host or "Null"))
        table.insert(output, "  𝗽𝗼𝗿𝘁: " .. (info.port or "Null"))
    table.insert(output, "  𝗣a𝘁𝗵: " .. (info.path and info.path ~= "" and info.path or "Null"))
    table.insert(output, "```\n")
    
--    if vmessUrl then
    --    table.insert(output, "")
   --     table.insert(output, "  𝗩𝟮𝗥𝗔𝗬 𝗩𝗠𝗘𝗦𝗦 𝗨𝗥𝗟 ▼")
  --      table.insert(output, "```")
   --     table.insert(output, vmessUrl)
     --   table.insert(output, "```\n")
   -- end
    
--    if vlessUrl then
    --    table.insert(output, "")
  --      table.insert(output, "  𝗩𝟮𝗥𝗔𝗬 𝗩𝗟𝗘𝗦𝗦 𝗨𝗥𝗟 ▼")
     --   table.insert(output, "```")
    --    table.insert(output, vlessUrl)
      --  table.insert(output, "```\n")
--    end
    
    if darkTunnelUrl then
        table.insert(output, "  𝗗𝗔𝗥𝗞𝗧𝗨𝗡𝗡𝗘𝗟 𝗨𝗥𝗟 ▼")
        table.insert(output, "```")
        table.insert(output, darkTunnelUrl)
        table.insert(output, "```\n")
    end
    
    table.insert(output, "")
    table.insert(output, "  𝗩𝟮𝗥𝗔𝗬 𝗔𝗟𝗟 𝗝𝗦𝗢𝗡 ▼")
    table.insert(output, "```")
    table.insert(output, TextUtils.formatJson(jsonStr))
    table.insert(output, "```")
    table.insert(output, "  D𝗲𝗰𝗿𝘆𝗽𝘁 𝗕𝘆: The_Clay")
    
    return table.concat(output, "\n")
end

local FileUtils = {}

function FileUtils.save(data, filename)
    filename = filename or CONFIG.FILES.DECRYPT
    local file = io.open(filename, "w")
    if file then
        file:write(data)
        file:close()
        return true
    end
    return false
end

function FileUtils.read(filename)
    local file = io.open(filename, "r")
    if not file then
        return nil, "Error al leer archivo: " .. filename
    end
    
    local content = file:read("*all")
    file:close()
    return content
end

-- FUNCIÓN DE BÚSQUEDA INTEGRADA DEL PRIMER SCRIPT
local ConfigSearcher = {}

function ConfigSearcher.searchAndSave(searchText)
    gg.searchNumber(searchText, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local result = gg.getResults(1)
    
    if #result > 0 then
        if limit == false then
            result[1].address = result[1].address - 0x400
        end
        local readedMem = MemoryUtils.rwmem(result[1].address, 50000)
        FileUtils.save(TextUtils.hexDecode(readedMem))
        return true
    end
    
    return false
end

function ConfigSearcher.findConfig()
    -- Usando la misma lógica de búsqueda secuencial del primer script
    local hc_2, hc_3, hc_4, hc_5, hc_6, h_7 = false, false, false, false, false
    
    -- Primera búsqueda
    if not ConfigSearcher.searchAndSave(':{"inbounds":[{"listen":"127.0.0.1",') then
        gg.toast("💋💋💥💥💥")
        hc_2 = true
    else
        return true
    end
    
    -- Segunda búsqueda
    if hc_2 then 
        if not ConfigSearcher.searchAndSave(':"stats":{},') then
            gg.toast("💋💋💥💥💥")
            hc_3 = true
        else
            return true
        end
    end
    
    -- Tercera búsqueda
    if hc_3 then
        if not ConfigSearcher.searchAndSave(':{"remarks"') then
            gg.toast("💋💋💥💥💥")
            hc_4 = true
        else
            return true
        end
    end
    
    -- Cuarta búsqueda
    if hc_4 then
        if not ConfigSearcher.searchAndSave(':"dns":') then
            gg.toast("💋💋💥💥💥")
            hc_5 = true
        else
            return true
        end
    end

    -- Quinta búsqueda
    if hc_5 then
        if not ConfigSearcher.searchAndSave(':{"sshConfigType":') then
            gg.toast("💋💋💥💥💥")
            hc_6 = true
        else
            return true
        end
    end
    
        if hc_6 then 
        if not ConfigSearcher.searchAndSave(':"inbounds') then
            gg.toast("💋💋💥💥💥")
            hc_7 = true
        else
            return true
        end
    end
    
    -- Si todas las búsquedas fallan
    if hc_7 then
        gg.toast("Ivan")
        return false
    end
    
    return false
end

function TheClay()
    limit = true
    gg.clearResults()
    gg.setVisible(true)
    gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | 
                 gg.REGION_JAVA | gg.REGION_C_HEAP | gg.REGION_PPSSPP | 
                 gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_STACK | 
                 gg.REGION_ASHMEM | gg.REGION_BAD)
    
    if not ConfigSearcher.findConfig() then
        gg.alert("❌ No se encontró ninguna configuración. Reimporta el servidor y vuelve a intentar.")
        os.exit()
    end
    
    local configContent, error = FileUtils.read(CONFIG.FILES.DECRYPT)
    if not configContent then
        gg.alert("❌ " .. error)
        os.exit()
    end
    
    configContent = TextUtils.cleanText(configContent)
    
    local vmessConfig, vmessJson = ConfigGenerator.generateVmess(configContent)
    local vlessConfig, vlessError, vlessJson = ConfigGenerator.generateVless(configContent)
    local darkTunnelConfig, darkTunnelError = ConfigGenerator.generateDarkTunnel(configContent)
    
    local visualOutput = OutputGenerator.createVisual(configContent, vmessConfig, vmessJson, vlessConfig, vlessJson, darkTunnelConfig)
    
    FileUtils.save(visualOutput, CONFIG.FILES.COMPLETE)
    
    if vmessConfig then
        FileUtils.save(vmessConfig, CONFIG.FILES.VMESS)
    end
    
    if darkTunnelConfig then
        FileUtils.save(darkTunnelConfig, CONFIG.FILES.DARKTUNNEL)
    end
    
    gg.copyText(visualOutput, false)
    
    gg.alert(visualOutput, "🎉 Configuración Extraída")
    gg.setVisible(true)
end

TheClay()