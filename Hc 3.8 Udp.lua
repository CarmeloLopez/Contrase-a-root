limit = false

function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: error, provided address is nil.")
    local _rw = {}

    if type(SizeOrBuffer) == "number" then
        local result = ""
        for i = 1, SizeOrBuffer do
            _rw[i] = { address = Address - 1 + i, flags = gg.TYPE_BYTE }
        end

        for _, v in ipairs(gg.getValues(_rw)) do
            if v.value == 0 and limit == true then
                return result
            end
            result = result .. string.format("%02X", v.value & 255)
        end
        return result
    end

    local Byte = {}
    SizeOrBuffer:gsub("..", function(x)
        Byte[#Byte + 1] = x
        _rw[#Byte] = { address = Address - 1 + #Byte, flags = gg.TYPE_BYTE, value = x .. "h" }
    end)
    gg.setValues(_rw)
end

function hexdecode(hex)
    if hex then
        return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
    else
        return nil
    end
end

function save(data)
    local file = io.open("/sdcard/udp.txt", "w")
    if file then
        file:write(hexdecode(data))
        file:close()
        gg.toast("Data saved successfully!")
    else
        gg.alert("Failed to save data!")
    end
end

gg.clearResults()
gg.setRanges(gg.REGION_JAVA_HEAP)
local searchPatterns =  {':"server": "1', ':"server": "2', ':"server": "3', ':"server": "4', ':"server": "5', ':"server": "6'}

for _, header in ipairs(searchPatterns) do
    gg.searchNumber(header, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local result = gg.getResults(1)
    if #result > 0 then
        local address = result[1].address
        local data = rwmem(address, 30000)
        save(data)
        break
    end
end

local r = gg.getResults(1000)
if limit == false then
    r[1].address = r[1].address - 0x200
end

readedMem = rwmem(r[1].address, 19000)
save(readedMem)
gg.clearResults()

function udpx9()
function udp()

    local function removeNullBytes(texto)
        return texto:gsub("^[%z]+", ""):gsub("[%z]+$", "")
    end
    
    local function tentarEncontrarPalavrasChave(conteudo, palavrasChave, label)
        conteudo = removeNullBytes(conteudo)

        for _, palavraChave in ipairs(palavrasChave) do
            local inicio, fim = conteudo:find('"' .. palavraChave .. '"')

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

                -- Exibe e salva no arquivo
                gg.alert(label .. ": " .. textoCapturado)
                gg.copyText(textoCapturado, false)
                local arquivoSaida = io.open("/sdcard/udp.txt", "a")

                if not arquivoSaida then
                    print("")
                    return
                end

                arquivoSaida:write(label .. ": " .. textoCapturado .. "\n\n")
                arquivoSaida:close()

                return true
            end
        end

        return false
    end

    local function obterEntradaSSH()
        local texto = gg.prompt({"Cole ssh criptografado: "}, nil, {"text"})

        if texto == nil then
            os.exit()
        end

        return texto[1]
    end

    local function salvarTextoEmArquivo(texto, caminhoArquivo)
        if texto == nil or texto == "" then
            return nil, "Texto invalido"
        end

        if caminhoArquivo == nil or caminhoArquivo == "" then
            return nil, "Caminho de arquivo invalido"
        end

        local arquivo = io.open(caminhoArquivo, "w")
        if arquivo == nil then
            return nil, "Nao foi possivel abrir o arquivo"
        end

        arquivo:write(texto)
        arquivo:close()

        return true
    end

    local function lerTextoDeArquivo(caminhoArquivo)
        if caminhoArquivo == nil or caminhoArquivo == "" then
            return nil, "Caminho de arquivo invalido"
        end

        local arquivo = io.open(caminhoArquivo, "r")
        if arquivo == nil then
            return nil, "Nao foi possivel abrir o arquivo"
        end

        local conteudo = arquivo:read("*all")
        arquivo:close()

        if conteudo == nil then
            return nil, "Nao foi possivel ler o conteido do arquivo"
        end

        return conteudo
    end

    local function exibirEInserir(arquivoSaida, label, texto)
        
        local sucesso, erro = arquivoSaida:write(label .. ": " .. texto .. "\n\n")

        if not sucesso then
            print("Erro ao escrever no arquivo de saida: " .. erro)
        end
    end
    
    function udpxx()
        local caminhoArquivoEntrada = "/sdcard/udp.txt"
        local caminhoArquivoSaida = "/sdcard/udp.txt"

        local arquivoEntrada = io.open(caminhoArquivoEntrada, "r")

        if not arquivoEntrada then
            print("Falha ao abrir o arquivo de entrada: " .. caminhoArquivoEntrada)
            return
        end

        local conteudoEntrada = arquivoEntrada:read("*all")
        arquivoEntrada:close()

        if conteudoEntrada and conteudoEntrada ~= "" then
            local hcRegex = {}
            hcRegex["Udp"] = '"user"%s*:%s*"([^"]+)"%s*,%s*"auth"%s*:%s*"([^"]+)"'

            function bitwise(val1, val2)
                return string.char((tonumber(val1) // (2 ^ tonumber(val2))) % 256)
            end

            function extract(data, iv)
                if type(data) ~= "string" then
                    return nil, nil
                end

                local new_data = ""
                for val1, val2 in string.gmatch(data, "(-?%d+)%.(-?%d+)") do
                    local ivNum = tonumber(iv)
                    if not ivNum then
                        return nil, nil
                    end

                    local val1Num = tonumber(val1)
                    local val2Num = tonumber(val2)

                    if not val1Num or not val2Num then
                        return nil, nil
                    end

                    local val11 = val1Num - ivNum
                    local val22 = val2Num - ivNum

                    local val3 = ((val11 // (2 ^ val22)) % 256)
                    local car = string.char(val3)
                    new_data = new_data .. car
                end

                if verificaString(new_data) then
                    return new_data
                else
                    new_data = ""
                    for val1, val2 in string.gmatch(data, "(-?%d+)%.(-?%d+)") do
                        car = bitwise(val1, val2)
                        new_data = new_data .. car
                    end
                    return new_data
                end
            end

            function verificaString(str)
                for i = 1, #str do
                    local char = str:sub(i, i)
                    local ascii = string.byte(char)
                    if (ascii < 32 or ascii > 126) or (ascii > 90 and ascii < 97) then
                        return false
                    end
                end
                return true
            end

            function calculaIv(user, senha)
                if type(user) ~= "string" or type(senha) ~= "string" then
                    return nil, "Usuario e senha devem ser strings"
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

            local udpUserEnc, udpPassEnc = string.match(conteudoEntrada, hcRegex["Udp"])

            if udpUserEnc and udpPassEnc then
                local userIv, passIv = calculaIv(udpUserEnc, udpPassEnc)

                if userIv and passIv then
                    local udpUser, udpPass = dec_user_pass(udpUserEnc, userIv, udpPassEnc, passIv)

                    if udpUser and udpPass then 
                        local resultadoDecodificado = "Username Decryptor: " .. udpUser .. "\nPassword Decryptor: " .. udpPass
                        conteudoEntrada = string.gsub(conteudoEntrada, 'user": "([%d-.]+)"', 'user": "' .. udpUser .. '"')
                        conteudoEntrada = string.gsub(conteudoEntrada, 'auth": "([%d-.]+)"', 'auth": "' .. udpPass .. '"')

                        conteudoEntrada = removeNullBytes(conteudoEntrada)

                        local arquivoSaida = io.open(caminhoArquivoSaida, "w")
                        
                        if not arquivoSaida then
                            print("Erro ao abrir o arquivo de saida")
                        else
                            arquivoSaida:write(conteudoEntrada)
                            arquivoSaida:close()
                            print("Exibido e Salvo com sucesso!")
                        end
                    else
                        print("Erro ao decodificar udpUser ou udpPass")
                    end
                else
                    print("Erro ao calcular IV para udpUser ou udpPass")
                end
            else
                print("")
            end
        end
    end
    
    udpxx()
end

udp()
end

udpx9()

local f = io.open("/sdcard/udp.txt", "r")
local content = f:read("*all")
f:close()

local f = io.open("/sdcard/udp.txt", "w")
f:write(content)
f:close()

local startMessage = "```makefile\n"
local endMessage = "```"

local server = content:match('"server": "(.-)"')
local user = content:match('"user": "(.-)"')
local auth = content:match('"auth": "(.-)"')
local alertMsg = server .. "@" .. user .. ":" .. auth
local sni = content:match('"sni": "(.-)"')
local rx_receive = content:match('"rx_receive": (%d+)')
local tx_transfer = content:match('"tx_transfer": (%d+)')
local stream_buffer = content:match('"stream_buffer": (%d+)')
local receive_buffer = content:match('"receive_buffer": (%d+)')
local insecure = content:match('"insecure": (%w+)')
local listen = content:match('"listen": "(.-)"')

local alertMessage = startMessage
  
  local function addToAlert(label, value)
    if value and value ~= "" then
      alertMessage = alertMessage .. "✰─────────────────✰\n[🧸] " .. label .. ": " .. value .. "\n"
    end
  end
  
  addToAlert("Ssh", alertMsg)
  addToAlert("Sni", sni)
  addToAlert("Rx Received", rx_receive)
  addToAlert("Tx Transfer", tx_transfer)
  addToAlert("Stream Buffer", stream_buffer)
  addToAlert("Received Buffer", receive_buffer)
  addToAlert("Insecure", insecure)
  addToAlert("Listen", listen)
  
  if alertMessage ~= "" then
    alertMessage = alertMessage .. endMessage
    gg.alert(alertMessage, 'Copy and exit')
    gg.copyText(alertMessage, false)
    gg.toast("Excelente")
    gg.setVisible(true)
  end
  
  local outputFile = "/sdcard/hc-udp.txt"
local file = io.open(outputFile, "w")
file:write(alertMessage)
file:close()