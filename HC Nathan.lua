local targetInfo = gg.getTargetInfo()
local app = targetInfo.packageName
LuaLibraryTool = -1
function HOME()
  MENU = gg.choice({
    " <•> DECRYPT CONFIG",
    " <•> Template VIP",
    " <•> EXIT",
 },nil, (_G["os"]["date"])([[
     Nathan - Team
Today %d/%m/%Y
Hours %H:%M:%S
『©〙Coded by Nathan

  Current Process:]].."  "..app))
    if MENU == 1 and app == "xyz.easypro.httpcustom" then hc() end
if MENU == 2 then
 assert(loadfile("template.lua"))()
  end
    if MENU == 3 then LOBBY()   end
  LuaLibraryTool = -1
  end

function hc()
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
            while (match_2:match("(.-)"..separator.."(.*)") and no < 100) do
        
                match_1, match_2 = match_2:match("(.-)"..separator.."(.*)")
        
                if hexdecode(match_1):match("[^\x20]+") then
                    table.insert(tbl, strip(hexdecode(match_1):gsub("[^\x20-\x7e]+","")))
                else 
                    table.insert(tbl,"Null")
                end
                
                no = no + 1
            end
    
            return tbl
        end
        
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
    return nil, "Caminho de arquivo inválido"
  end
  
  local arquivo = io.open(caminhoArquivo, "w")
  if arquivo == nil then
    return nil, "Não foi possível abrir o arquivo"
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
    return nil, "Não foi possível ler o conteúdo do arquivo"
  end
  
  return conteudo
end

local hcRegex = {}
hcRegex["sshEnc"] = "([%w.-]-):(%d+)@([%d-.]+):([%d-.]+)"
hcRegex["sshNormal"] = "([%w.-]-):(%d+)@(%w+):(%w+)"

function save(val1, val2, val11, val22, val3, car)
    local outputFileName = "print.txt"

    -- Abre o arquivo no modo de escrita no diretório do script
    local outputFile = io.open(outputFileName, "a")

    if outputFile then
        -- Construir a string com os valores a serem salvos
        local data = string.format("%s, %s, %s, %s, %s, %s\n", val1, val2, val11, val22, val3, car)
        outputFile:write(data)
        print("")
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
   
    local sucesso, erro = arquivoSaida:write(label .. ": " .. texto .. "\n\n")

    if not sucesso then
        print("Erro ao escrever no arquivo de saída: " .. erro)
    end
end

function processarSSHx()
    local caminhoArquivoEntrada = "/sdcard/decrypt.txt"
    local caminhoArquivoSaida = "hc_.txt"

    local entradaSSH = lerTextoDeArquivo(caminhoArquivoEntrada)

    if not entradaSSH then
        print("Erro ao ler o arquivo de entrada")
        return
    end

    local sshHost, sshPort, sshU, sshP = string.match(entradaSSH, hcRegex["sshEnc"])

    if not sshHost or not sshPort or not sshU or not sshP then
        print("")
        return
    end

    local userIv, senhaIv = calculaIv(sshU, sshP)

    if not userIv or not senhaIv then
        print("Erro ao calcular as IVs")
        return
    end

    local sshUser, sshSenha = dec_user_pass(sshU, userIv, sshP, senhaIv)

    if not sshUser or not sshSenha then
        print("SSH Not Encyrption")
        return
    end

    -- Criar ou abrir o arquivo de saída
    local arquivoSaida = io.open(caminhoArquivoSaida, "a")

    if not arquivoSaida then
        print("SSH Not Found ")
        return
    end

    -- Concatenar os resultados
local saida = "\nHost: \"" .. (sshHost or "") .. "\""
saida = saida .. "\nPort: \"" .. (sshPort or "") .. "\""
saida = saida .. "\nUsername: \"" .. (sshUser or "") .. "\""
saida = saida .. "\nPassword: \"" .. (sshSenha or "") .. "\""
host = (sshHost)
port = (sshPort)
hostt = (sshUser)
pas = (sshSenha)
result = "SSH : " .. (sshHost ..":".. sshPort .."@".. sshUser ..":".. sshSenha)
    -- Exibir e salvar os resultados
    exibirEInserir(arquivoSaida, " ", saida)

    -- Fechar o arquivo de saída
    arquivoSaida:close()
end

processarSSHx()
    
            local function fixedConfig(index, tbl)
            local result_fixedConfig = {}
            local beginIndex = index - 4
            local lastIndex = beginIndex + 31
    
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
      if separator then
      data = data:gsub(separator, "0a56616c647947616e74656e67")
      separator = "0a56616c647947616e74656e67"
      end
      data = data:gsub("z", "20")
      data = data:gsub("FALSE", "66616c7365")

      local result = splitString(data, separator)
      local assemblyPointIndex = findExpDate(result)
      local getConfig = fixedConfig(assemblyPointIndex, result)
    
        return getConfig
      end
  
        function getOutput(tbl)
    local cfgRegex = {
        [1] = { ["name"] = "Payload", ["regex"] = "(.*)" },
        [2] = { ["name"] = "Proxy", ["regex"] = "(.*)" },
        [5] = { ["name"] = "expiration", ["regex"] = "(.*)" },
        [11] = { ["name"] = "OpenVPNCerf", ["regex"] = "(.*)" },
        [12] = { ["name"] = "OpenVPNAccount", ["regex"] = "(.*)" },
        [13] = { ["name"] = "SNI", ["regex"] = "(.*)" },
        [24] = { ["name"] = "Psiphonmode", ["regex"] = "(.*)" },
        [25] = { ["name"] = "Psiphon", ["regex"] = "(.*)" },
        [26] = { ["name"] = "V2Raymode", ["regex"] = "(.*)" },
        [27] = { ["name"] = "V2Ray", ["regex"] = "(.*)" },
        [29] = { ["name"] = "SlowDNSEnabled", ["regex"] = "(.*)" },
        [30] = { ["name"] = "NameServer", ["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+" },
        [31] = { ["name"] = "Publickey", ["regex"] = "[a-f0-9]+[32,64,50,66,61,6c,73,65]+" },
        [32] = { ["name"] = "DNS", ["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+" }
    }

    local message = ""

    for index = 1, 32 do
        local cfg = cfgRegex[index]
        if cfg then
            local value = tbl[index] or "Null"  -- Jika tbl[index] nil, gunakan "Null"
            local valueRegexKonten = value and value:match(cfg["regex"]) or "Null"

            message = message .. cfg["name"] .. " : " .. valueRegexKonten .. "\n"
        end
    end

    return message
end
  
  
  
      local contentToDecrypt = hexdecode(data)
        contentToDecrypt = prosesData(hexdecode(data))
        local hasil = getOutput(contentToDecrypt)
        io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(hexdecode(data))
      
local contentToDecrypt = hexdecode(data)
        contentToDecrypt = prosesData(hexdecode(data))
        local hasil = getOutput(contentToDecrypt)
        io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(hexdecode(data))
        gg.alert('Notification : \n━━━━━━━━━━━━━━━━━━━ \nDercypted : Success, please run the template\n━━━━━━━━━━━━━━━━━━━\n『©〙Coded by Nathanaeru')
        gg.toast('Thanks For use My Script Love Nathan')
        print('Notification : \n━━━━━━━━━━━━━━━━━━━ \nDercypted : Success, please run the template\n━━━━━━━━━━━━━━━━━━━\n『©〙Coded by Nathanaeru')
        io.open(gg.EXT_STORAGE .. "/NathanGanteng.txt", "w"):write(result, hasil)
    end
    
    gg.setVisible(false)
    gg.setRanges(gg.REGION_JAVA_HEAP)
    gg.searchNumber(":Upgrade", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ Metode Gagal: Upgrade")
      hc_method2 = true
    end--Iғ
    if hc_method2 then
      gg.searchNumber(':[crlf]Host:', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: GET h")
        hc_method3 = true
      end--Iғ
    end--Iғ
    if hc_method3 then
      gg.searchNumber("h 3a 34 34 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: 443")
        hc_method4 = true
      end--Iғ
    end--Iғ
    if hc_method4 then
      gg.searchNumber("h 3A 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: 80")
        hc_method5 = true
      end--Iғ
    end--Iғ
    if hc_method5 then
      limit = false
      gg.searchNumber("h 20 22 64 6e 73 22 3a 20 7b", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: dns")
        hc_method6 = true
      end--Iғ
    end--Iғ
    if hc_method6 then
      limit = false
      gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: inbound")
            hc_method7 = true
      end--Iғ
    end--Iғ
    if hc_method7 then
      limit = false
      gg.searchNumber("h 3A 35 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: 53")
        hc_method8 = true
      end--Iғ
    end--Iғ
    if hc_method8 then
      limit = false
      gg.searchNumber(";# Config for OpenVPN", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: splitPsiphon splitPsiphon")
        hc_method9 = true
      end--Iғ
    end--Iғ
    if hc_method9 then
      limit = false
      gg.searchNumber("h 20 20 50 4F 53 54", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: crlf")
        hc_method10 = true
      end--Iғ
    end--Iғ
    if hc_method10 then
      limit = false
      gg.searchNumber("h 5B 00 73 00 70 00 6C 00 69 00 74 00 43 00 6F 00 6E 00 66 00 69 00 67 00 5D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: splitConfig")
         hc_method11 = true
      end--Iғ
    end--Iғ
    if hc_method11 then
      limit = false
      gg.searchNumber("h 22 69 73 4c 6f 67 69 6e 48 77 69 64 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: isLoginHwid")
        hc_method12 = true
      end--Iғ
    end--Iғ
  
  if hc_method12 then
      limit = false
      gg.searchNumber("h 3a 32 32 32 32 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: 2222")
        hc_method13 = true
      end--Iғ
    end--Iғ
  
  if hc_method13 then
      limit = false
      gg.searchNumber("h48 6F 73 74 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: PUTA")
        hc_method14 = true
      end--Iғ
    end--Iғ
  
  if hc_method14 then
      limit = false
      gg.searchNumber("h 3a 32 32 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: 22")
        hc_method15 = true
      end--Iғ
    end--Iғ
  
  if hc_method15 then
      limit = false
      gg.searchNumber("h 3a 34 34 34 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: 444")
        hc_method16 = true
      end--Iғ
    end--Iғ
  
  if hc_method16 then
      limit = false
      gg.searchNumber("h 41 43 4c 20 2f 20 48 54 54 50 2f", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: ACL HTTP")
        hc_method17 = true
      end--Iғ
    end--Iғ
  
  if hc_method17 then
      limit = false
      gg.searchNumber("h 43 4f 4e 4e 45 43 54 20 5b", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: CONNECT")
        hc_method18 = true
      end--Iғ
    end--Iғ
  if hc_method18 then
      limit = false
      gg.searchNumber("h 48 6f 73 74 3a 5b 72 6f 74 61 74 65 3d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: rotate")
        hc_method19 = true
      end--Iғ
    end--Iғ
  
    if hc_method19 then
      limit = false
      gg.searchNumber(";# Config For OpenVPN 2.x", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
      local r = gg.getResults(1)
      if #r < 1 then
        gg.toast("✖ Metode Gagal: config for OpenVPN 2x")
        hc_method20 = true
      end--Iғ
    end--Iғ
      
        if hc_method20 then
      gg.toast("Value Not Found !")
      print("Decryption Failed")
      os.exit()
    end
    local r = gg.getResults(1000)
    if limit == false then
      r[1].address = r[1].address - 8192
    end--Iғ
    readedMem = rwmem(r[1].address, 20000)
    save(readedMem)
    gg.clearResults()
    end
    
   function LOBBY()
print ([[
Thanks For Buy My Scripts @Nathanaeru

]])
  gg.toast('Contact me @Nathanaeru if you find any bug!', true)
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end
HOME()
if MENU == nil then
while true do
if not gg.isVisible() then
break
else
gg.sleep (100) end end

while true do
if gg.isVisible() then
HOME()
gg.setVisible(false)
else
gg.sleep(100) end end
end