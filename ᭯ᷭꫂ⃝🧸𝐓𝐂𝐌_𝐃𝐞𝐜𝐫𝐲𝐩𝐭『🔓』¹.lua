gg.sleep(100)
gg.setVisible(true)
LuaLibraryTool = -1
gg.alert("᭯ᷭꫂ⃝🧸𝐓𝐂𝐌┊𝐃𝐞𝐜𝐫𝐲𝐩𝐭『🔓』\n", "𝚂𝚃𝙰𝚁𝚃", "", "𝙴𝚇𝙸𝚃")
function HOME()
  MENU = gg.choice({
    " [📁] MENU DECRYPT 📁",
    " [🎭]  EXIT⃨ ❌"
  }, nil, os.date("╭━━━━━━━━✩━━━━━━━━╮\n│➪᭯ᷭꫂ⃝🧸𝐓𝐂𝐌 𝐃𝐞𝐜𝐫𝐲𝐩𝐭ܓܛܟ\n│➪ t.me/Decryptt_Files\n╰━━━━━━━━✩━━━━━━━━╯"))
  if MENU == nil then
  else
    if MENU == 1 then
      HttpCustom()
    end
    if MENU == 2 then
      LOBBY()
    end
  end
  LuaLibraryTool = -1
end

function HttpCustom()
  httpcustommenu = gg.choice({
    "┍─────────────┑\n⎙ HTTP CUSTOM 1🟡\n┖─────────────┚",
    "┍─────────────┑\n⎙ HTTP CUATOM 2 🟠\n┖─────────────┚",
    "┍─────────────┑\n⎙ V2RAY CUSTOM 🔴\n┖─────────────┚",
    "┍─────────────┑\n⎙ SOCKSIP 🟢\n┖─────────────┚",
    "┍─────────────┑\n⎙ SLOW DNS 🟣\n┖─────────────┚",
    "┍─────────────┑\n⎙ NAPSTERNET ⚫\n┖─────────────┚",
    "Back 🔙"
  }, nil, os.date("*╔══════❖•ೋ° °ೋ•❖══════╗*\n      𝐌𝐄𝐍𝐔 𝐇𝐂 𝑩𝒀 t.me/Decryptt_Files\n*╚══════❖•ೋ° °ೋ•❖══════╝*"))
  if httpcustommenu == 1 then
    DecSimple()
  end
  if httpcustommenu == 2 then
    HCautoDecSsh()
  end
  if httpcustommenu == 3 then
    V2RAY()
  end
  if httpcustommenu == 4 then
    SOCKSIP1()
  end
  if httpcustommenu == 5 then
    Slow_Dns_HC()
  end
  if httpcustommenu == 6 then
    npv()
  end
  if httpcustommenu == 7 then
  end
  HOME()
  GLWW = -1
end

  --DecSimple_____________________________________________
  function DecSimple()
limit = false
function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
        _ = ""
        for _ = 1, SizeOrBuffer do _rw[_] = { address = (Address - 1) + _, flags = gg.TYPE_BYTE } end
        for v, __ in ipairs(gg.getValues(_rw)) do
            if __.value == 00 and limit == true then
                return _
            end
            _ = _ .. string.format("%02X", __.value & 0xFF)
        end
        return _
    end
    Byte = {}
    SizeOrBuffer:gsub("..", function(x)
        Byte[#Byte + 1] = x
        _rw[#Byte] = { address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h" }
    end)
    gg.setValues(_rw)
end

function hexdecode(hex)
    return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
end

function hexencode(str)
    return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
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
--ProgressBar = "鈺戔枒鈻戔枒鈻戔枒鈻戔枒鈻戔枒鈻戔枒鈻戔枒鈻戔枒鈺?";for x = 1,15,1 do gg.sleep(40) ---ProgressBar = ProgressBar:gsub("鈻?","鈻?",1);gg.toast(ProgressBar) end
    io.open(gg.EXT_STORAGE .. "/dec.txt", "w"):write(hexdecode(data))
end

gg.setRanges(gg.REGION_JAVA_HEAP)
---gg.makeRequest("https://raw.githubusercontent.com/EstebanZxx/Forbidden/main/KEY-ACCESS")
gg.setVisible(false)
--gg.setVisible(true)
gg.searchNumber(":[lf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method2 = true
end

if hc_method2 then 
gg.searchNumber(":[crlf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method3 = true
end
end
if hc_method3 then 
gg.searchNumber(":inbounds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method4 = true
end
end
if hc_method4 then 
gg.searchNumber(":80@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method5 = true
end
end
if hc_method5 then 
gg.searchNumber(":# Config for OpenVPN 2.x", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method6 = true
end
end
if hc_method6 then 
gg.searchNumber(":444@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method7 = true
end
end
if hc_method7 then 
gg.searchNumber(":443@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method8 = true
end
end
if hc_method8 then 
gg.searchNumber(':["ey', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method9 = true
end
end
if hc_method9 then 
gg.searchNumber(':FRONTED-', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method10 = true
end
end
if hc_method10 then
    gg.alert("No matching keywords!")
    os.exit()
end

local r = gg.getResults(100)
if limit == false then
    r[1].address = r[1].address - 0x200
end

readedMem = rwmem(r[1].address, 19000)
save(readedMem)
gg.clearResults()

local file = io.open("/sdcard/dec.txt", 'rb')
local content = file:read(20000)
file:close()
local sshfile = io.open("/sdcard/dec.txt", 'rb')
local sshcontent = sshfile:read(1000)
sshfile:close()

function obterEntradaSSH()
  local texto = gg.prompt({"Cole ssh criptografado: "}, nil, {"text"})
  
  if texto == nil then
    os.exit()
  end
  
  return texto[1]
end

function salvarTextoEmArquivo(texto, caminhoArquivo)
  if texto == nil or texto == "" then
    return nil, "Texto inv谩lido"
  end
  
  if caminhoArquivo == nil or caminhoArquivo == "" then
    return nil, "Caminho de arquivo inv谩lido"
  end
  
  local arquivo = io.open(caminhoArquivo, "w")
  if arquivo == nil then
    return nil, "N茫o foi poss铆vel abrir o arquivo"
  end
  
  arquivo:write(texto)
  arquivo:close()
  
  return true
end

function lerTextoDeArquivo(caminhoArquivo)
  if caminhoArquivo == nil or caminhoArquivo == "" then
    return nil, "Caminho de arquivo inv谩lido"
  end
  
  local arquivo = io.open(caminhoArquivo, "r")
  if arquivo == nil then
    return nil, "N茫o foi poss铆vel abrir o arquivo"
  end
  
  local conteudo = arquivo:read("*all")
  arquivo:close()
  
  if conteudo == nil then
    return nil, "N茫o foi poss铆vel ler o conte煤do do arquivo"
  end
  
  return conteudo
end

local hcRegex = {}
hcRegex["sshEnc"] = "([%w.-]-):(%d+)@([%d-.]+):([%d-.]+)"
hcRegex["sshNormal"] = "([%w.-]-):(%d+)@(%w+):(%w+)"

function save(val1, val2, val11, val22, val3, car)
    local outputFileName = "/sdcard/dec.txt"

    -- Abre o arquivo no modo de escrita no diret贸rio do script
    local outputFile = io.open(outputFileName, "a")

    if outputFile then
        -- Construir a string com os valores a serem salvos
        local data = string.format("%s, %s, %s, %s, %s, %s\n", val1, val2, val11, val22, val3, car)
        outputFile:write(data)
        print("")
        outputFile:close()
    else
        print("Falha ao abrir o arquivo de sa铆da")
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
    -- Linhas de depura莽茫o
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
    return nil, "Usu谩rio e senha devem ser strings"
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
        print("Erro ao escrever no arquivo de sa铆da: " .. erro)
    end
end

function processarSSHx()
    local caminhoArquivoEntrada = "/sdcard/dec.txt"
    local caminhoArquivoSaida = "/sdcard/dec.txt"

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
        result = "No Encrypt"
        return
    end

    -- Criar ou abrir o arquivo de sa铆da
    local arquivoSaida = io.open(caminhoArquivoSaida, "a")

    if not arquivoSaida then
        result = "No Encrypt"
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
sshResults = (sshHost ..":".. sshPort .."@".. sshUser ..":".. sshSenha)
    -- Exibir e salvar os resultados
    exibirEInserir(arquivoSaida, " ", saida)
    
-- Fechar o arquivo de sa铆da
    arquivoSaida:close()
end    

processarSSHx()

local PAYLOADD = string.match(sshcontent, "[a-zA-Z]+[\x20]+.*[\x5bcrlf\x5d+].+")  or "***."
local user = {}
for i = 1, #PAYLOADD - 1 do
table.insert(user, PAYLOADD:sub(i,i))
end
PAYLOADD = table.concat(user, "")

local SSH = string.match(sshcontent, "[0-9a-zA-Zx\x2e\x2d]+:[%d]+@[%w\x2e\x2d]+:[%w]+.")

function payloadx9()
function payload()
    -- Fun莽茫o para remover bytes nulos do in铆cio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun莽茫o para tentar encontrar palavras-chave e salvar informa莽玫es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr谩s at茅 encontrar o in铆cio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at茅 encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                teste = (texto) or false
                local arquivoSaida = io.open("/sdcard/dec.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa铆da.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun莽茫o para decodificar a payload e salvar no arquivo /sdcard/dec.txt
    local function payloadx()
        local arquivo = io.open("/sdcard/dec.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

        local keywordsPayload = {"PATCH%/", "crlf%]", "Upgrade:", "GET / HTTP%/", "User-Agent", "protocol%]", "lf%]Host:", "lf%host:", "%[host", "host:", "Host:", "%[app_", "%[r", "\\r", "\\n", "\\r\\n", "%[Protocol%]", "lf%]"}
        local labelPayload = "Payload"

        -- Testa todas as palavras-chave para o Payload
        local encontrouPayload = tentarEncontrarPalavrasChave(conteudo, keywordsPayload, labelPayload)

        if encontrouPayload then
            print("")
        else
    ---        teste = "false"
        end
    end

    local caminhoArquivoEntrada = "/sdcard/dec.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/dec.txt" -- caminho do arquivo de sa铆da

    payloadx()
end

payload()
end

payloadx9()

function ovpnx9()
function ovpn()
    -- Fun莽茫o para remover bytes nulos do in铆cio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun莽茫o para tentar encontrar palavras-chave e salvar informa莽玫es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr谩s at茅 encontrar o in铆cio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at茅 encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testedd = (texto) or false
                local arquivoSaida = io.open("/sdcard/dec.txt", "a")


                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa铆da.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun莽茫o para decodificar a payload e salvar no arquivo /sdcard/dec.txt
    local function ovpnx()
        local arquivo = io.open("/sdcard/dec.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsOpenVPN = {"auth%-user%-pass", "dev tun", "%<ca%>", "%<%/ca%>"}
    local labelOpenVPN = "\nOpenVPN"

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouOpenVPN = tentarEncontrarPalavrasChave(conteudo, keywordsOpenVPN, labelOpenVPN)

    if encontrouOpenVPN then
        print("")
    else
---        testedd = "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/dec.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/dec.txt" -- caminho do arquivo de sa铆da

    ovpnx()
end

ovpn()
end

ovpnx9()

function v2rayx9()
function v2ray()
    -- Fun莽茫o para remover bytes nulos do in铆cio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun莽茫o para tentar encontrar palavras-chave e salvar informa莽玫es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr谩s at茅 encontrar o in铆cio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at茅 encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testeddd = (texto)
                local arquivoSaida = io.open("/sdcard/dec.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa铆da.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun莽茫o para decodificar a payload e salvar no arquivo /sdcard/dec.txt
    local function v2rayx()
        local arquivo = io.open("/sdcard/dec.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsV2ray = {"inbounds", "outbounds", "vless:\\/\\/", "vmess:\\/\\/", "trojan:\\/\\/"}
    local labelV2ray = "[#] 饾悤饾煇饾悜饾悮饾惒"

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouV2ray = tentarEncontrarPalavrasChave(conteudo, keywordsV2ray, labelV2ray)

    if encontrouV2ray then
        print("")
    else
 ---       testeddd= "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/dec.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/dec.txt" -- caminho do arquivo de sa铆da

    v2rayx()
end

v2ray()
end

v2rayx9()

function pythonx9()
function python()
    -- Fun莽茫o para remover bytes nulos do in铆cio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun莽茫o para tentar encontrar palavras-chave e salvar informa莽玫es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr谩s at茅 encontrar o in铆cio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at茅 encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testedddd = (texto)
                local arquivoSaida = io.open("/sdcard/dec.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa铆da.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun莽茫o para decodificar a payload e salvar no arquivo /sdcard/dec.txt
    local function pythonx()
        local arquivo = io.open("/sdcard/dec.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsPython = {'"ey', 'FRONTED-'}
    local labelPython = ""

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouPython = tentarEncontrarPalavrasChave(conteudo, keywordsPython, labelPython)

    if encontrouPython then
        print("")
    else
  --     testedddd = "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/dec.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/dec.txt" -- caminho do arquivo de sa铆da

    pythonx()
end

python()
end

pythonx9()

local proxy = string.match(content, "%w+.[%w\x2e]+[\x3a][%d]+") 

local life = string.match(content, "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d") or "lifeTime"

local sni = string.match(content, "[%w%.-]+:%d%d+[^馃槇]-\0([%w%.-]-%.[%w.-]-)\0") 

local ns  = string.match(content, "false") or "false"

local pubkey = string.match(content, "[a-f0-9]+[32,64,50,66,61,6c,73,65][%w.-]+.") 

local psiphon = string.match(content, "[\x5b]\x22.*]") or false

local versi = string.match(content, "645") or "645"

local xX = os.date("%d/%m/%Y %I:%M:%S")

--local xX = os.date("%I:%M %p")

function keyx9()
function key()
    -- Fun莽茫o para remover bytes nulos do in铆cio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun莽茫o para tentar encontrar palavras-chave e salvar informa莽玫es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr谩s at茅 encontrar o in铆cio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at茅 encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                pub = (texto) 
                local arquivoSaida = io.open("/sdcard/dec.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa铆da.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun莽茫o para decodificar a payload e salvar no arquivo /sdcard/dec.txt
    local function keyx()
        local arquivo = io.open("/sdcard/dec.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

        local keywordsPayload = {"b22", "bc2c"}
        local labelPayload = "Payload"

        -- Testa todas as palavras-chave para o Payload
        local encontrouPayload = tentarEncontrarPalavrasChave(conteudo, keywordsPayload, labelPayload)

        if encontrouPayload then
            print("")
        else
     ---       pub = "false"
        end
    end

    local caminhoArquivoEntrada = "/sdcard/dec.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/dec.txt" -- caminho do arquivo de sa铆da

    keyx()
end

key()
end

keyx9()

function slowdnsx9()
function slowdns()
    -- Fun莽茫o para remover bytes nulos do in铆cio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun莽茫o para tentar encontrar palavras-chave e salvar informa莽玫es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr谩s at茅 encontrar o in铆cio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at茅 encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                name = (texto)
                local arquivoSaida = io.open("/sdcard/dec.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa铆da.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun莽茫o para decodificar a payload e salvar no arquivo /sdcard/dec.txt
    local function slowdnsx()
        local arquivo = io.open("/sdcard/dec.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

        local keywordsSlowdns = {"ns", "n%s-"}
        local labelSlowdns = "Payload"

        -- Testa todas as palavras-chave para o Payload
        local encontrouSlowdns = tentarEncontrarPalavrasChave(conteudo, keywordsSlowdns, labelSlowdns)

        if encontrouSlowdns then
            print("")
        else
        --    name = "false"
        end
    end

    local caminhoArquivoEntrada = "/sdcard/dec.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/dec.txt" -- caminho do arquivo de sa铆da

    slowdnsx()
end

slowdns()
end

slowdnsx9()

local SlowDnsServer = string.match(content, "[%w\x2e\x2d]+[\x2e]+[%w]+")
local dns = string.match(content, "[%w\x2e\x2d]+[\x2e]+[%w]+")
local PubKey = string.match(content, "[a-f0-9]+[32,64,50,66,61,6c,73,65]+")
local SSLSNI = string.match(content, "[%w]-%.[%w]-%.[%w]-")

local result = {
    [1] = {
    ['NAME'] = "\n╰┈➤ 𝐏𝐚𝐲𝐥𝐨𝐚𝐝 : ",
    ['DATA'] = teste
    },
	[2] = {
    ['NAME'] = "\n╰┈➤ 𝐏𝐫𝐨𝐱𝐲 : ",
    ['DATA'] = proxy
    },
    [3] = {
    ['NAME'] = "\n╰┈➤ 𝐒𝐬𝐡 : ",
    ['DATA'] = sshResults
    },
    [4] = {
    ['NAME'] = "\n╰┈➤ 𝐒𝐍𝐈/𝐒𝐒𝐋 : ",
    ['DATA'] = SSLSNI
    },
    [5] = {
    ['NAME'] = "\n╰┈➤ 𝑉2𝐫𝐚𝐲 : ",
    ['DATA'] = testeddd
    },
    [6] = {
    ['NAME'] = "\n╰┈➤ 𝐏𝐬𝐢𝐩𝐡𝐨𝐧 : ",
    ['DATA'] = testedddd
    },
    [7] = {
    ['NAME'] = "\n╰┈➤ 𝐎𝐩𝐞𝐧𝐯𝐩𝐧 : ",
    ['DATA'] = testedd
    },

  }
  
      local message = "```makefile\n╭ · • 𝙃𝙏𝙏𝙋 𝘾𝙐𝙎𝙏𝙊𝙈 • · ╮\n├➢ ᭯ᷭꫂ⃝🧸𝐓𝐂𝐌 𝐃𝐞𝐜𝐫𝐲𝐩𝐭ܓܛܟ\n├➢ t.me/Decryptt_Files\n╰───────────────────╯"
      for index, keys in ipairs(result) do
        if result[index] and result[index]['DATA'] then 
          local names = result[index]['NAME']
          local value = result[index]['DATA']
  
          message = message.."\n┌────────•••─────────"..names..""..value..""
           end
            end
         
            message = message.."\n─────────•••─────────```"
        local alert = gg.alert(message, "save", "cancel")
        if alert == 1 then
        gg.copyText(message, false)
   --     gg.toast("Copied To Clipboard")
        elseif alert == 2 then
        end
      io.open('/sdcard/hc.txt', 'w'):write(message)
    save(hexdecode(readedMem))
  gg.clearResults()
  end

----
function HCautoDecSsh()
limit = false
function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
        _ = ""
        for _ = 1, SizeOrBuffer do _rw[_] = { address = (Address - 1) + _, flags = gg.TYPE_BYTE } end
        for v, __ in ipairs(gg.getValues(_rw)) do
            if __.value == 00 and limit == true then
                return _
            end
            _ = _ .. string.format("%02X", __.value & 0xFF)
        end
        return _
    end
    Byte = {}
    SizeOrBuffer:gsub("..", function(x)
        Byte[#Byte + 1] = x
        _rw[#Byte] = { address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h" }
    end)
    gg.setValues(_rw)
end

function hexdecode(hex)
    return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
end

function hexencode(str)
    return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
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
--ProgressBar = "║░░░░░░░░░░░░░░░�?";for x = 1,15,1 do gg.sleep(40) ---ProgressBar = ProgressBar:gsub("�?","�?",1);gg.toast(ProgressBar) end
    io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(hexdecode(data))
end

gg.setRanges(gg.REGION_JAVA_HEAP)
---gg.makeRequest("https://raw.githubusercontent.com/EstebanZxx/Forbidden/main/KEY-ACCESS")
gg.setVisible(false)
--gg.setVisible(true)
gg.searchNumber(":[lf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method2 = true
end

if hc_method2 then 
gg.searchNumber(":[crlf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method3 = true
end
end
if hc_method3 then 
gg.searchNumber(":inbounds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method4 = true
end
end
if hc_method4 then 
gg.searchNumber(":80@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method5 = true
end
end
if hc_method5 then 
gg.searchNumber(":# Config for OpenVPN 2.x", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method6 = true
end
end
if hc_method6 then 
gg.searchNumber(":444@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method7 = true
end
end
if hc_method7 then 
gg.searchNumber(":443@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method8 = true
end
end
if hc_method8 then 
gg.searchNumber(':["ey', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method9 = true
end
end
if hc_method9 then 
gg.searchNumber(':FRONTED-', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local r = gg.getResults(1)
if #r < 1 then
    
    hc_method10 = true
end
end
if hc_method10 then
    gg.alert("No matching keywords!")
    os.exit()
end

local r = gg.getResults(100)
if limit == false then
    r[1].address = r[1].address - 0x200
end

readedMem = rwmem(r[1].address, 19000)
save(readedMem)
gg.clearResults()

local file = io.open("/sdcard/decrypt.txt", 'rb')
local content = file:read(20000)
file:close()
local sshfile = io.open("/sdcard/decrypt.txt", 'rb')
local sshcontent = sshfile:read(1000)
sshfile:close()

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
    local outputFileName = "/sdcard/decrypt.txt"

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
    local caminhoArquivoSaida = "/sdcard/decrypt.txt"

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
        result = "No Encrypt"
        return
    end

    -- Criar ou abrir o arquivo de saída
    local arquivoSaida = io.open(caminhoArquivoSaida, "a")

    if not arquivoSaida then
        result = "No Encrypt"
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
result = (sshHost ..":".. sshPort .."@".. sshUser ..":".. sshSenha)
    -- Exibir e salvar os resultados
    exibirEInserir(arquivoSaida, " ", saida)
    
-- Fechar o arquivo de saída
    arquivoSaida:close()
end    

processarSSHx()

local PAYLOADD = string.match(sshcontent, "[a-zA-Z]+[\x20]+.*[\x5bcrlf\x5d+].+")  or "***."
local user = {}
for i = 1, #PAYLOADD - 1 do
table.insert(user, PAYLOADD:sub(i,i))
end
PAYLOADD = table.concat(user, "")

local SSH = string.match(sshcontent, "[0-9a-zA-Zx\x2e\x2d]+:[%d]+@[%w\x2e\x2d]+:[%w]+.")

function payloadx9()
function payload()
    -- Função para remover bytes nulos do início e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Função para tentar encontrar palavras-chave e salvar informações
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para trás até encontrar o início real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente até encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                teste = (texto) or false
                local arquivoSaida = io.open("/sdcard/decrypt.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de saída.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Função para decodificar a payload e salvar no arquivo /sdcard/decrypt.txt
    local function payloadx()
        local arquivo = io.open("/sdcard/decrypt.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

        local keywordsPayload = {"PATCH%/", "crlf%]", "Upgrade:", "GET / HTTP%/", "User-Agent", "protocol%]", "lf%]Host:", "lf%host:", "%[host", "host:", "Host:", "%[app_", "%[r", "\\r", "\\n", "\\r\\n", "%[Protocol%]", "lf%]"}
        local labelPayload = "Payload"

        -- Testa todas as palavras-chave para o Payload
        local encontrouPayload = tentarEncontrarPalavrasChave(conteudo, keywordsPayload, labelPayload)

        if encontrouPayload then
            print("")
        else
    ---        teste = "false"
        end
    end

    local caminhoArquivoEntrada = "/sdcard/decrypt.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/decrypt.txt" -- caminho do arquivo de saída

    payloadx()
end

payload()
end

payloadx9()

function ovpnx9()
function ovpn()
    -- Função para remover bytes nulos do início e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Função para tentar encontrar palavras-chave e salvar informações
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para trás até encontrar o início real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente até encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testedd = (texto) or false
                local arquivoSaida = io.open("/sdcard/decrypt.txt", "a")


                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de saída.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Função para decodificar a payload e salvar no arquivo /sdcard/decrypt.txt
    local function ovpnx()
        local arquivo = io.open("/sdcard/decrypt.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsOpenVPN = {"auth%-user%-pass", "dev tun", "%<ca%>", "%<%/ca%>"}
    local labelOpenVPN = "\nOpenVPN"

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouOpenVPN = tentarEncontrarPalavrasChave(conteudo, keywordsOpenVPN, labelOpenVPN)

    if encontrouOpenVPN then
        print("")
    else
---        testedd = "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/decrypt.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/decrypt.txt" -- caminho do arquivo de saída

    ovpnx()
end

ovpn()
end

ovpnx9()

function v2rayx9()
function v2ray()
    -- Função para remover bytes nulos do início e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Função para tentar encontrar palavras-chave e salvar informações
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para trás até encontrar o início real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente até encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testeddd = (texto)
                local arquivoSaida = io.open("/sdcard/decrypt.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de saída.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Função para decodificar a payload e salvar no arquivo /sdcard/decrypt.txt
    local function v2rayx()
        local arquivo = io.open("/sdcard/decrypt.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsV2ray = {"inbounds", "outbounds", "vless:\\/\\/", "vmess:\\/\\/", "trojan:\\/\\/"}
    local labelV2ray = "[#] 𝐕𝟐𝐑𝐚𝐲"

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouV2ray = tentarEncontrarPalavrasChave(conteudo, keywordsV2ray, labelV2ray)

    if encontrouV2ray then
        print("")
    else
 ---       testeddd= "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/decrypt.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/decrypt.txt" -- caminho do arquivo de saída

    v2rayx()
end

v2ray()
end

v2rayx9()

function pythonx9()
function python()
    -- Função para remover bytes nulos do início e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Função para tentar encontrar palavras-chave e salvar informações
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para trás até encontrar o início real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente até encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testedddd = (texto)
                local arquivoSaida = io.open("/sdcard/decrypt.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de saída.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Função para decodificar a payload e salvar no arquivo /sdcard/decrypt.txt
    local function pythonx()
        local arquivo = io.open("/sdcard/decrypt.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsPython = {'"ey', 'FRONTED-'}
    local labelPython = ""

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouPython = tentarEncontrarPalavrasChave(conteudo, keywordsPython, labelPython)

    if encontrouPython then
        print("")
    else
  --     testedddd = "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/decrypt.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/decrypt.txt" -- caminho do arquivo de saída

    pythonx()
end

python()
end

pythonx9()

local proxy = string.match(content, "%w+.[%w\x2e]+[\x3a][%d]+") 

local life = string.match(content, "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d") or "lifeTime"

local sni = string.match(content, "[%w%.-]+:%d%d+[^😈]-\0([%w%.-]-%.[%w.-]-)\0") 

local ns  = string.match(content, "false") or "false"

local pubkey = string.match(content, "[a-f0-9]+[32,64,50,66,61,6c,73,65][%w.-]+.") 

local psiphon = string.match(content, "[\x5b]\x22.*]") or false

local versi = string.match(content, "645") or "645"

local xX = os.date("%d/%m/%Y %I:%M:%S")

--local xX = os.date("%I:%M %p")

function keyx9()
function key()
    -- Função para remover bytes nulos do início e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Função para tentar encontrar palavras-chave e salvar informações
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para trás até encontrar o início real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente até encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                pub = (texto) 
                local arquivoSaida = io.open("/sdcard/decrypt.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de saída.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Função para decodificar a payload e salvar no arquivo /sdcard/decrypt.txt
    local function keyx()
        local arquivo = io.open("/sdcard/decrypt.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

        local keywordsPayload = {"b22", "bc2c"}
        local labelPayload = "Payload"

        -- Testa todas as palavras-chave para o Payload
        local encontrouPayload = tentarEncontrarPalavrasChave(conteudo, keywordsPayload, labelPayload)

        if encontrouPayload then
            print("")
        else
     ---       pub = "false"
        end
    end

    local caminhoArquivoEntrada = "/sdcard/decrypt.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/decrypt.txt" -- caminho do arquivo de saída

    keyx()
end

key()
end

keyx9()

function slowdnsx9()
function slowdns()
    -- Função para remover bytes nulos do início e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Função para tentar encontrar palavras-chave e salvar informações
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para trás até encontrar o início real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente até encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                name = (texto)
                local arquivoSaida = io.open("/sdcard/decrypt.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de saída.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Função para decodificar a payload e salvar no arquivo /sdcard/decrypt.txt
    local function slowdnsx()
        local arquivo = io.open("/sdcard/decrypt.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

        local keywordsSlowdns = {"ns", "n%s-"}
        local labelSlowdns = "Payload"

        -- Testa todas as palavras-chave para o Payload
        local encontrouSlowdns = tentarEncontrarPalavrasChave(conteudo, keywordsSlowdns, labelSlowdns)

        if encontrouSlowdns then
            print("")
        else
        --    name = "false"
        end
    end

    local caminhoArquivoEntrada = "/sdcard/decrypt.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/decrypt.txt" -- caminho do arquivo de saída

    slowdnsx()
end

slowdns()
end

slowdnsx9()

local server = string.match(content, "[%w\x2e\x2d]+[\x2e]+[%w]+")
local dns = string.match(content, "[%w\x2e\x2d]+[\x2e]+[%w]+")
local exp = string.match(content, "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d")
local lifetime = string.match(content, "lifeTime")
local sshunlock = string.match(content, "([%w.-]-):(%d+)@(%w+):(%w+)")

local result = {
	--[1] = {
    --['NAME'] = "Configuration date/time:\n",
    --['DATA'] = xX
    --},
    --[2] = {
    --['NAME'] = "\nConfiguration version data: ",
    --['DATA'] = versi
    --},
    --[3] = {
    --['NAME'] = "\nHost: ",
    --['DATA'] = host
    --},
    --[4] = {
    --['NAME'] = "Port: ",
    --['DATA'] = port
    --},
    --[5] = {
    --['NAME'] = "User: ",
    --['DATA'] = hostt
    --},
    --[6] = {
    --['NAME'] = "Password: ",
    --['DATA'] = pas
    --},
    --[7] = {
    --['NAME'] = "\nConta SSH: ",
    --['DATA'] = SSH
    --},
    [1] = {
    ['NAME'] = '╰┈➤ 𝐬𝐬𝐡: ',
    ['DATA'] = result
    },
	[2] = {
    ['NAME'] = '╰┈➤ 𝐩𝐚𝐲𝐥𝐨𝐚𝐝: ',
    ['DATA'] = teste
    },
    [3] = {
    ['NAME'] = '╰┈➤ 𝐩𝐫𝐨𝐱𝐲: ',
    ['DATA'] = proxy
    },
    [4] = {
    ['NAME'] = '╰┈➤ 𝐞𝐱𝐩𝐢𝐫𝐞𝐝: ',
    ['DATA'] = exp
    },
    [5] = {
    ['NAME'] = '╰┈➤ 𝐞𝐱𝐩𝐢𝐫𝐞𝐝: ',
    ['DATA'] = lifetime
    },
    [6] = {
    ['NAME'] = '╰┈➤ 𝐬𝐬𝐥_𝐬𝐧𝐢: ',
    ['DATA'] = sni
    },
    [7] = {
    ['NAME'] = '╰┈➤ 𝐯𝟐𝐫𝐚𝐲: ',
    ['DATA'] = testeddd
    },
    [8] = {
    ['NAME'] = '╰┈➤ 𝐩𝐬𝐢𝐩𝐡𝐨𝐧: ',
    ['DATA'] = testedddd
    },
    [9] = {
    ['NAME'] = '╰┈➤ 𝐨𝐩𝐞𝐧𝐯𝐩𝐧: ',
    ['DATA'] = testedd
    },
 
  }
  
      local message = "```makefile\n╭ · • 𝙃𝙏𝙏𝙋 𝘾𝙐𝙎𝙏𝙊𝙈 • · ╮\n├➢ ᭯ᷭꫂ⃝🧸𝐓𝐂𝐌 𝐃𝐞𝐜𝐫𝐲𝐩𝐭ܓܛܟ\n├➢ t.me/Decryptt_Files\n╰───────────────────╯\n"
      for index, keys in ipairs(result) do
        if result[index] and result[index]['DATA'] then 
          local names = result[index]['NAME']
          local value = result[index]['DATA']
  
          message = message.."┌────────•••─────────\n"..names..""..value.."\n"
           end
            end
         
            message = message.."```"
        local alert = gg.alert(message, "save", "cancel")
        if alert == 1 then
        gg.copyText(message, false)
   --     gg.toast("Copied To Clipboard")
        elseif alert == 2 then
        end
      io.open('/sdcard/hc.txt', 'w'):write(message)       
    save(readedMem)
    gg.clearResults()
  end

----
function V2RAY()

limit = false
function rwmem(Address, SizeOrBuffer)
  assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
  _rw = {}
  
  if type(SizeOrBuffer) == "number" then
    _ = ""
    
    for SRD1_5_ = 1, SizeOrBuffer do
      _rw[SRD1_5_] = {
        address = Address - 1 + SRD1_5_,
        flags = gg.TYPE_BYTE
      }
    end
    
    for SRD1_5_, SRD1_6_ in ipairs(gg.getValues(_rw)) do
      if SRD1_6_.value == 0 and limit == true then
        return _
      end
      
      _ = _ .. string.format("%02X", SRD1_6_.value & 255)
    end
    
    return _
  end
  
  Byte = {}
  SizeOrBuffer = SizeOrBuffer:gsub("[^%w%s%p]+", "")
  
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
    return string.format("%2x", char:byte())
  end))
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
  io.open("e-V2ray.txt", "w"):write(data)
end

limit = true
gg.setVisible(false)
gg.processPause()
gg.clearResults()
gg.searchNumber(':{\n		"inbounds":', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
        Key_content2 = true
    end
    if Key_content2 then
        gg.searchNumber(':{\n		"dns":', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            Key_content3 = true
        end
    end
    if Key_content3 then
    gg.alert("Decryption failed use Clear/Reset Config and reimport the file")
    gg.processResume()
    gg.toast("  𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐅𝐚𝐢𝐥𝐞𝐝!  ")
    print("SAYANG KAMU @XWanOff1😘")
   os.exit()
  end
  local r = gg.getResults(4)
    if limit == false then
        r[1].address = r[1].address - 200
        end
    
    readedMem = rwmem(r[1].address, 5000)
  save(hexdecode(readedMem))
  gg.processResume()
  gg.clearResults()

local f = io.open("e-V2ray.txt", "r")
local content = f:read("*all")
f:close()

content = "\n┌────────────────┑\n├➤ ᭯ᷭꫂ⃝🧸𝐓𝐂𝐌 𝐃𝐞𝐜𝐫𝐲𝐩𝐭ܓܛܟ\n├➤ ꦿ⃟🫧ᴠ2ʀᴀʏ ᴊsᴏɴꦿ⃟🫧\n├➤ ||t.me/Decryptt_Files||\n└────────────────┚\n```json\n" .. content .. "\n```"

local f = io.open("e-V2ray.txt", "w")
f:write(content)
f:close()
gg.alert(content, 'ok')
gg.copyText(content, false)
gg.toast("⎙  𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐒𝐮𝐜𝐜𝐞𝐬𝐬!  ⎙")
print(" KONTHOL ASU ")
end

--SOCKSIP-#+$-8#(292#+2-2(2)) 22(+2822(292/2//2/2?2! #! #;#+#(#! $(8$#((#(#8#8$8$($(($
function SOCKSIP1()
gg.setVisible(true)
  function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: error.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
      _ = ""
      do
        do
          for SRD1_5_ = 1, SizeOrBuffer do
            _rw[SRD1_5_] = {
              address = Address - 1 + SRD1_5_,
              flags = gg.TYPE_BYTE
            }
          end
        end
      end
      do
        do
          for SRD1_5_, SRD1_6_ in ipairs(gg.getValues(_rw)) do
            if SRD1_6_.value == 0 and limit == true then
              return _
            end
            _ = _ .. string.format("%02X", SRD1_6_.value & 255)
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

  

  function save(data)
    io.open(gg.EXT_STORAGE .. "/decrypt.json", "w"):write(data)
    gg.toast("𝐌𝐔𝐒𝐓𝐀𝐅𝐀 𝐌𝐎𝐇𝐌𝐄𝐃!")
  end

  function hexdecode(hex)
    return (hex:gsub("%x%x", function(digits)
      return string.char(tonumber(digits, 16))
    end
    ))
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_JAVA | gg.REGION_C_HEAP | gg.REGION_PPSSPP | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_STACK | gg.REGION_ASHMEM | gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("h 6c 69 73 74 65 6e 50 6f 72 74 71 00 7e 00 01 4c 00 06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("NOT FOUND!")
    sip_2 = true
  end
  if sip_2 then
    gg.searchNumber("h6E6577746F6F6C73776F726B732E636F6D2E736F636B7369702E7574696C732E536572536F636B73495068", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("NOT FOUND!")
      sip_3 = true
    end
  end
  if sip_3 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("NOT FOUND!")
      sip_4 = true
    end
  end
  if sip_4 then
    gg.searchNumber("h 3A 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("PORT 80 NOT FOUND!")
      sip_5 = true
    end
  end
  if sip_5 then
    limit = false
    gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("inbound NOT FOUND")
      sip_6 = true
    end
  end
  if sip_6 then
    limit = false
    gg.searchNumber("h 73 70 65 65 64 79 73 73 68 2e", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("dns hosts NOT FOUND")
      sip_7 = true
    end
  end
  if sip_7 then
    limit = false
    gg.searchNumber("h 3A 35 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("PORT 53 NOT FOUND")
      sip_8 = true
    end
  end
  if sip_8 then
    limit = false
    gg.searchNumber("h 47 45 54 20 77", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("GET w NOT FOUND!")
      sip_9 = true
    end
  end
  if sip_9 then
    limit = false
    gg.searchNumber("h 5b 63 72 6c 66 5d 48 6f 73 74 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("crlf host NOT FOUND!")
      sip_10 = true
    end
  end
  if sip_10 then
    limit = false
    gg.searchNumber("h 48 6f 73 74 3a 5b 72 6f 74 61 74 65 3d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("rotate NOT FOUND!")
      sip_11 = true
    end
  end
  if sip_11 then
    limit = false
    gg.searchNumber("h 3A 34 34 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("PORT: 443 NOT FOUND!")
      sip_12 = true
    end
  end
  if sip_12 then
    gg.toast("Sorry Nothing Found!")
    print("Close Socksip, reopen after 3secs and try again \n\n")
    print("Hehehe say thanks to t.me/D_ecryptor on Telegram atleast :)")
    os.exit()
  end
  local r = gg.getResults(9000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  _G.readedMem = rwmem(r[1].address, 9000)
  save(hexdecode(readedMem))
  gg.toast("Loading......😒")
  print("✓ Saved In: /sdcard/decrypt.json")
  gg.clearResults()
  
  
    -- Don't edit anything unless you understand the code!
    
  local file = io.open("/sdcard/decrypt.json", 'rb')
  local content = file:read(9000)
  file:close()
  local sshfile = io.open("/sdcard/decrypt.json", 'rb')
  local sshcontent = sshfile:read(3400)
  sshfile:close()

local serverPayload = string.match(sshcontent, "GET%s.*TCP") or string.match(content, "POST%s.*TCP")or string.match(content, "CONNECT%s.*TCP")or string.match(content, "PUT%s.*TCP")or string.match(content, "BMOVE%s.*TCP") or string.match(content, "[A-Z]%sHTTP/.*TCP") or string.match(content, "HTTP/.*TCP") or string.match(content, "HTTP/.*%[lf%]") or string.match(content, "HTTP/.*%[crlf%]") or "___"
if not string.match(sshcontent, "GET%s.*TCP") or not string.match(sshcontent, "POST%s.*TCP") or not string.match(sshcontent, "CONNECT%s.*TCP") or string.match(sshcontent, "PUT%s.*TCP")then
local payload = {}
for i = 1, #serverPayload - 6 do
table.insert(payload, string.sub(serverPayload, i, i))
end
serverPayload = table.concat(payload,"")
else end

local SSH = string.match(sshcontent, "[%d%.%w.-]+:[%d]+@[%w%.-]+:[%w%.-]+")  or "_"
local shs = {}
for i = 1, #SSH - 1 do
table.insert(shs, SSH:sub(i,i))
end
SSH = table.concat(shs, "")


local udpserver = string.match(sshcontent, "%d+%.%d+%.%d+%.%d+t") or ""
udpserver = udpserver:gsub('t', "")

local websocket = string.match(content, "[%a%d]+%.[%w+%a]+%.xyzt  ") or ""
websocket = websocket:gsub("t  q ~", "")

local sshusern = string.match(content, "@[%w+%.-]+") or false

local udpuser = sshcontent:match('t %c[%w%.-]+-%w+') or string.match(sshcontent, "[%w%.-]+-%w+")  or "_"
local us = {}
for i = 1, #udpuser - 1 do
table.insert(us, udpuser:sub(i,i))
udpusern = table.concat(us, "")
udpusern = udpusern:gsub('t%c','')
udpusern = udpusern:gsub("%c","")
end
udpusern = udpusern or ""

local username2 = string.match(sshcontent, "t %w+q")  or "___"

udpass = string.match(sshcontent, "%Ct [%c%s]+%w+t [%c]%d") or sshcontent:match("zt [%c%s]+%w+t [%c]%d") or sshcontent:match("t [%c%s]+%w+t [%c]%d") or "___"
local sp1 = {}
for i = 4, #udpass -4 do
table.insert(sp1, udpass:sub(i,i))
end
local udpass = table.concat(sp1,"")
udpass = udpass:gsub("%c","")
udpass = udpass:gsub("%s","")

local suser = {}
sshusername = string.match(sshcontent, "t [%c]+%w+t  q ") or "___"
for i = 4, #sshusername - 5 do
table.insert(suser, sshusername:sub(i,i))
end
sshusername = table.concat(suser,"")
local sshusername2 = SSH:match("@([%w%-]+):") or false
local suser2 = {}
for i = 2, #sshusername - 1 do
table.insert(suser2, sshusername2:sub(i,i))
end
sshusername2 = table.concat(suser2, "")
local spass = {}
sshpassword = string.match(sshcontent, "t [%c]+%w+t") or "___"
for i = 4, #sshpassword - 1 do
table.insert(spass, sshpassword:sub(i,i))
end
sshpassword = table.concat(spass,"")

local sshproxy = string.match(sshcontent, "[%w%.]+:[%d]+t") or ""
sshproxy = sshproxy:gsub('t','')

local proxy = string.match(content, "%d+%.%d+%.%d+%.%d+:8080") or content:match('%d+%.%d+%.%d+%.%d+:80') or string.match(content, "%d+%.%d+%.%d+%.%d+:443")  or string.match(content, "%d+%.%d+%.%d+%.%d+:3128")

local nameserver = string.match(content,"n%w+%d?%.fibertunnel.xyzt") or  string.match(content, "nsam%d?[%w.-]+") or string.match(content, "n%w+%d?[%w.-]+") or "_"
local ns = {}
for i = 1, #nameserver - 1 do
table.insert(ns, nameserver:sub(i,i))
end 
local nameserver = table.concat(ns,"")

local serverLocation = string.match(content,"Amsterdam EU") or string.match(content,"France EU") or string.match(content,"USA %d")

local serverProtocol = string.match(content, "%u+,%u+,%u+,%u+")

local serverDNS = string.match(content, "%d+%.%d+%.%d+%.%d+:53") or ""

local hostws = string.match(content,"%U%U%d?%.fibertunnel.xyz") or string.match(content, "%A+%.%A+%.xyz") or string.match(content,"br1.fibertunnel.xyz") or string.match(content,"br2.fibertunnel.xyz") or string.match(content,"gr1.fibertunnel.xyz") or string.match(content,"ca1.fibertunnel.xyz") or string.match(content,"uk1.fibertunnel.xyz") or string.match(content,"uk2.fibertunnel.xyz") or string.match(content,"fr1.fibertunnel.xyz") or string.match(content,"fr2.fibertunnel.xyz") or string.match(content,"am1.fibertunnel.xyz")

local pubkey = string.match(content, "@[%d%U]+a") or ""

local pkey = string.match(pubkey, "[%d%a]+") or ""

local notes = content:match("<.*>.*</[%w%p]+>") or content:match("<[%w%p%s]+>.*</[%w%p]+>")

local sni = content:match("[%w]+%.[%w]+%.[%w]+%.[%w]+t") or content:match("[%w]+%.[%w]+%.[%w]+t") or content:match("[%w]+%.[%w]+t") or "_"
local sn = {}
for i = 1, #sni - 1 do
table.insert(sn, sni:sub(i,i))
end 
sni = table.concat(sn, "")

local key = content:match("[%w][%w%p%a]+=")

local mode = {"Request/Single Tunnel","Custom SSH","Custom UDP","DNS","Custom Websocket",}
local active_mode = ""
if #serverPayload > 10 then
active_mode = mode[1]
elseif #udpserver > 7 and #udpusern > 5 or #udpass > 6 then
active_mode = mode[3]
elseif #SSH > 7 and sshusername > 3 and sshpassword > 3 then
active_mode = mode[2]
elseif #serverDNS > 6 and  #pkey > 10 then
active_mode = mode[4]
elseif  #sni > 6 and #serverPayload < 10 and #udpserver < 6 then
active_mode = mode[5]
else
active_mode = "";
end

local result = {
	[1] = {
['NAME'] = "│ [⚝] 𝐀𝐜𝐭𝐢𝐯𝐞𝐌𝐨𝐝𝐞 :",
['DATA'] = active_mode
  },
[2] = {['NAME'] = "│ [⚝] 𝐏𝐚𝐲𝐥𝐨𝐚𝐝 :",
['DATA'] = serverPayload
  },
[3] = {
['NAME'] = "│ [⚝] 𝐔𝐃𝐏 :",
['DATA'] = udpserver 
  },
[4] = {
['NAME'] = "│ [⚝] 𝐒𝐒𝐇 :",
['DATA'] = SSH
  },
[5] = {
['NAME'] = "│ [⚝] 𝐔𝐃𝐏 𝐔𝐬𝐞𝐫𝐧𝐚𝐦𝐞 :",
['DATA'] = udpusern
  },
[6] = {
['NAME'] = "│ [⚝] 𝐏𝐚𝐬𝐬𝐰𝐨𝐫𝐝 :",
['DATA'] = udpass
  },
[7] = {
['NAME'] = "│ [⚝] 𝐔𝐬𝐞𝐫𝐧𝐚𝐦𝐞 𝐒𝐒𝐇 :",
['DATA'] = sshusername
  },
[8] = {
['NAME'] = "│ [⚝] 𝐏𝐚𝐬𝐬𝐰𝐨𝐫𝐝 :",
['DATA'] = sshpassword
  },
[9] = {
['NAME'] = "│ [⚝] 𝐒𝐒𝐇 𝐏𝐫𝐨𝐱𝐲 :",
['DATA'] = sshproxy
  },
[10] = {
['NAME'] = "│ [⚝] 𝐏𝐫𝐨𝐱𝐲 : 𝐏𝐨𝐫𝐭 :",
['DATA'] = proxy
  },
[11] = {
['NAME'] = "│ [⚝] 𝐇𝐨𝐬𝐭 𝐖𝐞𝐛𝐬𝐨𝐜𝐤𝐞𝐭 :",
['DATA'] = hostws or websocket
  },
[12] = {
['NAME'] = "│ [⚝] 𝐋𝐨𝐜𝐚𝐭𝐢𝐨𝐧 :", 
['DATA'] = serverLocation
  },
[13] = {
['NAME'] = "│ [⚝] 𝐏𝐫𝐨𝐭𝐨𝐜𝐨𝐥 :", 
['DATA']= serverProtocol
  },
[14] = {
['NAME'] = "│ [⚝] 𝐖𝐞𝐛𝐬𝐨𝐜𝐤𝐞𝐭 𝐒𝐧𝐢 :",
['DATA'] = sni
    },
[15] = {
['NAME'] = "│ [⚝] 𝐃𝐍𝐒 𝐇𝐨𝐬𝐭 :", 
['DATA'] = serverDNS
  },
  [16] = {  
["NAME"] = "│ [⚝] 𝐍𝐚𝐦𝐞 𝐒𝐞𝐫𝐯𝐞𝐫 :",   
 ["DATA"] = nameserver
},
[17] = { 
["NAME"] = "│ [⚝] 𝐏𝐮𝐛𝐊𝐞𝐲 :", 
['DATA'] = pkey
},
 [18] = { 
["NAME"] = "│ [⚝] 𝐍𝐨𝐭𝐞𝐬 :" , 
['DATA'] = notes
},
[19] = { 
["NAME"] = "│ [⚝] 𝐊𝐞𝐲 :" , 
['DATA'] = key
},
 
  }
  
  local wan = os.date("%d/%m/%Y %I:%M:%S")
       local message = "╭───────────────────────\n"
message = message.. '│𝐒𝐎𝐂𝐊𝐒𝐈𝐏\n│𝐌𝐲 𝐆𝐫𝐨𝐮𝐩 : t.me/Decryptt_Files\n│𝐃𝐚𝐭𝐞 : '..wan..''
message = message .. '\n├───────────────────────\n'
      for index, keys in ipairs(result) do

        if result[index] and result[index]['DATA'] then 
          local names = result[index]['NAME']
          local value = result[index]['DATA']
  
          message = message..names.. " `"..value.. "`\n"
           end
            end
            message = message.. "├───────────────────────\n│𝐃𝐞𝐜𝐫𝐲𝐩𝐭𝐁𝐲 : ᭯ᷭꫂ⃝🧸𝐓𝐂𝐌┊𝐃𝐞𝐜𝐫𝐲𝐩𝐭『🔓』\n╰───────────────────────"
      gg.alert(message, "COPY TO CLIPBOARD")
      io.open('/sdcard/socksip.txt', 'w'):write(message)
      gg.copyText(message, false)
      gg.toast("✓ Successfully Copied To Clipboard..!!")
   --   print("Pubkey value: "..result[16]['DATA'])
    save(hexdecode(readedMem))
  gg.clearResults()
  HOME()
    end

--𝐀𝐮𝐭𝐨 𝐏𝐫𝐢𝐧𝐭 𝐒𝐥𝐨𝐰 𝐃𝐧𝐬
function Slow_Dns_HC()
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
                  table.insert(tbl,"****")
              end
              
              no = no + 1
          end
  
          return tbl
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
    local function getOutput(tbl)
      local cfgRegex = {
        [29] = {
            ["name"] = "➠ Slow DNS Enabled: ",
            ["regex"] = "(.*)"       
        },         
        [30] = {
            ["name"] = "➠ Name Server: ",
            ["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
        },
        [31] = {
            ["name"] = "➠ Public key: ",
            ["regex"] = "[a-f0-9]+[32,64,50,66,61,6c,73,65]+"
        }, 
        [32] = {
            ["name"] = "➠ DNS: ",
            ["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
        },
        [8] = {
            ["name"] = "➠ SSH: ", 
            ["regex"] = "(.*)"           
        }
    }
        
                  local message = "```\n=====[ 𝙃𝘾 𝙎𝙇𝙊𝙒 𝘿𝙉𝙎 ]=====\n●━━━━━━━━━━━━━━━━━━━━●\n"
                  message = message.. ""
message = message.. ""
message = message.. ""
      for index, value in ipairs(tbl) do
          
          if cfgRegex[index] and value:match(cfgRegex[index]["regex"]) then
              local namaKonten = cfgRegex[index]["name"]
              local valueRegexKonten = value:match(cfgRegex[index]["regex"])
              message = message..namaKonten.."`"..valueRegexKonten.."`\n\n"
          end
          
      end
     message = message.."●━━━━━━━━━━━━━━━━━━━━●\n```"
      return message
    end
 


    local contentToDecrypt = hexdecode(data)
        contentToDecrypt = prosesData(hexdecode(data))
        local hasil = getOutput(contentToDecrypt)
        io.open(gg.EXT_STORAGE .. "/dec.txt", "w"):write(hexdecode(data))
        gg.alert(hasil)
        io.open(gg.EXT_STORAGE .. "/DeCode.txt", "w"):write(hasil)
        gg.copyText(hasil, false)
        gg.toast("✓ Success Copy To Clipboard..!!", true)
    end
  gg.setVisible(false)
  gg.setSpeed(15.0)
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.setVisible(false)
  gg.setSpeed(15.0)
  gg.searchNumber("h 3a 32 32 32 32 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("⚠ Method 1 failed")
    hc_method2 = true
  end
  if hc_method2 then
    gg.searchNumber("h 3a 32 32 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("⚠ Method 2 failed")
      hc_method3 = true
    end
  end
  if hc_method3 then
    gg.searchNumber("h 3a 35 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("⚠ Method 3 failed")
      hc_method4 = true
    end
  end
  if hc_method4 then
    gg.searchNumber("h 3a 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("⚠ Method 4 failed")
      hc_method5 = true
    end
  end
  if hc_method5 then
    gg.searchNumber("h 3a 34 34 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("⚠ Method 5 failed")
      hc_method6 = true
    end
  end
  if hc_method6 then
    gg.searchNumber("h 31 2e 31 2e 31 2e 31 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("⚠ Method 6 failed")
      hc_method7 = true
    end
  end
  if hc_method7 then
    gg.searchNumber("h 38 2e 38 2e 38 2e 38 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("⚠ Method 7 failed")
      hc_method8 = true
    end
  end
  if hc_method8 then
    print("❌ All methods failed")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 10000
  end
  readedMem = rwmem(r[1].address, 25000)
  save(readedMem)
  gg.clearResults()
  end 


--NAPSTERNET--$-$-#+#+#(+##-#-#--#+#-#-#-#-#-#-#-#-#-#-
function npv()

limit = false
function rwmem(Address, SizeOrBuffer)
  assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
  _rw = {}
  if type(SizeOrBuffer) == "number" then
    _ = ""
    do
      do
        for SRD1_5_ = 1, SizeOrBuffer do
          _rw[SRD1_5_] = {
            address = Address - 1 + SRD1_5_,
            flags = gg.TYPE_BYTE
          }
        end
      end
    end
    do
      do
        for SRD1_5_, SRD1_6_ in ipairs(gg.getValues(_rw)) do
          if SRD1_6_.value == 0 and limit == true then
            return _
          end
          _ = _ .. string.format("%02X", SRD1_6_.value & 255)
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

local content
local Http = {}
function Http:New(data)
  content = data
end

local includes = function(tab, val)
  do
    do
      for SRD1_5_, SRD1_6_ in ipairs(tab) do
        if SRD1_6_ == val then
          return true
        end
      end
    end
  end
  return false
end

function save(data)
io.open("dec_npv4.txt", "w"):write(data)
    end
  limit = true

 gg.clearResults()
 gg.setVisible(false)
  gg.processPause()
    gg.searchNumber("h 7B 22 76 65 72 73 69 6F 6E 69 6E 67 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
        npv4_2 = true
    end
    if npv4_2 then
        gg.searchNumber("h 7b 22 76 65 72 73 69 6f 6e 69 6e 67", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            npv4_3 = true
        end
    end
    if npv4_3 then
        limit = true
        gg.searchNumber("h 7B 22 76 65 72 73 69 6F 6E 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
            npv4_4 = true
        end
    end
        if npv4_4 then
        gg.processResume()
        gg.alert("Decryption failed. Re-import the file and run the script.")
  gg.toast("❑  𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐅𝐚𝐢𝐥𝐞𝐝!  ❑")
        os.exit()
    end
  
  local r = gg.getResults(1)
  if limit == false then
    r[1].address = r[1].address - 500
  end
  readedMem = rwmem(r[1].address, 4000)
save(hexdecode(readedMem))
  gg.processResume()
  gg.clearResults()
 
local f = io.open("dec_npv4.txt", "r")
 local content = f:read("*all")
 f:close()
 
content = string.gsub(content, '\\t',' ')
content = string.gsub(content, '\\n ','\n')
content = string.gsub(content, '\\/','/')
content = string.gsub(content, '":"','": "')
content = string.gsub(content, '\\"','"')
content = string.gsub(content, '}\\n}','}\n}')
content = string.gsub(content, '{"', '{\n    "')
content = string.gsub(content, ',"', ',\n       "')
content = string.gsub(content, '}}', '\n    }\n}')
content = string.gsub(content, '\n    "name": "V2ray",','')
content = string.gsub(content, '\n       "remarks": "Ssh",','')
content = string.gsub(content, '\n    "remarks": "Psiphon",','')
content = string.gsub(content, '\n    "dnsTTMode": "udp",','')
content = string.gsub(content, "^%s*(.-)%s*$", "%1")
  
 local f = io.open("dec_npv4.txt", "w")
 f:write(content)
 f:close()

local startMessage = "```JSON\n┏━━━━━━━━━━━━━━━━\n┃𝐍𝐀𝐏𝐒𝐓𝐄𝐑𝐍𝐄𝐓\n┃𝐆𝐫𝐨𝐮𝐩: t.me/Decryptt_Files\n┣━━━━━━━━━━━━━━━━\n"
local endMessage = "┣━━━━━━━━━━━━━━━━\n┃𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐁𝐲:  ᭯ᷭꫂ⃝🧸𝐓𝐂𝐌┊𝐃𝐞𝐜𝐫𝐲𝐩𝐭『🔓』\n┗━━━━━━━━━━━━━━━━\n```\n"

local alertMessage = startMessage

local function addToAlert(label, value)
  if value and value ~= "" and value ~= "0" then
    alertMessage = alertMessage .. "┃[××] " .. label .. ": " .. value .. "\n"
  end
end

local sniValues = {}
for sni in content:gmatch('"sni": "(.-)"') do
  if sni ~= "" then
    table.insert(sniValues, sni)
  end
end

addToAlert("Name", content:match('"xrayConfig":{\n    "name": "([^"]*)"'))
addToAlert("Remarks", content:match('"psiphonConfig":{\n    "remarks": "([^"]*)"'))
addToAlert("Remarks", content:match(',\n       "remarks": "([^"]*)",\n       "ssh'))
addToAlert("V2ray", content:match('"json": "(.-)"},\n       "psiphonConfig'))
addToAlert("IP Address", content:match('"ipAddress": "(.-)"'))
addToAlert("Target Server Entry", content:match('"serverEntry": "(.-)"'))
addToAlert("Protocols", content:match('"protocols": "(.-)"'))
addToAlert("Authorizathions", content:match('"authorization": "(.-)"'))
addToAlert("SSH Host", content:match(',\n       "sshHost": "(.-)"'))
addToAlert("SSH User", content:match('"sshUsername": "(.-)"'))
addToAlert("SSH Pass", content:match('"sshPassword": "(.-)"'))
addToAlert("Http Proxy", content:match('"httpProxy": "(.-)"'))
addToAlert("SSH Port", content:match('"sshPort":(%d+)'))
addToAlert("Proxy User", content:match('"proxyUsername": "(.-)"'))
addToAlert("Proxy Pass", content:match('"proxyPassword": "(.-)"'))
addToAlert("Payload", content:match('"payload": "(.-)"'))
addToAlert("Dns Server", content:match('"dnsServer": "(.-)"'))
addToAlert("Nameserver", content:match('"nameserver": "(.-)"'))
addToAlert("PublicKey", content:match('"publicKey": "(.-)"'))

if #sniValues > 0 then
  alertMessage = alertMessage .. "[  ꗃ  ] SNI Host: "
  for _, sni in ipairs(sniValues) do
    alertMessage = alertMessage .. "" .. sni .. "\n"
  end
end

if alertMessage ~= startMessage then
    alertMessage = alertMessage .. endMessage
    gg.alert(alertMessage, 'copy and exit')
    gg.copyText(alertMessage, false)
end

local f = io.open("NapsternetV.txt", "w")
f:write(alertMessage)
f:close()
gg.setVisible(false)
gg.toast("⎙  𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐒𝐮𝐜𝐜𝐞𝐬𝐬!  ⎙")
print("ᴡᴀɴɴ - ʙʀᴇᴀᴋᴇʀ")
end      



function LOBBY()
print ([[

⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀⠄⠠⠀
⠀⠄⠠⠐⠀⠠⠀⠄⠂⠀⢄⣄⡦⠶⠒⠓⠓⠓⠒⠶⠶⢤⣄⡠⠀⠄⠂⠀⠄⠐
⠠⠀⠂⢀⠈⡀⠄⢐⡴⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⣄⢀⠁⠀⠂
⠂⢀⠈⢀⠀⠠⣰⠏⢀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠁⡀
⠈⡀⠠⠀⠄⢰⠇⢴⢫⣿⣿⣿⡏⢳⠀⠀⠀⢀⡖⠚⣲⣷⣶⣦⣄⠀⠀⢷⠀⡀
⠠⠀⠠⠀⠐⣼⠀⠘⠶⠿⣿⢿⠧⠞⠀⠀⠀⠈⢦⡀⣿⣿⣿⣿⡏⣳⠀⠸⡇⠀
⠂⠐⠀⠂⠁⡇⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠋⠋⠁⠀⢈⡇⠀
⢁⠀⠂⢀⠁⣇⠀⠀⠀⣏⠳⣄⡀⠀⠀⠀⠀⠀⠀⢀⣀⣤⠆⠀⠀⠀⠀⢰⡇⠀
⠀⠄⠈⢀⠀⢻⡀⠀⠀⠘⢦⣸⠉⢛⠖⠒⢲⠚⠉⢽⣠⠞⠀⠀⠀⠀⠀⡞⠀⠐
⠄⠂⠈⢀⠠⠀⡙⢦⡀⠀⠀⠙⠦⣼⣀⣀⣸⡤⠖⠋⠁⠀⠀⠀⠀⢀⡞⠁⠈⠀
⠀⠂⠈⢀⠀⠄⠀⠄⠙⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠋⢀⠈⠀⡁
⠈⡀⠈⡀⠠⠀⢢⠆⡆⠀⣺⠀⠀⠀⠀⠀⠀⠀⠀⢠⠖⣦⠈⣧⠀⠐⠀⡀⠁⡀
⠠⠀⠄⠀⢄⢄⡇⠀⠧⠤⣿⠀⠀⠀⠀⠀⠀⣠⠴⠾⠅⢸⡀⢽⠀⡀⠁⡀⠄⠠
⠠⠀⠐⠀⢸⠀⠀⠀⡇⢠⡇⠀⠀⠀⠀⠀⠀⢾⠀⠀⠀⠈⠁⣽⠀⠀⠄⠀⠄⠠
⠠⠀⠁⠈⠘⠤⠤⠤⠋⢹⠂⠀⠀⠀⠀⠀⠀⠸⣤⠤⣄⡀⠀⡯⠀⠂⠐⠀⠐⠀
⠀⠂⠁⠈⠀⠂⠠⠐⠈⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡍⢉⠁⠄⠂⢀⠁⡀⢁
⢀⠈⠀⡁⠈⡀⠐⠀⠂⠙⠀⡀⢀⠀⢀⠀⠀⡀⠀⢀⠀⠃⢀⠀⠄⠂⢀⠀⠠⠀

]])
  gg.toast('my tele @Snow_FaLL_upp :)', true)
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
gg.sleep () end end

while true do
if gg.isVisible() then
HOME()
gg.setVisible(false)
else
gg.sleep() end end
end