gg.toast("🅱🅻🅰🅲🅺🅷🅰🆃 [🇵🇸]")
    --Code by : BLACKHAT80
gg.setVisible(true)
    --Code by : BLACKHAT80
LuaLibraryTool = -1
function checkExpiry(startYear, startMonth, startDay, endYear, endMonth, endDay)
    --Code by : BLACKHAT80
  local startDate = os.time{year=startYear, month=startMonth, day=startDay}
  local expiryDate = os.time{year=endYear, month=endMonth, day=endDay}
  local currentDate = os.time()
  if currentDate < startDate or currentDate >= expiryDate then
      --Code by : BLACKHAT80
    print("SORRY EXPIRED\n Contact : @blackhat80")
    os.exit()
  end
end
    --Code by : BLACKHAT80
function HOME()
    MENU = gg.choice({
        "╭───────────────\n│𝐇𝐓𝐓𝐏 𝐂𝐔𝐒𝐓𝐎𝐌 𝐓𝐎𝐎𝐋 \n╰───────────────",
        "╭───────────────\n│𝗧𝗛𝗘𝗠𝗘 𝗟𝗨𝗔\n╰───────────────",
        "╭───────────────\n│꧁♡EXIT♡꧂\n╰───────────────"
    }, nil, os.date(
    os.date([[
    ︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻⋆︻
    ┏━━◤      𝘿𝙀𝘾𝙍𝙔𝙋𝙏 𝘽𝙔      ◥━━┓
    ┗━━◣      BLACKHAT80      ◢━━┛
    ︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼⋆︼
    ╭︵‿︵‿︵‿︵‿︵‿‿︵‿︵‿︵╮
         https://bit.ly/config_decoding_staff
         BLACKHAT: @blackhat80
    ╰‿︵‿︵‿︵‿︵‿︵‿‿︵‿︵‿╯
    ◤┏━━━━━━━━━━━━━━━━┓◥
    ⋆☆꧁༒  Blackhat80 ༒꧂☆
    ◣┗━━━━━━━━━━━━━━━━┛◢
    ]])) ) 
    if MENU == nil then
    else
        if MENU == 1 then httpcustom() end
        if MENU == 2 then theme() end
        if MENU == 3 then LOBBY() end 
    end
    LuaLibraryTool = -1
end
function httpcustom()
    limit = false    --Code by : BLACKHAT80
    function rwmem(Address, SizeOrBuffer)
        assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
        _rw = {}
        if type(SizeOrBuffer) == "number" then
            _ = ""
            do
                for _FORV_5_ = 1, SizeOrBuffer do
                    _rw[_FORV_5_] = {
                        address = Address - 1 + _FORV_5_,
                        flags = gg.TYPE_BYTE
                    }
                end
            end    --Code by : BLACKHAT80
            do
                for _FORV_5_, _FORV_6_ in ipairs(gg.getValues(_rw)) do
                    if _FORV_6_.value == 0 and limit == true then
                        return _
                    end
                    _ = _ .. string.format("%02X", _FORV_6_.value & 255)
                end
            end
            return _
        end    --Code by : BLACKHAT80
        Byte = {}
        SizeOrBuffer:gsub("..", function(x)
            Byte[#Byte + 1] = x
            _rw[#Byte] = {
                address = Address - 1 + #Byte,
                flags = gg.TYPE_BYTE,
                value = x .. "h"
            }
        end)
        gg.setValues(_rw)
    end
    function hexdecode(hex)
        return (hex:gsub("%x%x", function(digits)
            return string.char(tonumber(digits, 16))
        end))
    end
    function hexencode(str)
        return (str:gsub(".", function(char)
            return string.format("%2x", char:byte())    --Code by : BLACKHAT80
        end))
    end
    function getCurrentTime()
        return os.date("%Y-%m-%d %H:%M:%S")
    end
    function Dec2Hex(nValue)
        nHexVal = string.format("%X", nValue)
        sHexVal = nHexVal .. ""
        return sHexVal
    end
    function ToInteger(number)
        return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
    end
    --Code by : BLACKHAT80
    function save(data)
        local function hexencode_spasi(str)
            return (str:gsub(".", function(char)
                return string.format("%02x ", char:byte())
            end))
        end
        local function checkMatch(key, str)
            result = nil
            for index, value in ipairs(key) do
                result = str:match(value)
                if result then 
                    break 
                end
            end
            return result
        end
        local function strip(s)
            s = s:gsub("^%s*(.-)%s*$", "%1")
            s = s:gsub("^(..?%s%s%s%s%s%s%s?%s?)", "")
            return s
        end
        local function prosesData(data)
            local function findExpDate(tbl)
                local key = {
                    "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d",
                    "lifeTime"
                } 
                    --Code by : BLACKHAT80
                local result = nil
                for index_tbl, value_tbl in ipairs(tbl) do
                    for index_key, value_key in ipairs(key) do
                        if value_tbl:match(value_key) then
                            result = index_tbl
                        end
                    end
                end
                return result
            end
            local function fixedConfig(index, tbl)
                local result_fixedConfig = {}
                local beginIndex = index - 4
                local lastIndex = beginIndex + 31
                for i = beginIndex, lastIndex do
                    table.insert(result_fixedConfig, tbl[i])
                end
                return result_fixedConfig
            end
                --Code by : BLACKHAT80
            data = hexencode_spasi(data)
            data = data:gsub("00", "20")
            data = data:gsub("20", "z")
            data = data:gsub("66 61 6c 73 65", "F A L S E")
            data = data:gsub("\x20", "")
            data = data:gsub("\n", "")
            local separator = data:match("FALSE[\x7a]+(.-)[\x7a]+")
            data = data:gsub(separator, "0a56616c647947616e74656e67")
            separator = "0a56616c647947616e74656e67"
            data = data:gsub("z", "20")
            data = data:gsub("FALSE", "66616c7365")
            local result = splitString(data, separator)
            local assemblyPointIndex = findExpDate(result)
            local getConfig = fixedConfig(assemblyPointIndex, result)
            return getConfig
        end
            --Code by : BLACKHAT80
        function dec_ssh(ld)
            if select(2, ld:gsub("%.", "")) == 3 and not ld:match("[^.]+") then
                return ld
            end
            if not ld:match("[.-]") then
                return ld
            end
            local status, result = pcall(function()
                local delimiter = ld:match("%.") and "." or "-"
                local parts = {}
                for part in ld:gmatch("[^" .. delimiter .. "]+") do
                    table.insert(parts, part)
                end
                if #parts % 2 ~= 0 then
                    return ld
                end    --Code by : BLACKHAT80
                local userlv = {}
                local userld = {}
                for i = 1, #parts, 2 do
                    table.insert(userlv, tonumber(parts[i]))
                end
                for i = 2, #parts, 2 do
                    table.insert(userld, tonumber(parts[i]))
                end
                local newld = ""
                for i = 1, #userld do
                    newld = newld .. string.char((userlv[i] - #userlv) // (2 ^ (userld[i] - #userlv)) % 256)
                end
                return newld
            end)
            --code by: @blackhat80
            if status then
                return result
            else
                return ld
            end
        end
        function is_scx(s)
            return s:match("[`\"\\]") ~= nil
        end
--code by: @blackhat80
        function decode_ciphertext(ciphertext)
            if is_scx(ciphertext) then
                return ciphertext
            end

            local status, result = pcall(function()
                if ciphertext:match("@") then
                    local parts = {}
                    for part in ciphertext:gmatch("[^@]+") do
                        table.insert(parts, part)
                    end
                    if #parts == 2 then
                        local user_pass = {}
                        for part in parts[2]:gmatch("[^:]+") do
                            table.insert(user_pass, part)
                        end
                        if #user_pass == 2 then
                            return parts[1] .. "@" .. dec_ssh(user_pass[1]) .. ":" .. dec_ssh(user_pass[2])
                        end
                    end
                elseif ciphertext:match(":") then
                    local user_pass = {}
                    for part in ciphertext:gmatch("[^:]+") do
                        table.insert(user_pass, part)
                    end
                    if #user_pass == 2 then
                        return dec_ssh(user_pass[1]) .. ":" .. dec_ssh(user_pass[2])
                    end
                end
                return ciphertext
            end)

            if status then
                return result
            else
                return ciphertext
            end
        end    --Code by : BLACKHAT80
        function splitString(str, separator)
            local match_1, match_2 = str:match("(.-)"..separator.."(.*)")
            local tbl = {}
            local no = 1
            while (match_2:match("(.-)"..separator.."(.*)") and no < 100) do
                match_1, match_2 = match_2:match("(.-)"..separator.."(.*)")
                if hexdecode(match_1):match("[^\x20]+") then
                    table.insert(tbl, strip(hexdecode(match_1):gsub("[^%s\n -~]+", "")))
                else 
                    table.insert(tbl, '')
                end
                no = no + 1
            end    --Code by : BLACKHAT80
            return tbl
        end
        local function getOutput(tbl)
            local cfgRegex = {
                [1] = {
                    ["name"] = 'Payload',
                    ["regex"] = "(.*)"  
                },
                [2] = {
                    ["name"] = 'Proxy',
                    ["regex"] = "(.*)"      
                },
                [3] = {
                    ["name"] = 'BlockRoot',
                    ["regex"] = "(.*)"
                },
                [4] = {
                    ["name"] = 'ExtraSniffer',
                    ["regex"] = "(.*)"
                },
                [5] = {
                    ["name"] = 'Expired',
                    ["regex"] = "(.*)"
                },
                [7] = {
                    ["name"] = 'Ssh', 
                    ["regex"] = "[0-9a-zA-Zx\x2e\x2d]+:[%d]+@[%w\x2e\x2d]+:[%w]+"
                },
                [8] = {
                    ["name"] = 'Ssh', 
                    ["regex"] = "(.*)"
                },
                [9] = {
                    ["name"] = 'LockProvider',
                    ["regex"] = "(.*)"
                },
                [10] = {
                    ["name"] = 'ProviderID', 
                    ["regex"] = "[0-9]"
                },
                [11] = {
                    ["name"] = 'OpenVPN-Cerf',
                    ["regex"] = "(.*)"
                },
                [12] = {
                    ["name"] = 'OpenVPN-User:Pass',
                    ["regex"] = "(.*)"
                },
                [13] = {
                    ["name"] = 'SNI',
                    ["regex"] = "(.*)"
                },
                [15] = {
                    ["name"] = 'PortUDPGW',
                    ["regex"] = "(.*)"
                },
                [17] = {
                    ["name"] = 'LockHWID',
                    ["regex"] = "(.*)"
                },
                [18] = {
                    ["name"] = 'ValueHWID',
                    ["regex"] = "(.*)"
                },
                [19] = {
                    ["name"] = 'NickPowerd',
                    ["regex"] = "(.*)"
                },
                [22] = {
                    ["name"] = 'BypassPassword',
                    ["regex"] = "(.*)"
                },
                [23] = {
                    ["name"] = 'Password',
                    ["regex"] = "[a-zA-Z0-9]"
                }, 
                [24] = {
                    ["name"] = 'PsihonMode',
                    ["regex"] = "(.*)"            
                }, 
                [25] = {
                    ["name"] = 'PsiphonAuthorizon',
                    ["regex"] = "[\x5b]\x22.*]"
                },   
                [26] = {
                    ["name"] = '𝘝𝟤𝘳𝘢𝘺 𝘌𝘯𝘢𝘣𝘭𝘦𝘥',
                    ["regex"] = "(.*)"
                },
                [27] = {
                    ["name"] = '𝘝2𝘙𝘢𝘺',
                    ["regex"] = "(.*)"
                },
                [29] = {
                    ["name"] = 'SlowDNSMode', 
                    ["regex"] = "(.*)" 
                }, 
                [28] = {
                    ["name"] = 'VerApp',
                    ["regex"] = "(.*)"
                },
                [30] = {
                    ["name"] = 'NameServer',
                    ["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
                },
                [31] = {
                    ["name"] = 'Public Key', 
                    ["regex"] = "[a-f0-9]+[32,64,50,66,61,6c,73,65]+"
                },
                [32] = {
                    ["name"] = 'DNS Host',
                    ["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
                }
            }
--code by: @blackhat80
            local message = ''
            for index, value in ipairs(tbl) do
                if cfgRegex[index] and value:match(cfgRegex[index]["regex"]) then
                    local namaKonten = cfgRegex[index]["name"]
                    local valueRegexKonten = value:match(cfgRegex[index]["regex"])
                    if index == 7 or index == 8 or index == 9 or index == 11 or index == 12 then
                        valueRegexKonten = decode_ciphertext(valueRegexKonten)
                    end--code by: @blackhat80
                    message = message..''
                    message = message..namaKonten..'"'..valueRegexKonten..'",\n'
                end
            end    --Code by : BLACKHAT80
            message = message..""
            return message
        end
        local contentToDecrypt = hexdecode(data)
        contentToDecrypt = prosesData(hexdecode(data))--code by: @blackhat80
        local hasil = getOutput(contentToDecrypt)
        local dumpFile = io.open(gg.EXT_STORAGE .. "/dump.txt", "w")
        if dumpFile then    --Code by : BLACKHAT80
            dumpFile:write(hexdecode(data))
            dumpFile:close()
        end
        local configFile = io.open(gg.EXT_STORAGE .. "/decrypted_config.txt", "w")
        if configFile then
            configFile:write(hasil)    --Code by : BLACKHAT80
            configFile:close()
            print("\n\n\n𝗡𝗼𝘄 𝘂𝘀𝗲 𝗧𝗵𝗲𝗺𝗲 𝗹𝘂𝗮 𝘀𝗰𝗿𝗶𝗽𝘁\nResults saved to SD card: /sdcard/decrypted_config.txt\n\n\n━━━━━━━━━━━━━━━\n⭐ 𝐇𝐓𝐓𝐏 𝐂𝐔𝐒𝐓𝐎𝐌 𝐓𝐎𝐎𝐋 ⚔️🔐\n🌟 𝐁𝐘: 🅱🅻🅰🅲🅺🅷🅰🆃 [🇵🇸]\n✴️ 𝐂𝐨𝐝𝐞 𝐁𝐲 : @blackhat80\n✨ 𝐆𝐑𝐎𝐔𝐏: https://bit.ly/config_decoding_staff\n━━━━━━━━━━━━━━━\n\n")
        end        
        gg.copyText(hasil, false)--code by: @blackhat80
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_JAVA_HEAP)
    gg.searchNumber(":GET / HTTP", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
        hc_method2 = true
    end--code by: @blackhat80
    if hc_method2 then
        gg.searchNumber("Host: ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method3 = true    --Code by : BLACKHAT80
        end
    end--code by: @blackhat80
    if hc_method3 then
        gg.searchNumber(":inbounds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method4 = true
        end--code by: @blackhat80
    end
    if hc_method4 then
        gg.searchNumber(":[crlf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method5 = true
        end
    end
    if hc_method5 then
        gg.searchNumber("Upgrade: websocket", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method6 = true
        end    --Code by : BLACKHAT80
    end
    if hc_method6 then
        gg.searchNumber(":[splitPsiphon][splitPsiphon]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method7 = true
        end
    end
    if hc_method7 then
        gg.searchNumber(":e2b01fd329aea", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)    --Code by : BLACKHAT80
        if #r < 1 then
            hc_method8 = true
        end    --Code by : BLACKHAT80
    end    --Code by : BLACKHAT80
    if hc_method8 then
        gg.searchNumber(':["ey', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method9 = true
        end
    end
    if hc_method9 then
        gg.searchNumber("h 3a 34 34 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method10 = true    --Code by : BLACKHAT80
        end
    end
    if hc_method10 then    --Code by : BLACKHAT80
        gg.searchNumber("h 3A 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method11 = true
        end
    end    --Code by : BLACKHAT80
    if hc_method11 then
        limit = false
        gg.searchNumber("h 20 22 64 6e 73 22 3a 20 7b", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method12 = true
        end    --Code by : BLACKHAT80
    end    --Code by : BLACKHAT80
    if hc_method12 then--code by: @blackhat80
        limit = false
        gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then--code by: @blackhat80
            hc_method13 = true
        end
    end
    if hc_method13 then
        limit = false
        gg.searchNumber("h 3A 35 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method14 = true    --Code by : BLACKHAT80
        end
    end--code by: @blackhat80
    if hc_method14 then
        limit = false
        gg.searchNumber(":# Config for OpenVPN", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method15 = true
        end
    end
    --code by: @blackhat80
    if hc_method15 then
        limit = false
        gg.searchNumber("h 20 20 50 4F 53 54", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method16 = true
        end
    end    --Code by : BLACKHAT80
    if hc_method16 then
        limit = false
        gg.searchNumber("h 5B 00 73 00 70 00 6C 00 69 00 74 00 43 00 6F 00 6E 00 66 00 69 00 67 00 5D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method17 = true
        end
    end
    if hc_method17 then    --Code by : BLACKHAT80
        limit = false
        gg.searchNumber("h 22 69 73 4C 6F 67 69 6E 48 77 69 64 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method18 = true
        end
    end--code by: @blackhat80
    if hc_method18 then
        limit = false
        gg.searchNumber("h 3a 32 32 32 32 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method19 = true
        end
    end    --Code by : BLACKHAT80
    if hc_method19 then
        limit = false
        gg.searchNumber("h48 6F 73 74 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method20 = true
        end
    end
    if hc_method20 then
        limit = false
        gg.searchNumber("h 3a 32 32 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method21 = true
        end
    end
    if hc_method21 then    --Code by : BLACKHAT80
        limit = false
        gg.searchNumber("h 3a 34 34 34 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method22 = true
        end    --Code by : BLACKHAT80
    end
    if hc_method22 then
        limit = false
        gg.searchNumber("h 41 43 4C 20 2f 20 48 54 54 50 2f", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method23 = true
        end    --Code by : BLACKHAT80
    end
    if hc_method23 then
        limit = false
        gg.searchNumber("h 43 4f 4e 4e 45 43 54 20 5b", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method24 = true    --Code by : BLACKHAT80
        end
    end
    if hc_method24 then
        limit = false
        gg.searchNumber("h 48 6f 73 74 3a 5b 72 6f 74 61 74 65 3d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method25 = true
        end
    end
    if hc_method25 then
        limit = false
        gg.searchNumber(":# Config For OpenVPN 2.x", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method26 = true
        end
    end    --Code by : BLACKHAT80
    if hc_method26 then
        limit = false
        gg.searchNumber(":e2b01fd329aea", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method27 = true
        end
    end--code by: @blackhat80
    if hc_method27 then
        limit = false
        gg.searchNumber(":# Config For OpenVPN 2.x", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            hc_method28 = true
        end
    end
    if hc_method28 then
        os.exit()
    end
    --Code by : BLACKHAT80
    local r = gg.getResults(1)
    if limit == false then
        r[1].address = r[1].address - 0x6000
    end
    readedMem = rwmem(r[1].address, 30000)
    save(readedMem)
    gg.clearResults()
end
function theme()
    local file_path = "/sdcard/decrypted_config.txt"
    local f = io.open(file_path, "r")
    if not f then
        gg.alert("❌ Cannot open: " .. file_path)
        os.exit()
    end
    local content = f:read("*all")
    f:close()
    local function trim(s)
        return s:match("^%s*(.-)%s*$")
    end
    local function extract(key)
        if key == "𝘝2𝘙𝘢𝘺" then
            local pattern = key .. '[:%s]*"({.-})",'
            local value = content:match(pattern)
            if value then
                value = value:gsub('\\"', '"')
                return value
            else
                return "𝒏𝒖𝒍𝒍"
            end
        else
            local pattern1 = key .. "[:%s]*`(.-)`"
            local pattern2 = key .. "[:%s]*(.-)\n"
            local value = content:match(pattern1)
            if not value then value = content:match(pattern2) end
            value = value and trim(value) or "𝒏𝒖𝒍𝒍"
    --Code by : BLACKHAT80
            local lower = value:lower()
            if lower == "true" then
                return "✅"
            elseif lower == "false" or lower == "n/a" or lower == "not found" or lower == "" then
                return "❌"
            else
                return value    --Code by : BLACKHAT80
            end
        end
    end    --Code by : BLACKHAT80
--code by: @blackhat80
    local function developer_info()
        return table.concat({
            "━━━━━━━━━━━━━━━\n",
            "⭐ 𝐇𝐓𝐓𝐏 𝐂𝐔𝐒𝐓𝐎𝐌 𝐓𝐎𝐎𝐋 ⚔️🔐\n",
            "🌟 𝐁𝐘: 🅱🅻🅰🅲🅺🅷🅰🆃 [🇵🇸]\n",
            "✨ 𝐆𝐑𝐎𝐔𝐏: https://bit.ly/config_decoding_staff\n",
            "✴️ 𝐂𝐨𝐝𝐞 𝐁𝐲 : @blackhat80",
        }, "")
    end
--code by: @blackhat80
    local function themed_output()
        local lines = {
            "━━━━━━━━━━━━━━━",
            "❤️ 𝑪𝒓𝒆𝒂𝒕𝒆𝒅 𝑩𝒚 : " .. extract("NickPowerd"),
            "🧡 𝑰𝒔 𝑪𝒐𝒏𝒇𝒊𝒈 𝑳𝒐𝒄𝒌𝒆𝒅 : " .. extract("LockProvider"),
            "💛 𝑰𝒔 𝑪𝒐𝒏𝒇𝒊𝒈 𝑹𝒐𝒐𝒕 𝑷𝒓𝒐𝒕𝒆𝒄𝒕𝒆𝒅 : " .. extract("BlockRoot"),
            "💚 𝑰𝒔 𝑪𝒐𝒏𝒇𝒊𝒈 𝑷𝒓𝒐𝒕𝒆𝒄𝒕𝒆𝒅 𝑩𝒚 𝑬𝒙𝒕𝒓𝒂 𝑺𝒏𝒊𝒇𝒇 : " .. extract("ExtraSniffer"),
            "━━━━━━━━━━━━━━━",
            "🔴 𝑺𝑺𝑯 𝑯𝒐𝒔𝒕 : " .. extract("Ssh"),
            "🟢 𝑷𝒂𝒚𝒍𝒐𝒂𝒅 : " .. extract("Payload"),
            "🔵 𝑷𝒓𝒐𝒙𝒚 : " .. extract("Proxy"),    --Code by : BLACKHAT80
            "🟣 𝑺𝑵𝑰 : " .. extract("SNI"),
            "━━━━━━━━━━━━━━━",
            "🔶 𝑰𝒔 𝑽𝟤𝒓𝒂𝒚 𝑬𝒏𝒂𝒃𝒍𝒆𝒅 : " .. extract("𝘝𝟤𝘳𝘢𝘺 𝘌𝘯𝘢𝘣𝘭𝘦𝘥"),
            "🟥 𝑽2𝑹𝒂𝒚 : " .. extract("𝘝2𝘙𝘢𝘺"),
            "━━━━━━━━━━━━━━━",
            "🔷 𝑰𝒔 𝑺𝒍𝒐𝒘𝑫𝑵𝑺 𝑬𝒏𝒂𝒃𝒍𝒆𝒅 : " .. extract("SlowDNSMode"),    --Code by : BLACKHAT80
            "🟧 𝑵𝑺 𝑺𝒆𝒓𝒗𝒆𝒓 : " .. extract("NameServer"),
            "🟨 𝑷𝒖𝒃𝒍𝒊𝒄 𝒌𝒆𝒚 : " .. extract("Public Key"),
            "🟩 𝑫𝒐𝒎𝒂𝒊𝒏 𝑫𝒏𝒔 : " .. extract("DNS Host"),--code by: @blackhat80
            "━━━━━━━━━━━━━━━",
            "🟦 𝑶𝒗𝒑𝒏 𝑪𝒆𝒓𝒇 : " .. extract("OpenVPN-Cerf"),
            "🟪 𝑶𝒗𝒑𝒏 𝑨𝒖𝒕𝒉 : " .. extract("OpenVPN-User:Pass"),
            "━━━━━━━━━━━━━━━",
            "━━━━━━━━━━━━━━━",    --Code by : BLACKHAT80
            "🟦 𝑷𝒔𝒊𝒑𝒉𝒐𝒏-𝑴𝒐𝒅 : " .. extract("PsihonMode"),
            "🟪 𝑷𝒔𝒊𝒑𝒉𝒐𝒏-𝑨𝒖𝒕𝒉 : " .. extract("PsiphonAuthorizon"),    --Code by : BLACKHAT80
            "━━━━━━━━━━━━━━━",
            "💙 𝑪𝒐𝒏𝒇𝒊𝒈 𝑽𝒆𝒓𝒔𝒊𝒐𝒏 : " .. extract("VerApp"),
            "💛 𝑬𝒙𝒑𝒊𝒓𝒆𝒅 𝑫𝒂𝒕𝒂 : " .. extract("Expired"),
            "✨ 𝐆𝐑𝐎𝐔𝐏: https://bit.ly/config_decoding_staff",
            "━━━━━━━━━━━━━━━"
        }
        return table.concat(lines, "\n")
    end
    local dev_info = developer_info()
    local themed = themed_output()
    local footer = "🔓 𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐁𝐲: @blackhat80\n━━━━━━━━━━━━━━━"
    local full_output =
        "```yaml\n" ..
        dev_info .. "\n" ..
        themed .. "\n" ..
        footer .. "\n```"
    local out = io.open("/sdcard/Blackhat_Final_hc.txt", "w")
    out:write(dev_info .. "\n" .. themed .. "\n" .. footer)
    out:close()
    gg.alert(full_output, 'Copy and exit')
    gg.copyText(full_output, false)
    gg.toast("⎙  𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐒𝐮𝐜𝐜𝐞𝐬𝐬!  ⎙")
    gg.setVisible(false)
end
--code by: @blackhat80
function LOBBY()
    print("BLACKHAT80")
    gg.skipRestoreState()
    gg.setVisible(true)
    os.exit()
end
--code by: @blackhat80
while true do
    if gg.isVisible(true) then
        LuaLibraryTool = 1
        gg.setVisible(false)
    end
    if LuaLibraryTool == 1 then
        -- Call the checkExpiry function with specific start and end dates
        checkExpiry(2025, 08, 13, 2025, 12, 10) 
        HOME()
    end
end
--code by: @blackhat80
--code by: @blackhat80