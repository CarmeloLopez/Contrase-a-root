limit = false

-- Function to read/write memory
function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
        local hexData = ""
        for i = 1, SizeOrBuffer do
            _rw[i] = { address = (Address - 1) + i, flags = gg.TYPE_BYTE }
        end
        for i, v in ipairs(gg.getValues(_rw)) do
            if v.value == 0 and limit then
                return hexData
            end
            hexData = hexData .. string.format("%02X", v.value & 0xFF)
        end
        return hexData
    else
        local Byte = {}
        SizeOrBuffer:gsub("..", function(x)
            table.insert(Byte, x)
            table.insert(_rw, { address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h" })
        end)
        gg.setValues(_rw)
    end
end

-- Hex to ASCII and ASCII to Hex conversion functions
function hexdecode(hex)
    return (hex:gsub("%x%x", function(digits)
      return string.char(tonumber(digits, 16))
    end
    ))
  end

function hexencode(str)
    return (str:gsub(".", function(char) return string.format("%02x", char:byte()) end))
end

-- Decimal to Hex conversion
function Dec2Hex(nValue)
    return string.format("%X", nValue)
end

-- String to Integer conversion
function ToInteger(number)
    return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
end

-- Save data to file
function save(data)
    local file = io.open(gg.EXT_STORAGE .. "/the_clay.txt", "w")
    file:write(hexdecode(data))
    file:close()
end

-- Function to perform a series of searches
function performSearch(pattern, toastMessage, nextMethodFlag)
    gg.searchNumber(pattern, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local results = gg.getResults(1)
    if #results < 1 then
        gg.toast(toastMessage)
        return true
    end
    return false
end

-- Clear previous results and set search range
gg.clearResults()
gg.setRanges(gg.REGION_JAVA_HEAP)

-- List of search patterns and corresponding messages
local searchPatterns = {
{pattern = ':"sshConfig":', message = "Method GET"},
    {pattern = ":[crlf]Host", message = "Method GET"},
    {pattern = ":@80", message = "host:"},
    {pattern = ":GET  ", message = "Clay"},
    {pattern = ":HTTP/", message = "[crlf]"},
    {pattern = ":[host_", message = "Upgrade: websocket"},
    {pattern = ':style="text-align', message = "GET wss"},
    {pattern = ":[splitPsiphon][splitPsiphon]", message = "splitPsiphon"},
    {pattern = ":[splitPsiphon]", message = "[ey"},
    {pattern = "h 33 30 32 30 33 30 32 30 33 30 32 30", message = "splitPsiphon"},
    {pattern = "h 23 20 43 6F 6E 66 69 67 20 66 6F 72 20 4F 70 65 6E 56 50 4E 20 32 2E 78", message = "config for OpenVPN 2x"},
    {pattern = "h 5b 22 65 79", message = "[ eyJ"},
    {pattern = ":inbounds", message = "config for OpenVPN 2x"},
    {pattern = "h 5B 00 63 00 72 00 6C 00 66 00 5D 00 48 00 6F 00 73 00 74 00", message = ":[crlf]Host"}
}

-- Iterate over search patterns and perform searches
for i, search in ipairs(searchPatterns) do
    local nextMethodFlag = "hc_method" .. (i + 1)
    if _G["hc_method" .. i] or i == 1 then
        _G[nextMethodFlag] = performSearch(search.pattern, search.message, nextMethodFlag)
    end
end

-- Read and save memory if no limit is set
local r = gg.getResults(100)
if not limit and #r > 0 then
    r[1].address = r[1].address - 0x200
end

if #r > 0 then
    local readedMem = rwmem(r[1].address, 19000)
    save(readedMem)
end

gg.clearResults()

local file = io.open("/sdcard/the_clay.txt", 'rb')
local content = file:read(20000)
file:close()
local sshfile = io.open("/sdcard/the_clay.txt", 'rb')
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
    return nil, "Texto "
  end
  
  if caminhoArquivo == nil or caminhoArquivo == "" then
    return nil, "Caminho de arquivo"
  end
  
  local arquivo = io.open(caminhoArquivo, "w")
  if arquivo == nil then
    return nil, "abrir o arquivo"
  end
  
  arquivo:write(texto)
  arquivo:close()
  
  return true
end

function lerTextoDeArquivo(caminhoArquivo)
  if caminhoArquivo == nil or caminhoArquivo == "" then
    return nil, "Cam"
  end
  
  local arquivo = io.open(caminhoArquivo, "r")
  if arquivo == nil then
    return nil, "abrir o arquivo"
  end
  
  local conteudo = arquivo:read("*all")
  arquivo:close()
  
  if conteudo == nil then
    return nil, "do arquivo"
  end
  
  return conteudo
end

local hcRegex = {}
hcRegex["sshEnc"] = "([%w.-]-):(%d+)@([%d-.]+):([%d-.]+)"
hcRegex["sshNormal"] = "([%w.-]-):(%d+)@(%w+):(%w+)"

function save(val1, val2, val11, val22, val3, car)
    local outputFileName = "/sdcard/the_clay.txt"

    -- Abre o arquivo no modo de escrita no diret¨®rio do script
    local outputFile = io.open(outputFileName, "a")

    if outputFile then
        -- Construir a string com os valores a serem salvos
        local data = string.format("%s, %s, %s, %s, %s, %s\n", val1, val2, val11, val22, val3, car)
        outputFile:write(data)
        print("")
        outputFile:close()
    else
        print(" xxxxxx ")
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
    -- Linhas de depura??o
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
    return nil, "e senha devem ser strings"
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
        print("Erro ao escrever no arquivo de sa¨ªda: " .. erro)
    end
end

function processarSSHx()
    local caminhoArquivoEntrada = "/sdcard/the_clay.txt"
    local caminhoArquivoSaida = "/sdcard/the_clay.txt"

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

    -- Criar ou abrir o arquivo de sa¨ªda
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
    
-- Fechar o arquivo de sa¨ªda
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
    -- Fun??o para remover bytes nulos do in¨ªcio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun??o para tentar encontrar palavras-chave e salvar informa??es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr¨¢s at¨¦ encontrar o in¨ªcio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at¨¦ encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                teste = (texto) or false
                local arquivoSaida = io.open("/sdcard/the_clay.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa¨ªda.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun??o para decodificar a payload e salvar no arquivo /sdcard/the_clay.txt
    local function payloadx()
        local arquivo = io.open("/sdcard/the_clay.txt", "rb")

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

    local caminhoArquivoEntrada = "/sdcard/the_clay.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/the_clay.txt" -- caminho do arquivo de sa¨ªda

    payloadx()
end

payload()
end

payloadx9()

function ovpnx9()
function ovpn()
    -- Fun??o para remover bytes nulos do in¨ªcio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun??o para tentar encontrar palavras-chave e salvar informa??es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr¨¢s at¨¦ encontrar o in¨ªcio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at¨¦ encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testedd = (texto) or false
                local arquivoSaida = io.open("/sdcard/the_clay.txt", "a")


                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa¨ªda.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun??o para decodificar a payload e salvar no arquivo /sdcard/the_clay.txt
    local function ovpnx()
        local arquivo = io.open("/sdcard/the_clay.txt", "rb")

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


    local caminhoArquivoEntrada = "/sdcard/the_clay.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/the_clay.txt" -- caminho do arquivo de sa¨ªda

    ovpnx()
end

ovpn()
end

ovpnx9()

function v2rayx9()
function v2ray()
    -- Fun??o para remover bytes nulos do in¨ªcio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun??o para tentar encontrar palavras-chave e salvar informa??es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr¨¢s at¨¦ encontrar o in¨ªcio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at¨¦ encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testeddd = (texto)
                local arquivoSaida = io.open("/sdcard/the_clay.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa¨ªda.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun??o para decodificar a payload e salvar no arquivo /sdcard/the_clay.txt
    local function v2rayx()
        local arquivo = io.open("/sdcard/the_clay.txt", "rb")

        if not arquivo then
            print("Falha ao abrir o arquivo de entrada.")
            return
        end

        local conteudo = arquivo:read("*a")
        arquivo:close()

   local keywordsV2ray = {"inbounds", "outbounds", "vless:\\/\\/", "vmess:\\/\\/", "trojan:\\/\\/"}
    local labelV2ray = "[#] ?????"

    -- Testa todas as palavras-chave para o OpenVPN
    local encontrouV2ray = tentarEncontrarPalavrasChave(conteudo, keywordsV2ray, labelV2ray)

    if encontrouV2ray then
        print("")
    else
 ---       testeddd= "false"
    end
end


    local caminhoArquivoEntrada = "/sdcard/the_clay.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/the_clay.txt" -- caminho do arquivo de sa¨ªda

    v2rayx()
end

v2ray()
end

v2rayx9()

function pythonx9()
function python()
    -- Fun??o para remover bytes nulos do in¨ªcio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun??o para tentar encontrar palavras-chave e salvar informa??es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr¨¢s at¨¦ encontrar o in¨ªcio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at¨¦ encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                testedddd = (texto)
                local arquivoSaida = io.open("/sdcard/the_clay.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa¨ªda.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun??o para decodificar a payload e salvar no arquivo /sdcard/the_clay.txt
    local function pythonx()
        local arquivo = io.open("/sdcard/the_clay.txt", "rb")

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


    local caminhoArquivoEntrada = "/sdcard/the_clay.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/the_clay.txt" -- caminho do arquivo de sa¨ªda

    pythonx()
end

python()
end

pythonx9()

local proxy = string.match(content, "%w+.[%w\x2e]+[\x3a][%d]+") or " "
local sni = string.match(content, "[%w%.-]+:%d%d+[^?]-\0([%w%.-]-%.[%w.-]-)\0") or " "

local dns = string.match(content, "%d%d+[^?]-\0([%d%.-]-%.[%d.-]-)\0") or " "
local pubkey = string.match(content, "[a-f0-9]+[32,64,50,66,61,6c,73,65][%w.-]+.") or " "
local server = string.match(content, "%w%w+[^?]-\0([%w%.-]-%.[%w.-]-)\0\0") or " "

local life = string.match(content, "%d%d%d%d[\45]%d%d[\45]%d%d[\32]%d%d[\58]%d%d") or "lifeTime"

local sni = string.match(content, "[%w%.-]+:%d%d+[^?]-\0([%w%.-]-%.[%w.-]-)\0") 

local ns  = string.match(content, "false") or "false"

local pubkey = string.match(content, "[a-f0-9]+[32,64,50,66,61,6c,73,65][%w.-]+.") 

local psiphon = string.match(content, "[\x5b]\x22.*]") or false

local versi = string.match(content, "645") or "645"

local xX = os.date("%d/%m/%Y %I:%M:%S")

--local xX = os.date("%I:%M %p")

function keyx9()
function key()
    -- Fun??o para remover bytes nulos do in¨ªcio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun??o para tentar encontrar palavras-chave e salvar informa??es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr¨¢s at¨¦ encontrar o in¨ªcio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at¨¦ encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                pub = (texto) 
                local arquivoSaida = io.open("/sdcard/the_clay.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa¨ªda.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun??o para decodificar a payload e salvar no arquivo /sdcard/the_clay.txt
    local function keyx()
        local arquivo = io.open("/sdcard/the_clay.txt", "rb")

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

    local caminhoArquivoEntrada = "/sdcard/the_clay.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/the_clay.txt" -- caminho do arquivo de sa¨ªda

    keyx()
end

key()
end

keyx9()

function slowdnsx9()
function slowdns()
    -- Fun??o para remover bytes nulos do in¨ªcio e do final do texto
    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end

    -- Fun??o para tentar encontrar palavras-chave e salvar informa??es
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find(palavraChave)

            if inicio then
                local inicioJSON = inicio
                local fimJSON = fim

                -- Percorre para tr¨¢s at¨¦ encontrar o in¨ªcio real do JSON
                while inicioJSON > 1 and conteudo:sub(inicioJSON - 1, inicioJSON - 1) ~= "\0" do
                    inicioJSON = inicioJSON - 1
                end

                -- Percorre para frente at¨¦ encontrar o final real do JSON
                while fimJSON < #conteudo and conteudo:sub(fimJSON + 1, fimJSON + 1) ~= "\0" do
                    fimJSON = fimJSON + 1
                end

                local texto = conteudo:sub(inicioJSON, fimJSON)

                -- Exibe e salva no arquivo
                local pay = texto
                name = (texto)
                local arquivoSaida = io.open("/sdcard/the_clay.txt", "a")

                if not arquivoSaida then
                    print("Falha ao abrir o arquivo de sa¨ªda.")
                    return
                end

                arquivoSaida:write(label .. ": " .. texto .. "\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    -- Fun??o para decodificar a payload e salvar no arquivo /sdcard/the_clay.txt
    local function slowdnsx()
        local arquivo = io.open("/sdcard/the_clay.txt", "rb")

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

    local caminhoArquivoEntrada = "/sdcard/the_clay.txt" -- caminho do arquivo de entrada
    local caminhoArquivoSaida = "/sdcard/the_clay.txt" -- caminho do arquivo de sa¨ªda

    slowdnsx()
end

slowdns()
end

slowdnsx9()


local result = {
    {['NAME'] = "\nCarga Util :  ", ['DATA'] = teste},
    {['NAME'] = "\nProxy  : ", ['DATA'] = proxy},
    {['NAME'] = "\nSSH  : ", ['DATA'] = result},
    {['NAME'] = "\nSSL  : ", ['DATA'] = sni},
    {['NAME'] = "\nV2ray  : ", ['DATA'] = testeddd}
}
  
      local message = "```\n\n*---------------------------------------------*"
      for index, keys in ipairs(result) do
        if result[index] and result[index]['DATA'] then 
          local names = result[index]['NAME']
          local value = result[index]['DATA']
  
          message = message..""..names..">>   "..value.."\n"
           end
            end
         
            message = message.."*-----------------------------------------*```"
        local alert = gg.alert(message, "Guardar", "Cancelar")
        if alert == 1 then
        gg.copyText(message, false)
   --     gg.toast("Copied To Clipboard")
        elseif alert == 2 then
        end
      io.open('/sdcard/hc.txt', 'w'):write(message)
    save(hexdecode(readedMem))
  gg.clearResults()