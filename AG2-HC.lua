 limit = false
  function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
      _ = ""
      do
        do
          for _FORV_5_ = 1, SizeOrBuffer do
            _rw[_FORV_5_] = {
              address = Address - 1 + _FORV_5_,
              flags = gg.TYPE_BYTE
            }
          end
        end
      end
      do
        do
          for _FORV_5_, _FORV_6_ in ipairs(gg.getValues(_rw)) do
            if _FORV_6_.value == 0 and limit == true then
              return _
            end
            _ = _ .. string.format("%02X", _FORV_6_.value & 255)
          end
        end
      end
      return _
    end
    Byte = {}
    SizeOrBuffer:gsub("..", function(x)
      Byte[#Byte + 1] = x
      _rw[#Byte] = {
        address = Address - 1 + #Byte,
        flags = gg.TYPE_BYTE,
        value = x .. "h"
      }
    end
    )
    gg.setValues(_rw)
  end
  
  function hexdecode(hex)
    return (hex:gsub("%x%x", function(digits)
      return string.char(tonumber(digits, 16))
    end
    ))
  end
  
  function hexencode(str)
    return (str:gsub(".", function(char)
      return string.format("%2x", char:byte())
    end
    ))
  end
  
  function Dec2Hex(nValue)
    nHexVal = string.format("%X", nValue)
    sHexVal = nHexVal .. ""
    return sHexVal
  end
  
  function ToInteger(number)
    return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
  end
  
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
      return (s:gsub("^%s*(.-)%s*$", "%1"))
    end

    local function prosesData(data)

      local function findExpDate(tbl)
          local key = {
              "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d",
              "lifeTime"
          } 
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
  
      local function splitString(str, separator)
          local match_1, match_2 = str:match("(.-)"..separator.."(.*)")
          local tbl = {}
  
          no = 1
          while (match_2:match("(.-)"..separator.."(.*)") and no < 200) do
      
              match_1, match_2 = match_2:match("(.-)"..separator.."(.*)")
      
              if hexdecode(match_1):match("[^\x20]+") then
                  table.insert(tbl, strip(hexdecode(match_1):gsub("[^\x20-\x7e]+","")))
              else 
                  table.insert(tbl,"false")
              end
              
              no = no + 1
          end
  
          return tbl
      end
  
      local function fixedConfig(index, tbl)
          local result_fixedConfig = {}
          local beginIndex = index - 4
          local lastIndex = beginIndex + 36
  
          for i = beginIndex, lastIndex do
              table.insert(result_fixedConfig, tbl[i])
          end
  
          return result_fixedConfig
      end
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

      local function getOutput(tbl)
local cfgRegex = {
[1] = {
["name"] = "𝑷𝒂𝒚𝒍𝒐𝒂𝒅 1 〓  ",
["regex"] = "[a-zA-Z]+[\x20]+.*[\x5bcrlf\x5d]+"
},
[1] = {
["name"] = "𝑷𝒂𝒚𝒍𝒐𝒂𝒅 〓  ",
["regex"] = "(.*)"
},
[2] = {
["name"] = "𝑷𝒓𝒐𝒙𝒚 〓  ",
["regex"] = "[%w\x2e\x2d]+[\x3a][%d]+"
}
}
    
      local message = "\n 𝙃𝙏𝙏𝙋 𝘾𝙐𝙎𝙏𝙊𝙈\n        \n        𝐓𝐱𝐮𝐬 𝐆𝟖  \n\n"
  
      for index, value in ipairs(tbl) do
          
          if cfgRegex[index] and value:match(cfgRegex[index]["regex"]) then
              local namaKonten = cfgRegex[index]["name"]
              local valueRegexKonten = value:match(cfgRegex[index]["regex"])
  
              valueRegexKonten = valueRegexKonten:gsub(".%s%s%s%s%s%s%s?", "")
              message = message.."✔️ "..namaKonten..""..valueRegexKonten..'\n\n'..""
          end
      end
      message = message.." "
      return message
    end


    local contentToDecrypt = hexdecode(data)
        contentToDecrypt = prosesData(hexdecode(data))
        local hasil = getOutput(contentToDecrypt)
        io.open(gg.EXT_STORAGE .. "/Artdon.json", "w"):write(hexdecode(data))
        
        io.open(gg.EXT_STORAGE .. "/don.json", "w"):write(hasil)
        
--        gg.toast("Espera...😎😎😎🏴‍☠️🏴‍☠️🏴‍☠️!", true)
    end
    
  
local fileName = "/sdcard/Artdon.json"

function deleteFile(filePath)
   local result, err = os.remove(filePath)
    if result then
     gg.alert("Archivo eliminado: " .. filePath)
     else
     gg.alert("Error al eliminar el archivo: " .. err)
     end
     end
gg.clearResults()
function saveToFile(filePath, data)
local file = io.open(filePath, "w")
   if file then
    file:write(data)
    file:close()
    gg.alert("Datos guardados en: " .. filePath)
   else
    gg.alert("Error al abrir el archivo para escritura.")
   end
end
    
local function clearResults()
gg.clearResults()
end

gg.clearResults()
  gg.setVisible(false)
   gg.setRanges(gg.REGION_JAVA_HEAP)
   gg.searchNumber(":[crlf]Host", gg.TYPE_BYTE, false,   gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
 --   gg.toast("Method GET")
    hc_method2 = true
  end
  if hc_method2 then
    gg.searchNumber(":[lf]Host", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("host:")
      hc_method3 = true
    end
  end
  if hc_method3 then
    gg.searchNumber('"dns', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("80@")
      hc_method4 = true
    end
  end
  if hc_method4 then
    gg.searchNumber(':inbounds":', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("[crlf]")
      hc_method5 = true
    end
  end
  if hc_method5 then
    gg.searchNumber(":88a05", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
 --     gg.toast("Upgrade: websocket")
      hc_method6 = true
    end
  end
  if hc_method6 then
    gg.searchNumber(":80@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
    --  gg.toast("GET wss")
      hc_method7 = true
    end
  end
  if hc_method7 then
    gg.searchNumber(":[splitPsiphon][splitPsiphon]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
 --     gg.toast("splitPsiphon")
      hc_method8 = true
    end
  end
    if hc_method8 then
    gg.searchNumber(":[splitPsiphon]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("[ey")
      hc_method9 = true
    end
  end
  if hc_method9 then
    gg.searchNumber("h 33 30 32 30 33 30 32 30 33 30 32 30", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
   --   gg.toast("splitPsiphon")
      hc_method10 = true
    end
  end
 if hc_method10 then
    limit = false
    gg.searchNumber("h 23 20 43 6F 6E 66 69 67 20 66 6F 72 20 4F 70 65 6E 56 50 4E 20 32 2E 78", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("config for OpenVPN 2x")
      hc_method11 = true
    end
  end
 if hc_method11 then
    limit = false
    gg.searchNumber("h 5b 22 65 79", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("config for OpenVPN 2x")
      hc_method12 = true
    end
  end
 if hc_method12 then
    limit = false
    gg.searchNumber("h 5b 22 65 79", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
    --  gg.toast("[ eyJ")
      hc_method13 = true
    end
  end
if hc_method13 then
    limit = false
    gg.searchNumber(":inbounds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
  --    gg.toast("config for OpenVPN 2x")
      hc_method14 = true
    end
  end
if hc_method14 then
    limit = false
    gg.searchNumber("h 5B 00 63 00 72 00 6C 00 66 00 5D 00 48 00 6F 00 73 00 74 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
   --   gg.toast(":[crlf]Host")
      hc_method15 = true
    end
  end
  
  if hc_method15 then
    print("All methods failed")
    print('Artemis  no se pudo 😔')
    os.exit()
  end
  local r = gg.getResults(12)
  if limit == false then
    r[1].address = r[1].address - 0x4000
  end
  readedMem = rwmem(r[1].address, 30000)
  save(readedMem)
gg.clearResults()
    
    
  function ssh()

function obterEntradaSSH()
  local texto = gg.prompt({"Cole ssh criptografado: "}, nil, {"text"})
  
  if texto == nil then
    os.exit()
  end
  
  return texto[1]
end

function salvarTextoEmArquivo(texto, caminhoArquivo)
  if texto == nil or texto == "" then
    return nil, "Texto inválido"
  end
  
  if caminhoArquivo == nil or caminhoArquivo == "" then
    return nil, ""
  end
  
  local arquivo = io.open(caminhoArquivo, "w")
  if arquivo == nil then
    return nil, "o"
  end
  
  arquivo:write(texto)
  arquivo:close()
  
  return true
end

function lerTextoDeArquivo(caminhoArquivo)
  if caminhoArquivo == nil or caminhoArquivo == "" then
    return nil, "Caminho de arquivo inválido"
  end
  
  local arquivo = io.open(caminhoArquivo, "r")
  if arquivo == nil then
    return nil, "Não foi possível abrir o arquivo"
  end
  
  local conteudo = arquivo:read("*all")
  arquivo:close()
  
  if conteudo == nil then
    return nil, " "
  end
  
  return conteudo
end

local hcRegex = {}
hcRegex["sshEnc"] = "([%w.-]-):(%d+)@([%d-.]+):([%d-.]+)"
hcRegex["sshNormal"] = "([%w.-]-):(%d+)@(%w+):(%w+)"

function save(val1, val2, val11, val22, val3, car)
    local outputFileName = "print.txt"

    local outputFile = io.open(outputFileName, "a")

    if outputFile then
        local data = string.format("%s, %s, %s, %s, %s, %s\n", val1, val2, val11, val22, val3, car)
        outputFile:write(data)
        outputFile:close()
    else
        print("Falha ao abrir o arquivo de saída")
    end
end

function bitwiseAntigo(val1, val2)
  return string.char((tonumber(val1) // (2 ^ tonumber(val2))) % 256)
end

function extract(data, iv)
  local new_data = ""
  for val1, val2 in string.gmatch(data, "(-?%d+)%.(-?%d+)") do
    local val11 = tonumber(val1) - iv
    local val22 = tonumber(val2) - iv
    local val3 = ((val11 // (2 ^ val22)) % 256)
    local car = string.char(val3)
    -- Linhas de depuração
     --print(val1, val2, val11, 2 ^ val22, val3, car)
     --save(val1, val2, val11, val22, val3, car)
     --save(val1, val2, val1, val2, val3, car)
    new_data = new_data .. car
  end
  if verificaString(new_data) then
    return new_data
  else
    new_data = ""
    for val1, val2 in string.gmatch(data, "(-?%d+)%.(-?%d+)") do
      car = bitwiseAntigo(val1, val2)
      new_data = new_data .. car
    end
    return new_data
  end
end

function verificaString(str)
  for i=1, #str do
    local char = str:sub(i,i)
    local ascii = string.byte(char)
    if ascii < 0 or ascii > 255 then
      return false
    end
  end
  return true
end

function calculaIv(user, senha)
  if type(user) ~= "string" or type(senha) ~= "string" then
    return nil, "Usuário e senha devem ser strings"
  end
  
  local countU = 0
  local countP = 0
  for match in user:gmatch("(-?%d+)%.(-?%d+)") do
    countU = countU + 1
  end
  for match in senha:gmatch("(-?%d+)%.(-?%d+)") do
    countP = countP + 1
  end   
  
  return countU, countP
end

function dec_user_pass(user, userIv, pasw, passIv)
    return extract(user, userIv), extract(pasw, passIv)
end

local function exibirEInserir(arquivoSaida, label, texto)
    
    local sucesso, erro = arquivoSaida:write(label .. "" .. texto .. "\n\n")

    if not sucesso then
        print(" " .. erro)
    end
end

function processarSSHx()
    local caminhoArquivoEntrada = "/sdcard/Artdon.json"
    local caminhoArquivoSaida = "/sdcard/don.json"

    local entradaSSH = lerTextoDeArquivo(caminhoArquivoEntrada)

    if not entradaSSH then
        print("Erro ao ler o arquivo de entrada")
        return
    end

    local sshHost, sshPort, sshU, sshP = string.match(entradaSSH, hcRegex["sshEnc"])

    if not sshHost or not sshPort or not sshU or not sshP then
        print("Obtenha formato válido antes, por isso temos dados ausentes no arquivo de entrada")
        return
    end 

    local userIv, senhaIv = calculaIv(sshU, sshP)

    if not userIv or not senhaIv then
        print("Erro ao calcular as IVs")
        return
    end

    local sshUser, sshSenha = dec_user_pass(sshU, userIv, sshP, senhaIv)

    if not sshUser or not sshSenha then
        print("Erro ao decodificar o usuário e/ou senha")
        return
    end

    local arquivoSaida = io.open(caminhoArquivoSaida, "a")

    if not arquivoSaida then
        print("Erro ao abrir o arquivo de saída")
        return
    end

local saida = "" .. (sshHost or "") .. ":" .. (sshPort or "") .. "@" .. (sshUser or "") .. ":" .. (sshSenha or "") .. ""

  exibirEInserir(arquivoSaida, "🩸SSH", saida)

    arquivoSaida:close()
end

processarSSHx()
end

function v2rayx9()
local function removeNullBytes(texto)
    return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
end

local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
    conteudo = removeNullBytes(conteudo)

    for _, palavraChave in ipairs(palavrasChave) do
        local inicio, fim = conteudo:find(palavraChave)

        if inicio then
            local inicioJSON = inicio
            local fimJSON = fim

            while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                inicioJSON = inicioJSON - 1
            end

            while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                fimJSON = fimJSON + 1
            end

            local textoCapturado = conteudo:sub(inicioJSON, fimJSON)

            local arquivoSaida = io.open("/sdcard/don.json", "a")

            if not arquivoSaida then
                print("No se pudo abrir el archivo de salida.")
                return
            end

            arquivoSaida:write(label .. " " .. textoCapturado .. "\n")
            arquivoSaida:close()

            return true
        end
    end

    return false
end

function v2ray()
    local arquivo = io.open("/sdcard/Artdon.json", "rb")

    if not arquivo then
        print("Nada encontrado...")
        return
    end

    local conteudo = arquivo:read("*a")
    arquivo:close()

    local keywordsV2ray = {"inbounds", "outbounds", "vless:\\/\\/", "vmess:\\/\\/", "trojan:\\/\\/"}
    local labelV2ray = "𝐕𝟐𝐫𝐚𝐲"

    local encontrouV2ray = tentarEncontrarPalavrasChave(conteudo, keywordsV2ray, labelV2ray)

    if encontrouV2ray then
    else
    end
end

 v2ray()
 end

 ssh()
v2rayx9() 

 save(readedMem) 

 local f = io.open("/sdcard/don.json", "r")
 local content = f:read("*all")

 f:close()

content = string.gsub(content, '🩸SSH', "✔️ 𝐒𝐒𝐇 〓  ")
content = string.gsub(content, '𝐕𝟐𝐫𝐚𝐲', "✔️ V2ray 〓  ")
  content = string.gsub(content, 'ͬo', "")
content = string.gsub(content, ':80990', "")

content = string.gsub(content, 'yyss', "\n")

        local f = io.open("/sdcard/don.json", "w")
        
 f:write(content)
 f:close()
 
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
      return (s:gsub("^%s*(.-)%s*$", "%1"))
    end

    local function prosesData(data)

      local function findExpDate(tbl)
          local key = {
              "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d",
              "lifeTime"
          } 
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
  
      local function splitString(str, separator)
          local match_1, match_2 = str:match("(.-)"..separator.."(.*)")
          local tbl = {}
  
          no = 1
          while (match_2:match("(.-)"..separator.."(.*)") and no < 200) do
      
              match_1, match_2 = match_2:match("(.-)"..separator.."(.*)")
      
              if hexdecode(match_1):match("[^\x20]+") then
                  table.insert(tbl, strip(hexdecode(match_1):gsub("[^\x20-\x7e]+","")))
              else 
                  table.insert(tbl,"false")
              end
              
              no = no + 1
          end
  
          return tbl
      end
  
      local function fixedConfig(index, tbl)
          local result_fixedConfig = {}
          local beginIndex = index - 4
          local lastIndex = beginIndex + 36
  
          for i = beginIndex, lastIndex do
              table.insert(result_fixedConfig, tbl[i])
          end
  
          return result_fixedConfig
      end
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

    local function getOutput(tbl)
      local cfgRegex = {
      [11] = {
["name"] = "𝑶𝒑𝒆𝒏𝑽𝑷𝑵-𝑪𝒆𝒓𝒇 〓  ",
["regex"] = "(.*)"
},
[12] = {
["name"] = "𝑶𝒑𝒆𝒏𝑽𝑷𝑵-𝑼𝒔𝒆𝒓:𝑷𝒂𝒔𝒔 〓  ",
["regex"] = "(.*)"
},
[13] = {
["name"] = "𝑺𝑺𝑳/𝑺𝑵𝑰 〓  ",
["regex"] = "[%w,a-z=,[\x2e\x2d]+[\x2e]+[%w]+.*"
},
[24] = {
["name"] = "𝑷𝒔𝒊𝒑𝒉𝒐𝒏 𝑨𝒖𝒕𝒉 〓  ",
["regex"]= "(.*)"
},
       [30] = {
["name"] = "𝑵𝑺 𝑺𝒆𝒓𝒗𝒆𝒓 〓  ",
["regex"] = "[%w,a-z=,[\x2e\x2d]+[\x2e]+[%w]+.*"
},
[31] = {
["name"] = "𝑷𝒖𝒃𝒍𝒊𝒄 𝑲𝒆𝒚 〓  ",
["regex"] = "[a-f0-9]+[32,64,50,66,61,6c,73,65]+.*"
},
[32] = {
["name"] = "𝑫𝑵𝑺 𝑯𝒐𝒔𝒕 〓  ",
["regex"] = "[%w,a-z=,[\x2e\x2d]+[\x2e]+[%w]+"
        }
    }

      local message = ""
  
      for index, value in ipairs(tbl) do
          
          if cfgRegex[index] and value:match(cfgRegex[index]["regex"]) then
              local namaKonten = cfgRegex[index]["name"]
              local valueRegexKonten = value:match(cfgRegex[index]["regex"])
  
              valueRegexKonten = valueRegexKonten:gsub(".%s%s%s%s%s%s%s?", "")
              message = message.."✔️ "..namaKonten.." "..valueRegexKonten..''.."\n\n"
          end
      end
      message = message.." "
      return message
    end

    local contentToDecrypt = hexdecode(data)
        contentToDecrypt = prosesData(hexdecode(data))
        local hasil = getOutput(contentToDecrypt)
        io.open(gg.EXT_STORAGE .. "/Artdon.json", "w"):write(hexdecode(data))
        
        io.open(gg.EXT_STORAGE .. "/don.json", "a"):write(hasil)
        
    end
  
  save(readedMem) 

 local f = io.open("/sdcard/don.json", "r")
 local content = f:read("*all")

 f:close()

 content = string.gsub(content, '\n ', "\n")
  
        local f = io.open("/sdcard/don.json", "w")
--gg.alert(content)
  gg.copyText(content, false)
   gg.toast(content .. "\nEspera...😎😎😎🏴‍☠️🏴‍☠️🏴‍☠️!")
  
gg.clearResults()
gg.clearResults(true)
clearResults()