x9ok = 1
function x9on()
while (true) do
if gg.isVisible(true) then 
x9A= 1
  gg = gg or {}
  gg.pauseGame = gg.pauseGame or function() end
gg.clearResults()
gg.setVisible(false) 
end

x9B = 1
function x9B()
    gg.processPause()
    local target = gg.getTargetInfo()
    local packageName = target["packageName"]
    local appName = target["label"]
    menu = gg.choice({
        "〘 🔓 〙『 𝐄𝐇𝐈/𝐇𝐂/𝐒𝐊𝐒/𝐎𝐔𝐓𝐑𝐎𝐒....』\n",
        "〘 🔓 〙『 𝐀𝐏𝐏𝐋𝐈𝐂𝐀𝐓𝐈𝐎𝐍 𝐂𝐎𝐍𝐅𝐈𝐆 』\n",
        "〘 🔓 〙『 𝐔𝐏𝐃𝐀𝐓𝐈𝐍𝐆 𝐋𝐈𝐍𝐊 』\n",
        "〘 🔓 〙『 𝐔𝐒𝐄𝐑 𝐀𝐍𝐃 𝐒𝐄𝐍𝐇𝐀 』\n",
		"〘 🔓 〙『 𝐏𝐀𝐘𝐋𝐎𝐀𝐃𝐒/𝐌𝐈𝐑𝐀𝐂𝐋𝐄-𝐀𝐓𝐋𝐀𝐍𝐓𝐔𝐒 』\n",
        "〘 🔓 〙『 𝐃𝐮𝐦𝐩 』\n",
        "〘 🔍 〙『 𝐄𝐍𝐓𝐄𝐑 𝐓𝐇𝐄 𝐓𝐄𝐋𝐄𝐆𝐑𝐀𝐌 𝐆𝐑𝐎𝐔𝐏』\n",
        "〘 ❌ 〙『 𝐒𝐀𝐈𝐑 𝐃𝐎 𝐌𝐄𝐍𝐔 』"
    }, nil, string.format("%s - %s\nVersão 2.2 x9.lua\nHoje é %s\nSão %s\n『 📲 〙『NetFree080 - openers_news』", appName, packageName, os.date("%d/%m/%Y"), os.date("%H:%M:%S")))

    if menu == nil then x9P() end
    if menu == 1 then x9C() end
    if menu == 2 then Payload() end
    if menu == 3 then link() end
    if menu == 4 then login() end
    if menu == 5 then crlf() end
    if menu == 6 then Dump() end
    if menu == 7 then joinTelegramGroup() end
    if menu == 8 then EXIT() end
    x9A = -1
    gg.processResume()
end



function openInBrowser(url)
  gg.copyText(url)
  gg.alert("O link foi copiado para a área de transferência. Por favor, abra o telegram e cole o link.")
  gg.setVisible(false)
end

function joinTelegramGroup()
  local groups = {
    {name = "Grupo NetFree", url = "https://t.me/netfree080"},
    {name = "Canal NetFree", url = "https://t.me/netfree081"},
    {name = "Grupo Ehi Openers", url = "https://t.me/HttpInjectorX9"},
    {name = "Canal Openers News", url = "https://t.me/openers_news"},
    {name = "Criador By p2pmaster", url = "https://t.me/p2pmaster"}
  }
  
  local groupNames = {}
  for i = 1, #groups do
    table.insert(groupNames, groups[i].name)
  end
  
  while true do
    local choice = gg.choice(groupNames, nil, "Escolha um grupo:")
    if choice == nil then 
      return 
    end
    
    openInBrowser(groups[choice].url)
    
    gg.toast("Voltando para a lista de grupos...")
gg.sleep(1000)
joinTelegramGroup()

    if shouldReturnToGroups == nil or shouldReturnToGroups:lower() ~= "sim" then
      gg.setVisible(true)
      break
    end
  end
end

function x9C()
limit = true
targetInfo = gg.getTargetInfo()
app = targetInfo.packageName
local utf8 = {}
local bit = {
  data32 = {}
}

function HttpInjectorX9()
function hd(hex)
	-- Remove espaços em branco e caracteres não imprimíveis
	hex = hex:gsub("[^%x ]", "")

	-- Converte cada par de caracteres hexadecimal em um caractere ASCII
	return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
end

-- A função para decodificar uma string hexadecimal em ASCII
function hdh(hex)
    -- Verifica se hex é uma string válida
    if hex == nil or type(hex) ~= "string" then
        print("Erro: Dados de entrada inválidos para a função hd.")
        return
    end

    -- A função `gsub` percorre a string hexadecimal e a converte em caracteres ASCII
    return (string.gsub(hex, "%x%x", function(digits)
        -- A função `tonumber` converte os dígitos hexadecimais em números inteiros
        -- E então, a função `string.char` converte o número em um caractere ASCII correspondente
        return string.char(tonumber(digits, 16))
    end))
end

-- Função Hentai exibe Primeiro as Primas
function hentai()
gg.clearResults()
results = gg.getListItems()
gg.removeListItems(results)
print(hdh("E385A4"))
print(hdh("E2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A1BFE2A09BE2A09BE2A08BE2A089E2A099E2A0BBE2A0BFE2A0BFE2A0BFE2A0BFE2A2BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A1BFE2A083E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A0B9E2A3BFE2A3BFE2A3B6E2A3B6E2A3A6E2A3ACE2A2B9E2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A083E2A084E2A084E2A084E2A3B0E2A3A7E2A180E2A084E2A084E2A084E2A084E2A088E2A299E2A18BE2A3BFE2A3BFE2A3BFE2A2B8E2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A084E2A084E2A0B0E2A0BCE2A2AFE2A3BFE2A3BFE2A3A6E2A384E2A084E2A084E2A084E2A088E2A2A1E2A3BFE2A3BFE2A3BFE2A2B8E2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A084E2A084E2A0B8E2A0A4E2A095E2A09BE2A099E2A0B7E2A3BFE2A186E2A084E2A084E2A084E2A3B8E2A3BFE2A3BFE2A18FE2A3BCE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A187E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A084E2A3B4E2A3BFE2A3BFE2A3BFE2A2A1E2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A19FE2A084E2A084E2A084E2A084E2A084E2A384E2A084E2A280E2A084E2A084E2A280E2A3A4E2A3BEE2A3BFE2A3BFE2A3BFE2A283E2A3BEE2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A0BFE2A39BE2A3A1E2A384E2A380E2A084E2A0A0E2A2B4E2A3BFE2A3BFE2A1BFE2A384E2A3B4E2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A283E2A3BEE2A3BFE2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A18FE2A3BCE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3A9E2A1BDE2A181E2A2B8E2A3BFE2A3BFE2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A283E2A3BFE2A3BFE2A29FE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3AEE2A2ABE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A39FE2A2BFE2A083E2A084E2A2BBE2A3BFE2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A1BFE2A3B8E2A09FE2A3B5E2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BEE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3B7E2A384E2A2B0E2A184E2A2BFE2A3BFE2A3BFE2A3BF0AE2A3BFE2A3BFE2A3BFE2A3BFE2A187E2A08FE2A3BCE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3A6E2A0B9E2A18EE2A3BFE2A3BFE2A3BF0AE2A3ADE2A38DE2A09BE2A0BFE2A084E2A2B0E2A08BE2A189E2A0B9E2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A099E2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A19FE2A281E2A099E2A186E2A2A1E2A3BFE2A3BFE2A3BF0AE2A0BBE2A3BFE2A186E2A084E2A3A4E2A088E2A2A3E2A388E2A3A0E2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A08FE2A384E2A0BBE2A3BFE2A3BFE2A3BFE2A3BFE2A3BFE2A386E2A388E2A3B4E2A083E2A3BFE2A3BFE2A3BFE2A3BF0AE2A180E2A088E2A2BFE2A084E2A3BFE2A187E2A084E2A099E2A0BFE2A3BFE2A1BFE2A0BFE2A28BE2A3A5E2A3BEE2A3BFE2A3B7E2A38CE2A0BBE2A2BFE2A3BFE2A3BFE2A1BFE2A09FE2A3A1E2A3BEE2A3BFE2A3BFE2A0BFE2A28B0AE2A09BE2A0B3E2A084E2A2A0E2A3BFE2A087E2A084E2A3B7E2A191E2A2B6E2A3B6E2A2BFE2A3BFE2A3BFE2A3BFE2A3BDE2A3BFE2A3BFE2A3BFE2A3B6E2A3B6E2A190E2A3B6E2A3BFE2A0BFE2A09BE2A3A9E2A184E2A084E2A2B8"))

os.exit()
end

-- Função "x9d", Primeiro as Primas - Esta função faz parte de um código mais extenso e desempenha várias tarefas
function x9d()

    -- Inicialização de variáveis
    limit = false  -- Inicializa a variável "limit" como falsa (false).

    -- Tabelas e funções para manipulação de UTF-8
    local utf8 = {}  -- Cria uma tabela chamada "utf8" para auxiliar na manipulação de strings UTF-8.
    local bit = {
        data32 = {}  -- Cria uma tabela chamada "bit" com uma sub-tabela "data32" para operações de bits.
    }

    -- Inicialização da tabela "bit.data32"
    do
        for i = 1, 32 do
            bit.data32[i] = 2 ^ (32 - i)  -- Preenche a tabela "bit.data32" com valores binários de 32 bits.
        end
    end

    -- Função para obter o número de bytes de um caractere UTF-8
    local toby = string.byte
    function utf8.charbytes(s, i)
        i = i or 1  -- Se o índice não for fornecido, assume 1 como padrão.
        local c = string.byte(s, i)  -- Obtém o valor numérico do caractere na posição i.
        if c > 0 and c <= 127 then
            return 1  -- Caractere ASCII de 1 byte.
        end

        if c >= 194 and c <= 223 then
            return 2  -- Caractere UTF-8 de 2 bytes.
        end

        if c >= 224 and c <= 239 then
            return 3  -- Caractere UTF-8 de 3 bytes.
        end

        if c >= 240 and c <= 244 then
            return 4  -- Caractere UTF-8 de 4 bytes.
        end

        return 1  -- Valor padrão, assume 1 byte se não corresponder a nenhum caso acima.
    end

    -- Declaração da função "d2b" como método da tabela "bit"
    local ded
    function bit:d2b(arg)
        if arg == nil then
            return  -- Retorna nil se o argumento for nulo.
        end

        local tr, c = {}, arg < 0
        if c then
            arg = 0 - arg  -- Se o argumento for negativo, torna-o positivo.
        end

        -- Converte o número decimal para binário
        for i_c = 1, 32 do
            if arg >= self.data32[i_c] then
                tr[i_c] = 1
                arg = arg - self.data32[i_c]
            else
                tr[i_c] = 0
            end
        end

        if c then
            tr = self:_bnot(tr)  -- Se o número original era negativo, aplica o complemento de dois.
            tr = self:b2d(tr) + 1  -- Converte de volta para decimal.
            tr = self:d2b(tr)  -- Converte de volta para binário.
        end

        return tr  -- Retorna o valor binário resultante.
    end

    -- Função para converter um número binário em decimal
    function bit:b2d(arg, neg)
        local nr = 0  -- Inicializa o número decimal como 0.

        if arg[1] == 1 and neg == true then
            arg = self:_bnot(arg)  -- Se o primeiro bit for 1 e "neg" for verdadeiro, aplica o complemento de dois.
            nr = self:b2d(arg) + 1  -- Converte de volta para decimal e adiciona 1.
            nr = 0 - nr  -- Torna o número negativo.
        else
            -- Converte o número binário em decimal.
            for i_c = 1, 32 do
                if arg[i_c] == 1 then
                    nr = nr + 2 ^ (32 - i_c)  -- Adiciona o valor do bit à representação decimal.
                end
            end
        end

        return nr  -- Retorna o valor decimal resultante.
    end

    -- Aqui, a função "x9d" deve continuar com sua implementação real. Até agora, apenas a inicialização de variáveis, tabelas e funções foi feita.

    -- O restante da implementação da função "x9d" joguei abaixo

-- Função para realizar a operação lógica "E" bit a bit entre dois números
function bit:_and(a, b)
    -- Converte os números decimais em representações binárias
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local r = {}  -- Inicializa o resultado como uma tabela vazia

    -- Realiza a operação "E" bit a bit
    for i_f = 1, 32 do
        if op1[i_f] == 1 and op2 ~= nil and op2[i_f] == 1 then
            r[i_f] = 1  -- Se ambos os bits forem 1, o resultado é 1
        else
            r[i_f] = 0  -- Caso contrário, o resultado é 0
        end
    end

    -- Essa correção verifica se op2 não é nil antes de tentar acessar op2[i_f]. Isso evita o erro de tentar acessar uma tabela nil com a chave i_f e garante que o código funcione corretamente.

    -- Converte o resultado de volta para decimal como um número negativo (se necessário)
    return self:b2d(r, true)
end

-- Função para realizar a operação lógica "OU" bit a bit entre dois números
function bit:_or(a, b)
    -- Converte os números decimais em representações binárias
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local r = {}  -- Inicializa o resultado como uma tabela vazia

    -- Realiza a operação "OU" bit a bit
    for i_f = 1, 32 do
        if op1[i_f] == 1 or op2[i_f] == 1 then
            r[i_f] = 1  -- Se pelo menos um dos bits for 1, o resultado é 1
        else
            r[i_f] = 0  -- Caso contrário, o resultado é 0
        end
    end

    -- Converte o resultado de volta para decimal como um número negativo (se necessário)
    return self:b2d(r, true)
end

-- Função para realizar a operação lógica "XOR" bit a bit entre dois números
function bit:_xor(a, b)
    -- Converte os números decimais em representações binárias
    local op1 = self:d2b(a)
    if op1 == nil then
        return nil  -- Retorna nil se a conversão falhar
    end

    local op2 = self:d2b(b)
    if op2 == nil then
        return nil  -- Retorna nil se a conversão falhar
    end

    local r = {}  -- Inicializa o resultado como uma tabela vazia

    -- Realiza a operação "XOR" bit a bit
    for i_f = 1, 32 do
        if op1[i_f] == op2[i_f] then
            r[i_f] = 0  -- Se os bits forem iguais, o resultado é 0
        else
            r[i_f] = 1  -- Se os bits forem diferentes, o resultado é 1
        end
    end

    -- Converte o resultado de volta para decimal como um número negativo (se necessário)
    return self:b2d(r, true)
end

-- Tabela de funções para decodificar caracteres UTF-8
local switch = {
    -- Função para decodificar caracteres de 1 byte
    [1] = function(s, pos)
        local c1 = toby(s, pos)  -- Lê o primeiro byte
        return c1  -- Retorna o valor do primeiro byte como o código Unicode
    end,

    -- Função para decodificar caracteres de 2 bytes
    [2] = function(s, pos)
        local c1 = toby(s, pos)  -- Lê o primeiro byte
        local c2 = toby(s, pos + 1)  -- Lê o segundo byte
        local int1 = bit:_and(31, c1)  -- Obtém os 5 bits mais baixos do primeiro byte
        local int2 = bit:_and(63, c2)  -- Obtém os 6 bits mais baixos do segundo byte
        local unicode = bit:_or(bit:_lshift(int1, 6), int2)  -- Combina os bits para obter o código Unicode
        return unicode  -- Retorna o código Unicode do caractere
    end,

    -- Função para decodificar caracteres de 3 bytes
    [3] = function(s, pos)
        local c1 = toby(s, pos)  -- Lê o primeiro byte
        local c2 = toby(s, pos + 1)  -- Lê o segundo byte
        local c3 = toby(s, pos + 2)  -- Lê o terceiro byte
        local int1 = bit:_and(15, c1)  -- Obtém os 4 bits mais baixos do primeiro byte
        local int2 = bit:_and(63, c2)  -- Obtém os 6 bits mais baixos do segundo byte
        local int3 = bit:_and(63, c3)  -- Obtém os 6 bits mais baixos do terceiro byte
        local o2 = bit:_or(bit:_lshift(int1, 12), bit:_lshift(int2, 6))  -- Combina os bits para obter a primeira parte do código Unicode
        local unicode = bit:_or(o2, int3)  -- Combina os bits para obter o código Unicode completo
        return unicode  -- Retorna o código Unicode do caractere
    end,

    -- Função para decodificar caracteres de 4 bytes
    [4] = function(s, pos)
        local c1 = toby(s, pos)  -- Lê o primeiro byte
        local c2 = toby(s, pos + 1)  -- Lê o segundo byte
        local c3 = toby(s, pos + 2)  -- Lê o terceiro byte
        local c4 = toby(s, pos + 3)  -- Lê o quarto byte
        local int1 = bit:_and(15, c1)  -- Obtém os 4 bits mais baixos do primeiro byte
        local int2 = bit:_and(63, c2)  -- Obtém os 6 bits mais baixos do segundo byte
        local int3 = bit:_and(63, c3)  -- Obtém os 6 bits mais baixos do terceiro byte
        local int4 = bit:_and(63, c4)  -- Obtém os 6 bits mais baixos do quarto byte
        local o2 = bit:_or(bit:_lshift(int1, 18), bit:_lshift(int2, 12))  -- Combina os bits para obter a primeira parte do código Unicode
        local o3 = bit:_or(o2, bit:_lshift(int3, 6))  -- Combina os bits para obter a segunda parte do código Unicode
        local unicode = bit:_or(o3, int4)  -- Combina os bits para obter o código Unicode completo
        return unicode  -- Retorna o código Unicode do caractere
    end
}

-- Função para realizar a operação NOT bit a bit em um número binário
function bit:_bnot(op1)
    local r = {}
    for i_b = 1, 32 do
        if op1[i_b] == 1 then
            r[i_b] = 0
        else
            r[i_b] = 1
        end
    end
    return r
end

-- Função para realizar a operação NOT bit a bit em um número decimal
function bit:_not(a)
    local op1 = self:d2b(a)
    local r = self:_bnot(op1)
    return self:b2d(r, true)
end

-- Função para obter os valores de código UTF-16 de uma string UTF-8
function bit:charCodeAt(s)
    if s then
        local pos, int, H, L = 1, 0, 0, 0
        local slen = string.len(s)
        local allByte = {}

        while pos <= slen do
            local tLen = utf8.charbytes(s, pos)

            if tLen >= 1 and tLen <= 4 then
                if tLen == 4 then
                    int = switch[4](s, pos)
                    H = math.floor((int - 65536) / 1024) + 55296
                    L = (int - 65536) % 1024 + 56320
                    table.insert(allByte, H)
                    table.insert(allByte, L)
                else
                    int = switch[tLen](s, pos)
                    table.insert(allByte, int)
                end
            end

            pos = pos + tLen
        end

        return allByte
    else
        -- Trate o caso em que s é nulo
        return nil -- ou retorne algo apropriado
    end
end

-- Função para realizar uma operação de deslocamento à direita (RShift) em um número
function bit:_rshift(a, n)
    local r = 0
    if a < 0 then
        r = 0 - self:_frshift(0 - a, n)
    elseif a >= 0 then
        r = self:_frshift(a, n)
    end
    return r
end

-- Função para realizar uma operação de deslocamento à direita sem sinal (FRShift) em um número
function bit:_frshift(a, n)
    local op1 = self:d2b(a)
    local r = self:d2b(0)
    local left = 32 - n
    if n < 32 and n > 0 then
        for i_f = left, 1, -1 do
            r[i_f + n] = op1[i_f]
        end
    end
    return self:b2d(r)
end

-- Função para realizar uma operação de deslocamento à esquerda (LShift) em um número
function bit:_lshift(a, n)
    local op1 = self:d2b(a)
    local r = self:d2b(0)
    if n < 32 and n > 0 then
        for i_d = n, 31 do
            r[i_d - n + 1] = op1[i_d + 1]
        end
    end
    return self:b2d(r, true)
end

-- Função para remover espaços em branco no início e no fim de uma string
function trim(s)
    return s:match("^%s*(.*)"):match("(.-)%s*$")
end

-- Tabela para manipulação de JSON (pode ser expandida conforme necessário)
local json = {}

-- Função para determinar o tipo de objeto (tabela ou array)
local kind_of = function(obj)
    if type(obj) ~= "table" then
        return type(obj)
    end

    local i = 1
    for i_a in pairs(obj) do
        if obj[i] ~= nil then
            i = i + 1
        else
            return "table"
        end
    end

    if i == 1 then
        return "table"
    end

    return "array"
end
 
-- Função para escapar caracteres especiais em uma string JSON
local escape_str = function(s)
    local in_char = {
        "\\",
        "\"",
        "/",
        "\b",
        "\f",
        "\n",
        "\r",
        "\t"
    }
    local out_char = {
        "\\",
        "\"",
        "/",
        "b",
        "f",
        "n",
        "r",
        "t"
    }
    for i_b, i_c in ipairs(in_char) do
        s = s:gsub(i_c, "\\" .. out_char[i_b])
    end
    return s
end

-- Função para pular delimitadores em uma string JSON
local skip_delim = function(str, pos, delim, err_if_missing)
    pos = pos + #str:match("^%s*", pos)
    if str:sub(pos, pos) ~= delim then
        if err_if_missing then
            error("Esperado " .. delim .. " na posição próxima " .. pos)
        end
        return pos, false
    end
    return pos + 1, true
end

-- Função para analisar o valor de uma string JSON
local function parse_str_val(str, pos, val)
    val = val or ""
    local early_end_error = "Fim da entrada encontrado durante a análise da string."
    if pos > #str then
        error(early_end_error)
    end
    local c = str:sub(pos, pos)
    if c == "\"" then
        return val, pos + 1
    end
    if c ~= "\\" then
        return parse_str_val(str, pos + 1, val .. c)
    end
    local esc_map = {
        b = "\b",
        f = "\f",
        n = "\n",
        r = "\r",
        t = "\t"
    }

-- Continuação da função para analisar o valor de uma string JSON
    local nextc = str:sub(pos + 1, pos + 1)
    if not nextc then
        error(early_end_error)
    end
    return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

-- Função para analisar um valor numérico em uma string JSON
local parse_num_val = function(str, pos)
    local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
    local val = tonumber(num_str)
    if not val then
        error("Erro ao analisar o número na posição " .. pos .. ".")
    end
    return val, pos + #num_str
end

-- Função para converter um objeto Lua em uma string JSON
function json.stringify(obj, as_key)
    local s = {}
    local kind = kind_of(obj)
    
    if kind == "array" then
        if as_key then
            error("Não é possível codificar um array como chave.")
        end

        s[#s + 1] = "["
        for i_c, i_d in ipairs(obj) do
            if i_c > 1 then
                s[#s + 1] = ", "
            end
            s[#s + 1] = json.stringify(i_d)
        end
        s[#s + 1] = "]"
    elseif kind == "table" then
        if as_key then
            error("Não é possível codificar uma tabela como chave.")
        end

        s[#s + 1] = "{"
        for i_c, i_d in pairs(obj) do
            if #s > 1 then
                s[#s + 1] = ", "
            end
            s[#s + 1] = json.stringify(i_c, true)
            s[#s + 1] = ":"
            s[#s + 1] = json.stringify(i_d)
        end
        s[#s + 1] = "}"
    else
        if kind == "string" then
            return "\"" .. escape_str(obj) .. "\""
        elseif kind == "number" then
            if as_key then
                return "\"" .. tostring(obj) .. "\""
            else
                return tostring(obj)
            end
        elseif kind == "boolean" then
            return tostring(obj)
        elseif kind == "nil" then
            return "null"
        else
            error("Tipo não suportado para conversão em JSON: " .. kind .. ".")
        end
    end

    return table.concat(s)
end

-- Define a constante json.null
json.null = {}

-- Função que analisa uma string JSON e a converte em uma tabela Lua
function json.parse(str, pos, end_delim)
    -- Inicializa a posição de análise (ou utiliza 1 como padrão)
    pos = pos or 1
    
    -- Verifica se a posição é maior que o comprimento da string
    if pos > #str then
        error("Atingiu o fim inesperado da entrada")
    end
    
    -- Remove espaços em branco iniciais e atualiza a posição
    local pos = pos + #str:match("^%s*", pos)
    
    -- Obtém o primeiro caractere da posição atual
    local first = str:sub(pos, pos)
    
    -- Verifica o tipo de estrutura JSON com base no primeiro caractere
    if first == "{" then
        -- Inicializa uma tabela para um objeto JSON
        local obj, key, delim_found = {}, true, true
        
        -- Avança um caractere para dentro do objeto
        pos = pos + 1
        
        -- Inicia um loop para analisar os pares chave-valor do objeto
        while true do
            -- Chama recursivamente a função para analisar a chave
            key, pos = json.parse(str, pos, "}")
            
            -- Se a chave for nula, indica o fim do objeto JSON
            if key == nil then
                return obj, pos
            end
            
            -- Verifica se a vírgula está presente entre os itens do objeto
            if not delim_found then
                error("Vírgula faltando entre os itens do objeto.")
            end
            
            -- Avança para analisar o valor correspondente
            pos = skip_delim(str, pos, ":", true)
            obj[key], pos = json.parse(str, pos)
            
            -- Atualiza a posição e indica se uma vírgula foi encontrada
            pos, delim_found = skip_delim(str, pos, ",")
        end
    elseif first == "[" then
        -- Inicializa uma tabela para um array JSON
        local arr, val, delim_found = {}, true, true
        
        -- Avança um caractere para dentro do array
        pos = pos + 1
        
        -- Inicia um loop para analisar os elementos do array
        while true do
            -- Chama recursivamente a função para analisar o valor do elemento
            val, pos = json.parse(str, pos, "]")
            
            -- Se o valor for nulo, indica o fim do array JSON
            if val == nil then
                return arr, pos
            end
            
            -- Verifica se a vírgula está presente entre os elementos do array
            if not delim_found then
                error("Falta vírgula entre os itens do array.")
            end
            
            -- Adiciona o valor ao array
            arr[#arr + 1] = val
            
            -- Atualiza a posição e indica se uma vírgula foi encontrada
            pos, delim_found = skip_delim(str, pos, ",")
        end
    elseif first == "\"" then
        -- Chama a função para analisar uma string JSON
        do return parse_str_val(str, pos + 1) end
        return
    elseif first == "-" or first:match("%d") then
        -- Chama a função para analisar um valor numérico JSON
        do return parse_num_val(str, pos) end
        return
    elseif first == end_delim then
        -- Retorna nulo e avança para a próxima posição
        do return nil, pos + 1 end
        return
    else
        -- Inicializa uma tabela de literais JSON
        local literals = {
            ["true"] = true,
            ["false"] = false,
            null = json.null
        }
        
        -- Verifica se o primeiro caractere corresponde a um literal JSON
        do
            do
                for i_f, i_e in pairs(literals) do
                    local lit_end = pos + #i_f - 1
                    if str:sub(pos, lit_end) == i_f then
                        return i_e, lit_end + 1
                    end
                end
            end
        end
        
        -- Se nenhum literal for correspondido, gera um erro
        local pos_info_str = "posição " .. pos .. ": " .. str:sub(pos, pos + 10)
        error("sem choro " .. pos_info_str)
    end
end

-- Função para codificar uma string em binário
function enc(data, b)
    -- Inicializa uma variável para armazenar o resultado
    return (data:gsub(".", function(x)
        -- Inicializa uma variável 'r' para armazenar o resultado para cada caractere 'x'
        local r = ""
        -- Obtém o valor ASCII do caractere 'x'
        local byte = x:byte()
        
        -- Converte o valor ASCII para uma representação binária de 8 bits
        for i_b = 8, 1, -1 do
            -- Adiciona '1' ou '0' a 'r' com base nos bits do valor ASCII
            r = r .. (byte % 2 ^ i_b - byte % 2 ^ (i_b - 1) > 0 and "1" or "0")
        end
        
        -- Retorna a representação binária do caractere 'x'
        return r
    end
    ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
        -- Verifica se a sequência 'x' tem pelo menos 6 caracteres
        if #x < 6 then
            return ""
        end
        
        -- Inicializa uma variável 'c' para calcular o valor decimal
        local c = 0
        
        -- Converte a sequência binária de 6 bits de volta para decimal
        for i_a = 1, 6 do
            c = c + (x:sub(i_a, i_a) == "1" and 2 ^ (6 - i_a) or 0)
        end
        
        -- Retorna o caractere correspondente ao valor decimal 'c' em 'b'
        return b:sub(c + 1, c + 1)
    end
    ) .. ({
      "",
      "??",
      "?"
    })[#data % 3 + 1]
end

-- Função para decodificar uma sequência binária
function dec(data, b)
    -- Remove caracteres que não estão presentes em 'b'
    data = string.gsub(data, "[^" .. b .. "=]", "")
    
    -- Inicializa uma variável para armazenar o resultado
    return (data:gsub(".", function(x)
        -- Verifica se o caractere é '?', que é usado para preenchimento
        if x == "?" then
            return ""
        end
        -- Inicializa uma variável 'r' para armazenar o resultado para cada caractere 'x'
        local r = ""
        -- Encontra a posição do caractere 'x' em 'b'
        local f = b:find(x) - 1
        
        -- Converte a posição 'f' para uma representação binária de 6 bits
        for i_b = 6, 1, -1 do
            r = r .. (f and f % 2 ^ i_b - f % 2 ^ (i_b - 1) > 0 and "1" or "0") or ""
        end
        
        -- Adiciona a representação binária de 'x' a 'result'
        return r
    end
    ):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
        -- Verifica se a sequência 'x' tem exatamente 8 caracteres
        if #x ~= 8 then
            return ""
        end
        
        -- Inicializa uma variável 'c' para calcular o valor decimal
        local c = 0
        
        -- Converte a sequência binária de 8 bits de volta para decimal
        for i_a = 1, 8 do
            c = c + (x:sub(i_a, i_a) == "1" and 2 ^ (8 - i_a) or 0)
        end
        
        -- Verifica se 'c' é um número válido (menor que 256) e retorna o caractere correspondente
        return type(c) == "number" and c < 256 and string.char(c) or ""
    end
    ))
end

-- Função x9 recebe uma chave (key) e dados hexadecimais (data) como entrada.
function x9(key, data)
    -- Verifica se a chave e os dados são válidos
    if key == nil or data == nil or type(key) ~= "string" or type(data) ~= "string" then
        return nil  -- Se os dados não forem válidos, retorne nil
    end

    -- Variáveis para armazenar os dados intermediários e o resultado final
    local preData, result = "", ""

    -- Converte a chave em valores numéricos usando a função bit:charCodeAt
    local bit_key = bit:charCodeAt(key)

    -- Converte dados hexadecimais em bytes
    local c = 0
    local c2 = 1
    while c < #data do
        -- Verifica se há pelo menos dois caracteres para converter
        if c2 + 1 <= #data then
            -- Converte pares de caracteres hexadecimais em bytes e adiciona à preData
            local hexByte = tonumber(string.sub(data, c2, c2 + 1), 16)

            -- Verifica se a conversão do byte foi bem-sucedida
            if hexByte ~= nil and type(hexByte) == "number" then
                preData = preData .. string.char(hexByte)
            end

            c = c + 2
            c2 = c2 + 2
        else
            break  -- Saia do loop se não houver pares de caracteres suficientes
        end
    end

    -- Se a conversão de dados hexadecimais foi bem-sucedida, continue
    if #preData > 0 then
        -- Converte os bytes da preData em valores numéricos usando a função bit:charCodeAt
        local bit_data = bit:charCodeAt(preData)

        -- Aplica a operação XOR byte a byte entre preData e a chave
        local a = 0
        local b = 0
        while a < #preData do
            if b >= #key then
                b = 0
            end

            a = a + 1
            b = b + 1
            local xor = bit:_xor(bit_data[a], bit_key[b])

            -- Verifica se o resultado do XOR é válido e menor que 256 antes de adicioná-lo ao resultado final
            if xor ~= nil and type(xor) == "number" and xor < 256 then
                result = result .. string.char(xor)
            end
        end

        -- Retorna o resultado final
        return result
    end

    return nil  -- Se a conversão dos dados hexadecimais falhar, retorne nil
end

-- Função para verificar se uma string contém apenas caracteres imprimíveis
function isPrintable(s)
    for i = 1, #s do
        local char = s:sub(i, i)
        -- Verifica se o caractere não é um caractere de controle não imprimível
        if char < " " or char > "~" then
            return false
        end
    end
    return true
end

-- Função x9_xEhi recebe um "salt" (valor de sal) e dados como entrada.
function x9_xEhi(salt, data)
    data = dec(string.reverse(data), "RkLC2QaVMPYgGJW/A4f7qzDb9e+t6Hr0Zp8OlNyjuxKcTw1o5EIimhBn3UvdSFXs?")
    return x9(salt, string.sub(data, 1, #data))
  end
  
  -- Função x9_xEhil recebe um "salt" (valor de sal) e dados como entrada.
  function x9_xEhil(salt, data)
    data = dec(string.reverse(data), "t6uxKcTwhBn3UvRkLC2QaVM1o5A4f7Hr0Zp8OyjqzDb9e+dSFXsEIimPYgGJW/lN?")
    return x9(salt, string.sub(data, 1, #data))
  end
  
-- Função x9openEhi recebe um "salt" (valor de sal) e dados como entrada.
function x9openEhi(salt, data)
    -- Verifica se o tipo de "data" é uma string
    if type(data) == "string" then
        -- Inverte a string "data" e decodifica usando a função "dec" com uma chave específica
        data = dec(string.reverse(data), "RkLC2QaVMPYgGJW/A4f7qzDb9e+t6Hr0Zp8OlNyjuxKcTw1o5EIimhBn3UvdSFXs?", "?")
        
        -- Verifica se o valor decodificado é vazio ou contém caracteres não imprimíveis
        if not data or not isPrintable(data) then
            return "N/A"
        else
            -- Retorna o resultado da função "x9" aplicada ao "salt" e aos dados decodificados
            return x9(salt, string.sub(data, 1, #data))
        end
    else
        -- Trata o caso em que "data" não é uma string
        return "N/A"
    end
end

-- Função x9openEhil recebe um "salt" (valor de sal) e dados como entrada.
function x9openEhil(salt, data)
    -- Verifica se o tipo de "data" é uma string
    if type(data) == "string" then
        -- Inverte a string "data" e decodifica usando a função "dec" com uma chave específica
        data = dec(string.reverse(data), "t6uxKcTwhBn3UvRkLC2QaVM1o5A4f7Hr0Zp8OyjqzDb9e+dSFXsEIimPYgGJW/lN?", "?")
        
        -- Verifica se o valor decodificado é vazio ou contém caracteres não imprimíveis
        if not data or not isPrintable(data) then
            return "N/A"
        else
            -- Retorna o resultado da função "x9" aplicada ao "salt" e aos dados decodificados
            return x9(salt, string.sub(data, 1, #data))
        end
    else
        -- Trata o caso em que "data" não é uma string
        return "N/A"
    end
end

-- Função para converter uma tabela Lua em uma representação JSON
function JSONStringify(table)
    -- Verifica se o argumento passado é uma tabela
    if type(table) ~= "table" then
        return "null" -- Se não for uma tabela, retorna "null" (valor JSON nulo)
    end

    -- Função interna para serializar uma tabela Lua em uma string JSON
    local function serialize(tbl)
        local result = {} -- Cria uma tabela vazia para armazenar os pares chave-valor JSON
        for k, v in pairs(tbl) do
            local key, value = "", ""

            -- Verifica o tipo da chave (deve ser número ou string)
            if type(k) == "number" then
                key = "[" .. k .. "]" -- Se for número, formata a chave entre colchetes
            elseif type(k) == "string" then
                key = '["' .. k .. '"]' -- Se for string, formata a chave entre aspas e colchetes
            else
                error("JSONStringify: Chaves de tabela devem ser números ou strings.") -- Erro se a chave não for número nem string
            end

            -- Verifica o tipo do valor e formata-o adequadamente
            if type(v) == "number" or type(v) == "boolean" then
                value = tostring(v) -- Números e booleanos são convertidos em strings simples
            elseif type(v) == "string" then
                value = '"' .. v .. '"' -- Strings são colocadas entre aspas duplas
            elseif type(v) == "table" then
                value = serialize(v) -- Se for uma tabela aninhada, chama a função de serialização recursivamente
            else
                error("JSONStringify: Tipos de valor não suportados.") -- Erro se o tipo de valor não for suportado
            end

            -- Concatena a chave e o valor formatados e adiciona-os à tabela de resultados
            table.insert(result, key .. ":" .. value)
        end
        -- Retorna a representação JSON da tabela completa, envolta por chaves
        return "{" .. table.concat(result, ",") .. "}"
    end

    -- Chama a função interna de serialização e retorna o resultado
    return serialize(table)
end

-- Variáveis globais ehi e configSalt para armazenar informações
local ehi, configSalt

-- Classe Http
local Http = {}

-- Função de inicialização da classe Http com os dados fornecidos
function Http:New(data)
  ehi = data

  -- Verifica se o "configSalt" nos dados é uma string vazia, nula ou não está presente
  if data and (data.configSalt == nil or data.configSalt == "") then
    configSalt = "EVZJNI"
  elseif data and data.configSalt then
    configSalt = data.configSalt
  else
    -- Define um valor padrão se o campo "configSalt" não existir nos dados
    configSalt = "EVZJNI"
  end
end

-- Função para decodificar um valor específico com base na versão da configuração
function Http:Dec(key)
    -- Verifica se ehi é uma tabela e configSalt está presente e não é vazio; caso contrário, usa um valor padrão
    local salt = (type(ehi) == "table" and ehi.configSalt and ehi.configSalt ~= "") and ehi.configSalt or "EVZJNI"

    if ehi and ehi.configVersionCode and ehi[key] then
        local configVersion = tonumber(ehi.configVersionCode)

        -- Verifica se as funções x9openEhi e x9openEhil estão definidas
        local decodeFunction
        if configVersion and configVersion == 14222 and x9openEhil then
            decodeFunction = x9openEhil
        elseif configVersion and configVersion >= 49 and configVersion <= 1000 and x9openEhi then
            decodeFunction = x9openEhi
        else
            -- Use x9openEhil como padrão se a versão não estiver nos intervalos desejados ou se as funções não estiverem definidas
            decodeFunction = x9openEhil
        end

        -- Tenta decodificar usando a função apropriada
        local decodedValue = decodeFunction(salt, ehi[key])

        -- Verifica se o valor decodificado é válido
        if decodedValue and decodedValue ~= "" and decodedValue ~= "N/A" then
            return decodedValue
        else
            -- Se o valor decodificado não for válido, retorna o valor original
            return ehi[key]
        end
    else
        -- Usa x9openEhil como padrão se ehi ou ehi.configVersionCode não estiverem presentes
        return x9openEhil and x9openEhil(salt, ehi and ehi[key]) or "primeiro as primas"
    end
end

-- Função para verificar se um valor está incluído em uma tabela
local includes = function(tab, val)
    for i_a, i_b in ipairs(tab) do
        if i_b == val then
            return true -- Retorna verdadeiro se o valor for encontrado na tabela
        end
    end
    return false -- Retorna falso se o valor não for encontrado na tabela
end

-- Carrega o módulo JSON
local math = require('math')
local string = require("string")
local table = require("table")

-- Declaração do módulo
local json = {}             -- Namespace público
local json_private = {}     -- Namespace privado

-- Constantes públicas
json.EMPTY_ARRAY={}
json.EMPTY_OBJECT={}

-- Funções públicas

-- Funções privadas
local decode_scanArray
local decode_scanComment
local decode_scanConstant
local decode_scanNumber
local decode_scanObject
local decode_scanString
local decode_scanWhitespace
local encodeString
local isArray
local isEncodable

-- Funções Públicas

--- Codifica um objeto/variável Lua arbitrário.
-- @param v O objeto/variável Lua a ser codificado em JSON.
-- @return String contendo a codificação JSON no formato interno de string Lua (ou seja, não unicode)
function json.encode (v)
-- Lidar com valores nulos (nil)
if v==nil then
return "null"
end

local vtype = type(v)

-- Lidar com strings
if vtype=='string' then
return '"' .. json_private.encodeString(v) .. '"'	    -- Precisa lidar com a codificação em string
end

-- Lidar com booleans
if vtype=='number' or vtype=='boolean' then
return tostring(v)
end

-- Lidar com tabelas
if vtype=='table' then
local rval = {}
-- Considere matrizes (arrays) separadamente
local bArray, maxCount = isArray(v)
if bArray then
for i = 1,maxCount do
table.insert(rval, json.encode(v[i]))
end
else	-- Um objeto, não um array
for i,j in pairs(v) do
if isEncodable(i) and isEncodable(j) then
table.insert(rval, '"' .. json_private.encodeString(i) .. '":' .. json.encode(j))
end
end
end
if bArray then
return '[' .. table.concat(rval,',') ..']'
else
return '{' .. table.concat(rval,',') .. '}'
end
end

-- Lidar com valores nulos (null)
if vtype=='function' and v==json.null then
return 'null'
end

assert(false,'codificar tentativa de codificar tipo não suportado ' .. vtype .. ':' .. tostring(v))
end

--- Decodifica uma string JSON e retorna o valor decodificado como uma estrutura/valor de dados Lua.
-- @param s A string a ser varrida, escaneada
-- @param [startPos] Posição inicial opcional onde a string JSON está localizada. O padrão é 1.
-- @param Objeto Lua, número O objeto que foi verificado, como uma tabela Lua / string / número / booleano ou nulo (boolean ou nil), e a posição do primeiro caractere após o objeto JSON verificado.
function json.decode(s, startPos)
startPos = startPos and startPos or 1
startPos = decode_scanWhitespace(s,startPos)
assert(startPos<=string.len(s), 'Objeto codificado JSON não terminado encontrado na posição em [' .. s .. ']')
local curChar = string.sub(s,startPos,startPos)
-- Object
if curChar=='{' then
return decode_scanObject(s,startPos)
end
-- Array
if curChar=='[' then
return decode_scanArray(s,startPos)
end
-- Number
if string.find("+-0123456789.e", curChar, 1, true) then
return decode_scanNumber(s,startPos)
end
-- String
if curChar==[["]] or curChar==[[']] then
return decode_scanString(s,startPos)
end
if string.sub(s,startPos,startPos+1)=='/*' then
return json.decode(s, decode_scanComment(s,startPos))
end
-- Caso contrário, deve ser uma constante
return decode_scanConstant(s,startPos)
end

--- A função nula permite especificar um valor nulo em uma matriz associativa (que de outra forma é descartado se você definir o valor como 'nil' em Lua. Simplesmente set t = { first=json.null }
function json.null()
return json.null -- então json.null() também retornará nulo
end
-- Internal, PRIVATE functions.
-- Seguindo uma convenção semelhante ao Python, prefixei todos esses 'PRIVATE'
-- funções com um sublinhado.

--- Verifica um array de JSON em um objeto Lua
-- startPos começa no início do array.
-- Retorna o array e a próxima posição inicial
-- @param s A string que está sendo verificada.
-- @param startPos A posição inicial da varredura, do scan.
-- @return table, int A matriz digitalizada como uma tabela e a posição do próximo caractere a ser digitalizado.
function decode_scanArray(s,startPos)
local array = {}	-- O valor de retorno
local stringLen = string.len(s)
assert(string.sub(s,startPos,startPos)=='[','decode_scanArray chamado, mas o array não começa na posição ' .. startPos .. ' na string:\n'..s )
startPos = startPos + 1
-- Loop infinito para elementos do array
local index = 1
repeat
startPos = decode_scanWhitespace(s,startPos)
assert(startPos<=stringLen,'JSON String terminou inesperadamente a varredura da matriz.')
local curChar = string.sub(s,startPos,startPos)
if (curChar==']') then
return array, startPos+1
end
if (curChar==',') then
startPos = decode_scanWhitespace(s,startPos+1)
end
assert(startPos<=stringLen, 'JSON String terminou inesperadamente a varredura da matriz.')
object, startPos = json.decode(s,startPos)
array[index] = object
index = index + 1
until false
end

--- Verifica um comentário e descarta o comentário.
-- Retorna a posição do próximo caractere após o comentário.
-- @param string s A string JSON a ser varrida, escaneada.
-- @param int startPos A posição inicial do comentário
function decode_scanComment(s, startPos)
assert( string.sub(s,startPos,startPos+1)=='/*', "decode_scanComment chamado, mas o comentário não começa na posição " .. startPos)
local endPos = string.find(s,'*/',startPos+2)
assert(endPos~=nil, "Comentário não terminado na string em " .. startPos)
return endPos+2
end

-- Verifica constantes fornecidas: true, false ou null
-- Retorna o tipo Lua apropriado e a posição do próximo caractere a ser lido.
-- @param s A string que está sendo verificada, escaneada.
-- @param startPos A posição na string na qual iniciar a varredura, ao scan.
-- @return object, int O objeto (true, false ou nil) e a posição na qual o próximo caractere deve estar digitalizado.
function decode_scanConstant(s, startPos)
local consts = { ["true"] = true, ["false"] = false, ["null"] = nil }
local constNames = {"true","false","null"}

for i,k in pairs(constNames) do
if string.sub(s,startPos, startPos + string.len(k) -1 )==k then
return consts[k], startPos + string.len(k)
end
end
assert(nil, 'Falha ao verificar a constante da string ' .. s .. ' na posição inicial ' .. startPos)
end

-- Verifica um número da string codificada em JSON, também é capaz de digitalizar +- eqns numéricos, o que não é na especificação JSON.
-- Retorna o número e a posição do próximo caractere depois do número.
-- @param s A string que está sendo verificada, escaneada.
-- @param startPos A posição na qual iniciar a digitalização, ao scan.
-- @return number, in O número da extração e a posição do próximo caractere a ser digitalizado, escaneado.
function decode_scanNumber(s,startPos)
local endPos = startPos+1
local stringLen = string.len(s)
local acceptableChars = "+-0123456789.e"
while (string.find(acceptableChars, string.sub(s,endPos,endPos), 1, true)
and endPos<=stringLen
) do
endPos = endPos + 1
end
local stringValue = 'return ' .. string.sub(s,startPos, endPos-1)
local stringEval = load(stringValue)
assert(stringEval, 'Falha ao digitalizar o número [ ' .. stringValue .. '] na string JSON na posição ' .. startPos .. ' : ' .. endPos)
return stringEval(), endPos
end

-- Verifica um objeto JSON em um objeto Lua.
-- startPos começa no início do objeto.
-- Retorna o objeto e a próxima posição inicial.
-- @param s A string que está sendo verificada, escaneada.
-- @param startPos A posição inicial da varredura.
-- @return table, int O objeto digitalizado como uma tabela e a posição do próximo caractere a ser digitalizado, escaneado
function decode_scanObject(s,startPos)
local object = {}
local stringLen = string.len(s)
local key, value
assert(string.sub(s,startPos,startPos)=='{','decode_scanObject chamado, mas o objeto não começa na posição ' .. startPos .. ' na string:\n' .. s)
startPos = startPos + 1
repeat
startPos = decode_scanWhitespace(s,startPos)
assert(startPos<=stringLen, 'JSON string terminou inesperadamente durante a verificação do objeto.')
local curChar = string.sub(s,startPos,startPos)
if (curChar=='}') then
return object,startPos+1
end
if (curChar==',') then
startPos = decode_scanWhitespace(s,startPos+1)
end
assert(startPos<=stringLen, 'JSON string terminou inesperadamente a verificação do objeto.')
-- Digitaliza, escaneia a chave
key, startPos = json.decode(s,startPos)
assert(startPos<=stringLen, 'JSON string terminou inesperadamente procurando pelo valor da chave ' .. key)
startPos = decode_scanWhitespace(s,startPos)
assert(startPos<=stringLen, 'JSON string terminou inesperadamente procurando pelo valor da chave ' .. key)
assert(string.sub(s,startPos,startPos)==':','JSON object key-value tarefa mal formada em ' .. startPos)
startPos = decode_scanWhitespace(s,startPos+1)
assert(startPos<=stringLen, 'JSON string terminou inesperadamente procurando pelo valor da chave ' .. key)
value, startPos = json.decode(s,startPos)
object[key]=value
until false	-- loop infinito enquanto pares de valores-chave são encontrados
end

-- INICIAR SoniEx2
-- Inicialize algumas coisas usadas por decode_scanString
-- Seja mais específico, Bob
local escapeSequences = {
["\\t"] = "\t",
["\\f"] = "\f",
["\\r"] = "\r",
["\\n"] = "\n",
["\\b"] = "\b"
}
setmetatable(escapeSequences, {__index = function(t,k)
-- pular "\" também conhecido como strip escape
return string.sub(k,2)
end}) -- FIM SoniEx2

--- Verifica uma string JSON desde a vírgula invertida ou aspas simples de abertura até o fim da string.
-- Retorna a string extraída como uma string Lua, e a posição do próximo caractere não-string (após a vírgula invertida ou aspas simples de fechamento).
-- @param s A string que está sendo verificada.
-- @param startPos A posição inicial da varredura.
-- @return string, int A string extraída como uma string Lua e o próximo caractere a ser analisado.
function decode_scanString(s,startPos)
assert(startPos, 'decode_scanString(..) chamado sem posição inicial')
local startChar = string.sub(s,startPos,startPos) -- INICIAR SoniEx2

-- Você acredita que aspas simples sejam um JSON válido?
assert(startChar == [["]] or startChar == [[']],'decode_scanString pediu um non-string')

--assert(startPos, "Falha na decodificação da string: falta de fechamento " .. startChar .. " para string na posição " .. oldStart)
local t = {}
local i,j = startPos,startPos
while string.find(s, startChar, j+1) ~= j+1 do
local oldj = j
i,j = string.find(s, "\\.", j+1)
local x,y = string.find(s, startChar, oldj+1)
if not i or x < i then
i,j = x,y-1
end
table.insert(t, string.sub(s, oldj+1, i-1))
if string.sub(s, i, j) == "\\u" then
local a = string.sub(s,j+1,j+4)
j = j + 4
local n = tonumber(a, 16)
assert(n, "Falha na decodificação de string: incorreto Unicode escape " .. a .. " na posição " .. i .. " : " .. j)
-- math.floor(x/2^y) == lazy right shift
-- a % 2^b == bitwise_and(a, (2^b)-1)
-- 64 = 2^6
-- 4096 = 2^12 (or 2^6 * 2^6)
local x
if n < 0x80 then
x = string.char(n % 0x80)
elseif n < 0x800 then
-- [110x xxxx] [10xx xxxx]
x = string.char(0xC0 + (math.floor(n/64) % 0x20), 0x80 + (n % 0x40))
else
-- [1110 xxxx] [10xx xxxx] [10xx xxxx]
x = string.char(0xE0 + (math.floor(n/4096) % 0x10), 0x80 + (math.floor(n/64) % 0x40), 0x80 + (n % 0x40))
end
table.insert(t, x)
else
table.insert(t, escapeSequences[string.sub(s, i, j)])
end
end
table.insert(t,string.sub(j, j+1))
assert(string.find(s, startChar, j+1), "Falha na decodificação da string: falta de fechamento " .. startChar .. " na posição " .. j .. "(para string na posição " .. startPos .. ")")
return table.concat(t,""), j+2
-- FIM SoniEx2
end

--- Verifica uma string JSON ignorando todos os espaços em branco da posição inicial atual.
-- Retorna a posição do primeiro caractere que não seja espaço em branco ou nulo (nil) se todo o final da string for atingido.
-- @param s A string que está sendo verificada, escaneada
-- @param startPos A posição inicial onde devemos começar a remover os espaços em branco.
-- @return int A primeira posição onde não foi encontrado espaço em branco, ou string.len(s)+1 se for o final da string alcançada
function decode_scanWhitespace(s,startPos)
local whitespace=" \n\r\t"
local stringLen = string.len(s)
while ( string.find(whitespace, string.sub(s,startPos,startPos), 1, true)  and startPos <= stringLen) do
startPos = startPos + 1
end
return startPos
end

-- Codifica uma string para ser compatível com JSON.
-- Isso envolve apenas aspas invertidas, aspas invertidas e novas linhas, talvez
-- @param s A string a ser retornada como uma string codificada em JSON (ou seja, string entre aspas)
-- @return A escape de String apropriada

local escapeList = {
['"']  = '\\"',
['\\'] = '\\\\',
['/']  = '\\/',
['\b'] = '\\b',
['\f'] = '\\f',
['\n'] = '\\n',
['\r'] = '\\r',
['\t'] = '\\t'
}

function json_private.encodeString(s)
local s = tostring(s)
return s:gsub(".", function(c) return escapeList[c] end) -- SoniEx2: compatibilidade com 5.0
end

-- Determina se o tipo Lua fornecido é um array ou uma tabela/dicionário.
-- Consideramos qualquer tabela um array se ela tiver índices 1..n para seus n itens, e não outros dados na tabela. Esse método é bobo, é o que temos pra hoje.
-- @param t A tabela a ser avaliada como um array
-- @return boolean, number true se a tabela puder ser representada como um array, false caso contrário. Se for true, o segundo valor retornado é o máximo número de elementos indexados na matriz.
function isArray(t)
-- Em seguida contamos todos os elementos, garantindo que quaisquer elementos não indexados não sejam codificáveis (com a possível exceção de 'n')
if (t == json.EMPTY_ARRAY) then return true, 0 end
if (t == json.EMPTY_OBJECT) then return false end

local maxIndex = 0
for k,v in pairs(t) do
if (type(k)=='number' and math.floor(k)==k and 1<=k) then	-- k,v é um par indexado
if (not isEncodable(v)) then return false end	-- Todos os elementos da matriz devem ser codificáveis
maxIndex = math.max(maxIndex,k)
else
if (k=='n') then
if v ~= (t.n or #t) then return false end  -- false se n não contém o número de elementos
else -- Mais de (k=='n')
if isEncodable(v) then return false end
end  -- Fim do (k~='n')
end -- Fim de k,v não é um par indexado
end  -- Fim do loop em todos os pares
return true, maxIndex
end

-- Determina se o objeto/tabela/variável Lua fornecido pode ser codificado em JSON. A única dos tipos que podem ser codificados em JSON são: string, boolean, number, nil, table e json.null. Nesta implementação, todos os outros tipos são ignorados.
-- @param o O objeto a ser examinado.
-- @return boolean true se o objeto deve ser codificado em JSON, false se deve ser ignorado.
function isEncodable(o)
local t = type(o)
return (t=='string' or t=='boolean' or t=='number' or t=='nil' or t=='table') or
(t=='function' and o==json.null)
end

-- Carrega o módulo JSON com exemplo fuleiro do dkjson
local function dkjson()
-- Opções de módulo:
local always_use_lpeg = false
local register_global_module_table = false
local global_module_name = 'json'

-- dependências globais:
local pairs, type, tostring, tonumber, getmetatable, setmetatable, rawset =
      pairs, type, tostring, tonumber, getmetatable, setmetatable, rawset
local error, require, pcall, select = error, require, pcall, select
local floor, huge = math.floor, math.huge
local strrep, gsub, strsub, strbyte, strchar, strfind, strlen, strformat =
      string.rep, string.gsub, string.sub, string.byte, string.char,
      string.find, string.len, string.format
local strmatch = string.match
local concat = table.concat

local json = { version = "dkjson 2.6" }

local jsonlpeg = {}

if register_global_module_table then
  if always_use_lpeg then
    _G[global_module_name] = jsonlpeg
  else
    _G[global_module_name] = json
  end
end

local _ENV = nil -- bloqueando globais em Lua 5.2 e posterior

pcall (function()
  -- Habilite o acesso a metatabelas bloqueadas. Não se preocupe, este módulo não muda nada neles.
  local debmeta = require "debug".getmetatable
  if debmeta then getmetatable = debmeta end
end)

json.null = setmetatable ({}, {
  __tojson = function () return "null" end
})

local function isarray (tbl)
  local max, n, arraylen = 0, 0, 0
  for k,v in pairs (tbl) do
    if k == 'n' and type(v) == 'number' then
      arraylen = v
      if v > max then
        max = v
      end
    else
      if type(k) ~= 'number' or k < 1 or floor(k) ~= k then
        return false
      end
      if k > max then
        max = k
      end
      n = n + 1
    end
  end
  if max > 10 and max > arraylen and max > n * 2 then
    return false -- não crie uma matriz com muitos buracos
  end
  return true, max
end

local escapecodes = {
  ["\""] = "\\\"", ["\\"] = "\\\\", ["\b"] = "\\b", ["\f"] = "\\f",
  ["\n"] = "\\n",  ["\r"] = "\\r",  ["\t"] = "\\t"
}

local function escapeutf8 (uchar)
  local value = escapecodes[uchar]
  if value then
    return value
  end
  local a, b, c, d = strbyte (uchar, 1, 4)
  a, b, c, d = a or 0, b or 0, c or 0, d or 0
  if a <= 0x7f then
    value = a
  elseif 0xc0 <= a and a <= 0xdf and b >= 0x80 then
    value = (a - 0xc0) * 0x40 + b - 0x80
  elseif 0xe0 <= a and a <= 0xef and b >= 0x80 and c >= 0x80 then
    value = ((a - 0xe0) * 0x40 + b - 0x80) * 0x40 + c - 0x80
  elseif 0xf0 <= a and a <= 0xf7 and b >= 0x80 and c >= 0x80 and d >= 0x80 then
    value = (((a - 0xf0) * 0x40 + b - 0x80) * 0x40 + c - 0x80) * 0x40 + d - 0x80
  else
    return ""
  end
  if value <= 0xffff then
    return strformat ("\\u%.4x", value)
  elseif value <= 0x10ffff then
    -- codificar como par substituto UTF-16
    value = value - 0x10000
    local highsur, lowsur = 0xD800 + floor (value/0x400), 0xDC00 + (value % 0x400)
    return strformat ("\\u%.4x\\u%.4x", highsur, lowsur)
  else
    return ""
  end
end

local function fsub (str, pattern, repl)
  -- gsub sempre cria uma nova string em um buffer, mesmo quando não há correspondência existe. Primeiro, usar find deve ser mais eficiente quando a maioria das strings
  -- não contém o padrão.
  if strfind (str, pattern) then
    return gsub (str, pattern, repl)
  else
    return str
  end
end

local function quotestring (value)
  -- regex "escapável" roubado 
  value = fsub (value, "[%z\1-\31\"\\\127]", escapeutf8)
  if strfind (value, "[\194\216\220\225\226\239]") then
    value = fsub (value, "\194[\128-\159\173]", escapeutf8)
    value = fsub (value, "\216[\128-\132]", escapeutf8)
    value = fsub (value, "\220\143", escapeutf8)
    value = fsub (value, "\225\158[\180\181]", escapeutf8)
    value = fsub (value, "\226\128[\140-\143\168-\175]", escapeutf8)
    value = fsub (value, "\226\129[\160-\175]", escapeutf8)
    value = fsub (value, "\239\187\191", escapeutf8)
    value = fsub (value, "\239\191[\176-\191]", escapeutf8)
  end
  return "\"" .. value .. "\""
end
json.quotestring = quotestring

local function replace(str, o, n)
  local i, j = strfind (str, o, 1, true)
  if i then
    return strsub(str, 1, i-1) .. n .. strsub(str, j+1, -1)
  else
    return str
  end
end

-- funções num2str e str2num independentes de localidade
local decpoint, numfilter

local function updatedecpoint ()
  decpoint = strmatch(tostring(0.5), "([^05+])")
  -- construir um filtro que possa ser usado para remover separadores de grupo
  numfilter = "[^0-9%-%+eE" .. gsub(decpoint, "[%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0") .. "]+"
end

updatedecpoint()

local function num2str (num)
  return replace(fsub(tostring(num), numfilter, ""), decpoint, ".")
end

local function str2num (str)
  local num = tonumber(replace(str, ".", decpoint))
  if not num then
    updatedecpoint()
    num = tonumber(replace(str, ".", decpoint))
  end
  return num
end

local function addnewline2 (level, buffer, buflen)
  buffer[buflen+1] = "\n"
  buffer[buflen+2] = strrep ("  ", level)
  buflen = buflen + 2
  return buflen
end

function json.addnewline (state)
  if state.indent then
    state.bufferlen = addnewline2 (state.level or 0,
                           state.buffer, state.bufferlen or #(state.buffer))
  end
end

local encode2 -- declaração de encaminhamento

local function addpair (key, value, prev, indent, level, buffer, buflen, tables, globalorder, state)
  local kt = type (key)
  if kt ~= 'string' and kt ~= 'number' then
    return nil, "type '" .. kt .. "' não é compatível como chave pelo JSON."
  end
  if prev then
    buflen = buflen + 1
    buffer[buflen] = ","
  end
  if indent then
    buflen = addnewline2 (level, buffer, buflen)
  end
  buffer[buflen+1] = quotestring (key)
  buffer[buflen+2] = ":"
  return encode2 (value, indent, level, buffer, buflen + 2, tables, globalorder, state)
end

local function appendcustom(res, buffer, state)
  local buflen = state.bufferlen
  if type (res) == 'string' then
    buflen = buflen + 1
    buffer[buflen] = res
  end
  return buflen
end

local function exception(reason, value, state, buffer, buflen, defaultmessage)
  defaultmessage = defaultmessage or reason
  local handler = state.exception
  if not handler then
    return nil, defaultmessage
  else
    state.bufferlen = buflen
    local ret, msg = handler (reason, value, state, defaultmessage)
    if not ret then return nil, msg or defaultmessage end
    return appendcustom(ret, buffer, state)
  end
end

function json.encodeexception(reason, value, state, defaultmessage)
  return quotestring("<" .. defaultmessage .. ">")
end

encode2 = function (value, indent, level, buffer, buflen, tables, globalorder, state)
  local valtype = type (value)
  local valmeta = getmetatable (value)
  valmeta = type (valmeta) == 'table' and valmeta -- only tables
  local valtojson = valmeta and valmeta.__tojson
  if valtojson then
    if tables[value] then
      return exception('reference cycle', value, state, buffer, buflen)
    end
    tables[value] = true
    state.bufferlen = buflen
    local ret, msg = valtojson (value, state)
    if not ret then return exception('custom encoder failed', value, state, buffer, buflen, msg) end
    tables[value] = nil
    buflen = appendcustom(ret, buffer, state)
  elseif value == nil then
    buflen = buflen + 1
    buffer[buflen] = "null"
  elseif valtype == 'number' then
    local s
    if value ~= value or value >= huge or -value >= huge then
      -- Este é o comportamento da implementação JSON original.
      s = "null"
    else
      s = num2str (value)
    end
    buflen = buflen + 1
    buffer[buflen] = s
  elseif valtype == 'boolean' then
    buflen = buflen + 1
    buffer[buflen] = value and "true" or "false"
  elseif valtype == 'string' then
    buflen = buflen + 1
    buffer[buflen] = quotestring (value)
  elseif valtype == 'table' then
    if tables[value] then
      return exception('reference cycle', value, state, buffer, buflen)
    end
    tables[value] = true
    level = level + 1
    local isa, n = isarray (value)
    if n == 0 and valmeta and valmeta.__jsontype == 'object' then
      isa = false
    end
    local msg
    if isa then -- JSON array
      buflen = buflen + 1
      buffer[buflen] = "["
      for i = 1, n do
        buflen, msg = encode2 (value[i], indent, level, buffer, buflen, tables, globalorder, state)
        if not buflen then return nil, msg end
        if i < n then
          buflen = buflen + 1
          buffer[buflen] = ","
        end
      end
      buflen = buflen + 1
      buffer[buflen] = "]"
    else -- JSON object
      local prev = false
      buflen = buflen + 1
      buffer[buflen] = "{"
      local order = valmeta and valmeta.__jsonorder or globalorder
      if order then
        local used = {}
        n = #order
        for i = 1, n do
          local k = order[i]
          local v = value[k]
          if v ~= nil then
            used[k] = true
            buflen, msg = addpair (k, v, prev, indent, level, buffer, buflen, tables, globalorder, state)
            prev = true -- adicione um separador antes do próximo elemento
          end
        end
        for k,v in pairs (value) do
          if not used[k] then
            buflen, msg = addpair (k, v, prev, indent, level, buffer, buflen, tables, globalorder, state)
            if not buflen then return nil, msg end
            prev = true -- adicione um separador antes do próximo elemento
          end
        end
      else -- não ordenado
        for k,v in pairs (value) do
          buflen, msg = addpair (k, v, prev, indent, level, buffer, buflen, tables, globalorder, state)
          if not buflen then return nil, msg end
          prev = true -- adicione um separador antes do próximo elemento
        end
      end
      if indent then
        buflen = addnewline2 (level - 1, buffer, buflen)
      end
      buflen = buflen + 1
      buffer[buflen] = "}"
    end
    tables[value] = nil
  else
    return exception ('unsupported type', value, state, buffer, buflen,
      "type '" .. valtype .. "' não é compatível com JSON.")
  end
  return buflen
end

function json.encode (value, state)
  state = state or {}
  local oldbuffer = state.buffer
  local buffer = oldbuffer or {}
  state.buffer = buffer
  updatedecpoint()
  local ret, msg = encode2 (value, state.indent, state.level or 0,
                   buffer, state.bufferlen or 0, state.tables or {}, state.keyorder, state)
  if not ret then
    error (msg, 2)
  elseif oldbuffer == buffer then
    state.bufferlen = ret
    return true
  else
    state.bufferlen = nil
    state.buffer = nil
    return concat (buffer)
  end
end

local function loc (str, where)
  local line, pos, linepos = 1, 1, 0
  while true do
    pos = strfind (str, "\n", pos, true)
    if pos and pos < where then
      line = line + 1
      linepos = pos
      pos = pos + 1
    else
      break
    end
  end
  return "line " .. line .. ", column " .. (where - linepos)
end

local function unterminated (str, what, where)
  return nil, strlen (str) + 1, "unterminated " .. what .. " at " .. loc (str, where)
end

-- O erro anteriormente estava ocorrendo em relação a uma função  strlen  que estava sendo chamada com uma string nula. O erro indicava que a função esperava uma string como argumento, mas estava recebendo  nil  em vez disso.

-- Corrigimos usando uma verificação em que se a string  str  é passada como argumento para a função  strlen  ela é nula antes de chamá-la.

-- Aqui vai a diversão:

local function scanwhite(str, pos)
  if str == nil then return nil end -- Verificar se a string é nula
  while true do
    pos = strfind(str, "%S", pos)
    if not pos then return nil end
    local sub2 = strsub(str, pos, pos + 1)
    if sub2 == "\239\187" and strsub(str, pos + 2, pos + 2) == "\191" then
      -- UTF-8 Byte Order Mark
      pos = pos + 3
    elseif sub2 == "//" then
      pos = strfind(str, "[\n\r]", pos + 2)
      if not pos then return nil end
    elseif sub2 == "/*" then
      pos = strfind(str, "*/", pos + 2)
      if not pos then return nil end
      pos = pos + 2
    else
      return pos
    end
  end
end

-- Ao adicionar a verificação  if str == nil then return nil end , você evita o erro de chamar a função  strlen  com uma string nula.

local escapechars = {
  ["\""] = "\"", ["\\"] = "\\", ["/"] = "/", ["b"] = "\b", ["f"] = "\f",
  ["n"] = "\n", ["r"] = "\r", ["t"] = "\t"
}

local function unichar (value)
  if value < 0 then
    return nil
  elseif value <= 0x007f then
    return strchar (value)
  elseif value <= 0x07ff then
    return strchar (0xc0 + floor(value/0x40),
                    0x80 + (floor(value) % 0x40))
  elseif value <= 0xffff then
    return strchar (0xe0 + floor(value/0x1000),
                    0x80 + (floor(value/0x40) % 0x40),
                    0x80 + (floor(value) % 0x40))
  elseif value <= 0x10ffff then
    return strchar (0xf0 + floor(value/0x40000),
                    0x80 + (floor(value/0x1000) % 0x40),
                    0x80 + (floor(value/0x40) % 0x40),
                    0x80 + (floor(value) % 0x40))
  else
    return nil
  end
end

local function scanstring (str, pos)
  local lastpos = pos + 1
  local buffer, n = {}, 0
  while true do
    local nextpos = strfind (str, "[\"\\]", lastpos)
    if not nextpos then
      return unterminated (str, "string", pos)
    end
    if nextpos > lastpos then
      n = n + 1
      buffer[n] = strsub (str, lastpos, nextpos - 1)
    end
    if strsub (str, nextpos, nextpos) == "\"" then
      lastpos = nextpos + 1
      break
    else
      local escchar = strsub (str, nextpos + 1, nextpos + 1)
      local value
      if escchar == "u" then
        value = tonumber (strsub (str, nextpos + 2, nextpos + 5), 16)
        if value then
          local value2
          if 0xD800 <= value and value <= 0xDBff then
            -- temos o alto substituto do UTF-16. Verifique se existe um substituto baixo escapou nas proximidades para combiná-los.
            if strsub (str, nextpos + 6, nextpos + 7) == "\\u" then
              value2 = tonumber (strsub (str, nextpos + 8, nextpos + 11), 16)
              if value2 and 0xDC00 <= value2 and value2 <= 0xDFFF then
                value = (value - 0xD800)  * 0x400 + (value2 - 0xDC00) + 0x10000
              else
                value2 = nil -- caso estivesse fora do alcance de um substituto baixo
              end
            end
          end
          value = value and unichar (value)
          if value then
            if value2 then
              lastpos = nextpos + 12
            else
              lastpos = nextpos + 6
            end
          end
        end
      end
      if not value then
        value = escapechars[escchar] or escchar
        lastpos = nextpos + 2
      end
      n = n + 1
      buffer[n] = value
    end
  end
  if n == 1 then
    return buffer[1], lastpos
  elseif n > 1 then
    return concat (buffer), lastpos
  else
    return "", lastpos
  end
end

local scanvalue -- declaração de encaminhamento

local function scantable (what, closechar, str, startpos, nullval, objectmeta, arraymeta)
  local len = strlen (str)
  local tbl, n = {}, 0
  local pos = startpos + 1
  if what == 'object' then
    setmetatable (tbl, objectmeta)
  else
    setmetatable (tbl, arraymeta)
  end
  while true do
    pos = scanwhite (str, pos)
    if not pos then return unterminated (str, what, startpos) end
    local char = strsub (str, pos, pos)
    if char == closechar then
      return tbl, pos + 1
    end
    local val1, err
    val1, pos, err = scanvalue (str, pos, nullval, objectmeta, arraymeta)
    if err then return nil, pos, err end
    pos = scanwhite (str, pos)
    if not pos then return unterminated (str, what, startpos) end
    char = strsub (str, pos, pos)
    if char == ":" then
      if val1 == nil then
        return nil, pos, "cannot use nil as table index (at " .. loc (str, pos) .. ")"
      end
      pos = scanwhite (str, pos + 1)
      if not pos then return unterminated (str, what, startpos) end
      local val2
      val2, pos, err = scanvalue (str, pos, nullval, objectmeta, arraymeta)
      if err then return nil, pos, err end
      tbl[val1] = val2
      pos = scanwhite (str, pos)
      if not pos then return unterminated (str, what, startpos) end
      char = strsub (str, pos, pos)
    else
      n = n + 1
      tbl[n] = val1
    end
    if char == "," then
      pos = pos + 1
    end
  end
end

scanvalue = function (str, pos, nullval, objectmeta, arraymeta)
  pos = pos or 1
  pos = scanwhite (str, pos)
  if not pos then
    return nil, strlen (str) + 1, "nenhum valor JSON válido (reached the end)"
  end
  local char = strsub (str, pos, pos)
  if char == "{" then
    return scantable ('object', "}", str, pos, nullval, objectmeta, arraymeta)
  elseif char == "[" then
    return scantable ('array', "]", str, pos, nullval, objectmeta, arraymeta)
  elseif char == "\"" then
    return scanstring (str, pos)
  else
    local pstart, pend = strfind (str, "^%-?[%d%.]+[eE]?[%+%-]?%d*", pos)
    if pstart then
      local number = str2num (strsub (str, pstart, pend))
      if number then
        return number, pend + 1
      end
    end
    pstart, pend = strfind (str, "^%a%w*", pos)
    if pstart then
      local name = strsub (str, pstart, pend)
      if name == "true" then
        return true, pend + 1
      elseif name == "false" then
        return false, pend + 1
      elseif name == "null" then
        return nullval, pend + 1
      end
    end
    return nil, pos, "nenhum valor JSON válido em " .. loc (str, pos)
  end
end

local function optionalmetatables(...)
  if select("#", ...) > 0 then
    return ...
  else
    return {__jsontype = 'object'}, {__jsontype = 'array'}
  end
end

function json.decode (str, pos, nullval, ...)
  local objectmeta, arraymeta = optionalmetatables(...)
  return scanvalue (str, pos, nullval, objectmeta, arraymeta)
end

function json.use_lpeg ()
  local g = require ("lpeg")

  if g.version() == "0.11" then
    error "devido a um bug no LPeg 0.11, ele não pode ser usado para correspondência JSON"
  end

  local pegmatch = g.match
  local P, S, R = g.P, g.S, g.R

  local function ErrorCall (str, pos, msg, state)
    if not state.msg then
      state.msg = msg .. " at " .. loc (str, pos)
      state.pos = pos
    end
    return false
  end

  local function Err (msg)
    return g.Cmt (g.Cc (msg) * g.Carg (2), ErrorCall)
  end

  local function ErrorUnterminatedCall (str, pos, what, state)
    return ErrorCall (str, pos - 1, "unterminated " .. what, state)
  end

  local SingleLineComment = P"//" * (1 - S"\n\r")^0
  local MultiLineComment = P"/*" * (1 - P"*/")^0 * P"*/"
  local Space = (S" \n\r\t" + P"\239\187\191" + SingleLineComment + MultiLineComment)^0

  local function ErrUnterminated (what)
    return g.Cmt (g.Cc (what) * g.Carg (2), ErrorUnterminatedCall)
  end

  local PlainChar = 1 - S"\"\\\n\r"
  local EscapeSequence = (P"\\" * g.C (S"\"\\/bfnrt" + Err "unsupported escape sequence")) / escapechars
  local HexDigit = R("09", "af", "AF")
  local function UTF16Surrogate (match, pos, high, low)
    high, low = tonumber (high, 16), tonumber (low, 16)
    if 0xD800 <= high and high <= 0xDBff and 0xDC00 <= low and low <= 0xDFFF then
      return true, unichar ((high - 0xD800)  * 0x400 + (low - 0xDC00) + 0x10000)
    else
      return false
    end
  end
  local function UTF16BMP (hex)
    return unichar (tonumber (hex, 16))
  end
  local U16Sequence = (P"\\u" * g.C (HexDigit * HexDigit * HexDigit * HexDigit))
  local UnicodeEscape = g.Cmt (U16Sequence * U16Sequence, UTF16Surrogate) + U16Sequence/UTF16BMP
  local Char = UnicodeEscape + EscapeSequence + PlainChar
  local String = P"\"" * (g.Cs (Char ^ 0) * P"\"" + ErrUnterminated "string")
  local Integer = P"-"^(-1) * (P"0" + (R"19" * R"09"^0))
  local Fractal = P"." * R"09"^0
  local Exponent = (S"eE") * (S"+-")^(-1) * R"09"^1
  local Number = (Integer * Fractal^(-1) * Exponent^(-1))/str2num
  local Constant = P"true" * g.Cc (true) + P"false" * g.Cc (false) + P"null" * g.Carg (1)
  local SimpleValue = Number + String + Constant
  local ArrayContent, ObjectContent

  -- As funções parse array e parse object analisam apenas um único valor/par de cada vez e armazene-os diretamente para evitar atingir os limites do LPeg.
  local function parsearray (str, pos, nullval, state)
    local obj, cont
    local start = pos
    local npos
    local t, nt = {}, 0
    repeat
      obj, cont, npos = pegmatch (ArrayContent, str, pos, nullval, state)
      if cont == 'end' then
        return ErrorUnterminatedCall (str, start, "array", state)
      end
      pos = npos
      if cont == 'cont' or cont == 'last' then
        nt = nt + 1
        t[nt] = obj
      end
    until cont ~= 'cont'
    return pos, setmetatable (t, state.arraymeta)
  end

  local function parseobject (str, pos, nullval, state)
    local obj, key, cont
    local start = pos
    local npos
    local t = {}
    repeat
      key, obj, cont, npos = pegmatch (ObjectContent, str, pos, nullval, state)
      if cont == 'end' then
        return ErrorUnterminatedCall (str, start, "object", state)
      end
      pos = npos
      if cont == 'cont' or cont == 'last' then
        t[key] = obj
      end
    until cont ~= 'cont'
    return pos, setmetatable (t, state.objectmeta)
  end

  local Array = P"[" * g.Cmt (g.Carg(1) * g.Carg(2), parsearray)
  local Object = P"{" * g.Cmt (g.Carg(1) * g.Carg(2), parseobject)
  local Value = Space * (Array + Object + SimpleValue)
  local ExpectedValue = Value + Space * Err "value expected"
  local ExpectedKey = String + Err "key expected"
  local End = P(-1) * g.Cc'end'
  local ErrInvalid = Err "invalid JSON"
  ArrayContent = (Value * Space * (P"," * g.Cc'cont' + P"]" * g.Cc'last'+ End + ErrInvalid)  + g.Cc(nil) * (P"]" * g.Cc'empty' + End  + ErrInvalid)) * g.Cp()
  local Pair = g.Cg (Space * ExpectedKey * Space * (P":" + Err "colon expected") * ExpectedValue)
  ObjectContent = (g.Cc(nil) * g.Cc(nil) * P"}" * g.Cc'empty' + End + (Pair * Space * (P"," * g.Cc'cont' + P"}" * g.Cc'last' + End + ErrInvalid) + ErrInvalid)) * g.Cp()
  local DecodeValue = ExpectedValue * g.Cp ()

  jsonlpeg.version = json.version
  jsonlpeg.encode = json.encode
  jsonlpeg.null = json.null
  jsonlpeg.quotestring = json.quotestring
  jsonlpeg.addnewline = json.addnewline
  jsonlpeg.encodeexception = json.encodeexception
  jsonlpeg.using_lpeg = true

  function jsonlpeg.decode (str, pos, nullval, ...)
    local state = {}
    state.objectmeta, state.arraymeta = optionalmetatables(...)
    local obj, retpos = pegmatch (DecodeValue, str, pos, nullval, state)
    if state.msg then
      return nil, state.pos, state.msg
    else
      return obj, retpos
    end
  end

  -- resultado de cache desta função:
  json.use_lpeg = function () return jsonlpeg end
  jsonlpeg.use_lpeg = json.use_lpeg

  return jsonlpeg
end

if always_use_lpeg then
  return json.use_lpeg()
end
return json
end

local json = dkjson()  -- Certifique-se de que a biblioteca 'dkjson' está corretamente carregada lá no morro

local function readAndCleanJsonFile(file)
    local f, errorMessage = io.open(file, "r")

    if not f then
        print("Não foi possível abrir o arquivo:", errorMessage)
        return nil
    end

    local content = f:read("*all")

    if not content or content == "" then
        print("Conteúdo vazio ou nulo no arquivo:", file)
        f:close()
        return nil
    end

    -- Remove espaços em branco, caracteres não imprimíveis e bytes nulos do início e final
    content = content:gsub("[^%g{}]", "")

    local index = content:find("{")

    if not index then
        gg.alert("Hoje não, João Kleber")
        print("O conteúdo do arquivo não contém um '{' válido.")
        f:close()
        return nil
    end

    content = content:sub(index)

    f:close()
    return content
end

local jsonFilePath = "/storage/emulated/0/json.txt"
local jsonContent = readAndCleanJsonFile(jsonFilePath)

if not jsonContent or jsonContent == "" then
    print("Não foi possível ler ou limpar o conteúdo do JSON:", jsonFilePath)
    return
end

local decodedData, decodeError = json.decode(jsonContent)

if decodedData then
    local timestamp = decodedData.configTimestamp

    if timestamp then
        -- Continue aqui com o restante do código
    else
        print("Aviso: Este JSON não contém 'configTimestamp'. Prossiga com as decodificações.")
    end
else
    print("Não foi possível decodificar o JSON. Erro:", decodeError)
    return
end

-- Atualize o jsonData com o conteúdo do arquivo json.txt
local jsonFixFilePath = "/storage/emulated/0/json.txt"
jsonData = json.decode(readAndCleanJsonFile(jsonFixFilePath))


-- Função para converter um valor em timestamp para data formatada
function timestampToData(timestamp)
    if not timestamp then
        return "primeiro as primas" -- Retorna "primeiro as primas" se o timestamp for nulo
    end

    local numericTimestamp = tonumber(timestamp)

    if numericTimestamp then
        return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
    end

    return "primeiro as primas" -- Retorna "primeiro as primas" em caso de erro
end

-- Vamos supor que você queira converter o campo "configTimestamp" do jsonData em uma data formatada
local timestamp = jsonData.configTimestamp

-- Usa a função para converter o timestamp em data
local dataFormatada = timestampToData(timestamp)

-- dataFormatada agora contém a data formatada correspondente ao timestamp em jsonData.configTimestamp
-- Você pode usar dataFormatada como desejar

-- Função para decodificar o tipo de túnel
function getTunnelDescription(tunnelType)
    local tunnelDescriptions = {
        http_obfs_shadowsocks = "HTTP (Obfs) ➔ Shadowsocks - TCP (HTTP)",
        ssl_proxy_payload_ssh = "SSL/TLS Proxy ➔ SSH (Custom Payload) - TCP (TLS)",
        ssl_ssh = "SSL/TLS ➔ SSH - TCP (TLS)",
        proxy_payload_ssh = "HTTP Proxy ➔ SSH (Custom Payload) - TCP (HTTP)",
        proxy_ssh = "HTTP Proxy ➔ SSH - TCP (HTTP)",
        direct_ssh = "SSH (Direct) - TCP",
        direct_shadowsocks = "Shadowsocks (Direct) - TCP (SOCKS)",
        dnstt_ssh = "DNS (DNSTT) ➔ SSH - DNS (UDP/TCP)",
        ssl_proxy_ssh = "SSL/TLS Proxy ➔ SSH - TCP (TLS)",
        ssl_shadowsocks = "SSL/TLS ➔ Shadowsocks - TCP (TLS)",
        tls_obfs_shadowsocks = "SSL/TLS (Obfs) ➔ Shadowsocks - TCP (TLS)",
        direct_v2r_vmess = "V2Ray",
        direct_v2r = "V2Ray/Xray - TCP (HTTP2/WS) | UDP (QUIC/mKCP)",
        hysteria = "Hysteria - UDP",
        direct_payload_ssh = "Direct SSH ➔ Custom Payload - TCP"
    }
    
    return tunnelDescriptions[tunnelType] or tunnelType
end

-- Chame a função getTunnelDescription para obter a descrição do tipo de túnel
local tunnelDescription = getTunnelDescription(decodedData.tunnelType)

local outputFile

-- Se estiver no GG, use o caminho com "gg"
if gg and gg.EXT_STORAGE then
    outputFile = io.open(gg.EXT_STORAGE .. "/e×h×i.txt", "w")
else
    -- Se não estiver no GG, use um caminho padrão ou personalizado para Termux
    local termuxPath = "/sdcard"  -- Pode personalizar o caminho do Termux aqui
    outputFile = io.open(termuxPath .. "/e×h×i.txt", "w")
end

-- Função para salvar dados em um arquivo
function save(data, filename)
    if outputFile then
        outputFile:write(data)
         gg.toast("🔓 Te peguei, Lionel Richie!")
    else
        -- Lidar com erro ao abrir o arquivo
        gg.alert("Pai não encontrado")
        --print("Falha ao abrir o arquivo de saída")
    end
end

-- Função para salvar os resultados no arquivo e também imprimir na tela.
-- Parâmetros:
--   key: A chave que identifica o resultado.
--   value: O valor associado à chave que deve ser salvo e impresso.
function saveResult(key, value)
    -- Verifica se o valor não é nulo, não é uma string vazia e não é "N/A".
    if value ~= nil and value ~= "" and value ~= "N/A" then
        -- Converte o valor em uma string.
        local valueString = tostring(value)
        -- Salva a chave e o valor no arquivo com quebra de linha.
        save(key .. ": " .. valueString .. "\n")
        -- Imprime a chave e o valor na tela.
        print(key .. ": " .. valueString)
    -- Caso o valor seja nulo.
    elseif value == nil then
        -- Cria uma string vazia.
        local valueString = ""
        -- Salva a chave com uma string vazia no arquivo com quebra de linha.
        save(key .. ": " .. valueString .. "\n")
        -- Imprime a chave com uma string vazia na tela.
        print(key .. ": " .. valueString)
    end
end

-- Função que verifica se um tipo de túnel está presente em uma lista de tipos de túnel válidos.
-- Parâmetros:
--   tunnelType: O tipo de túnel que desejamos verificar.
--   tunnelList: A lista de tipos de túnel válidos onde procuramos.
-- Retorno:
--   true se tunnelType estiver na lista, caso contrário, retorna false.

function isTunnelTypeValid(tunnelType, tunnelList)
    -- Itera por cada tipo de túnel na lista.
    for _, validTunnel in pairs(tunnelList) do
        -- Verifica se o tipo de túnel atual é igual a tunnelType.
        if validTunnel == tunnelType then
            -- Se encontrarmos uma correspondência, retornamos true.
            return true
        end
    end
    -- Se não encontrarmos uma correspondência após percorrer a lista inteira, retornamos false.
    return false
end

-- Lista de tipos de túneis reconhecidos
local lista_de_tipos_de_tuneis = {
    "http_obfs_shadowsocks",
  "tls_obfs_shadowsocks",
  "direct_shadowsocks",
  "ssl_shadowsocks",
  "direct_v2r_vmess",
  "direct_v2r",
  "hysteria",
  "dnstt_ssh",
  "direct_ssh",
  "direct_payload_ssh",
  "proxy_payload_ssh",
  "ssl_proxy_payload_ssh",
  "ssl_ssh",
  "ssl_proxy_ssh",
  "proxy_ssh"
    -- Adicione outros tipos de túnel aqui
}

-- Função para verificar se um tipo de túnel é válido
function TunnelTypeX9(tunnelType)
    -- Verifique se a tabela de tipos de túneis é definida
    if not lista_de_tipos_de_tuneis then
        return false
    end

    -- Verifique se o tipo de túnel está na lista de tipos de túneis
    for _, validTunnel in ipairs(lista_de_tipos_de_tuneis) do
        if tunnelType == validTunnel then
            return true
        end
    end

    return false
end

-- Decodifica o JSON
--local jsonData = json.decode(jsonContent)
-- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

-- Verifica se o tunnelType existe no JSON.
if jsonData.tunnelType then
    -- Verifica se o tunnelType está na lista de tipos de túneis.
    if TunnelTypeX9(jsonData.tunnelType, lista_de_tipos_de_tuneis) then
        -- O túnel é válido, prossiga com a decodificação.
        gg.toast("🔓 Te peguei, Lionel Richie!")
        Http:New(decodedData)        
    else
        -- Aviso de túnel não encontrado na lista.
        print("Túnel não encontrado na lista - primeiro as primas")
    end
else
    -- Túnel não especificado no JSON, continue com a decodificação.
    print("Campo 'tunnelType' não encontrado no JSON - primeiro as primas")

    -- Continue aqui com a decodificação de outras chaves independentemente do tipo de túnel.

-- Legal, eu vou ser sua tia
Http:New(decodedData)
-- Função para lidar com o túnel específico, se estiver na lista
function handleSpecificTunnel(decodedData, outputFile, tunnelType)
    -- Verifica se decodedData não é nil e se possui a chave tunnelType
    if decodedData and type(decodedData) == "table" and decodedData.tunnelType then
        -- Verifica se o tipo de túnel está na lista conhecida
        if contains(lista_de_tipos_de_tuneis, tunnelType) then
            -- Se está na lista, chama handleTunnel para tratamento específico
            handleTunnel(decodedData, outputFile)
        else
            -- Se não está na lista, chama handleTunnel para tratamento universal
            handleTunnel(decodedData, outputFile)
        end
    else
        -- Se decodedData, não for uma tabela, ou decodedData.tunnelType não existir, trata como um caso universal
        handleTunnel(decodedData, outputFile)
    end
end

-- Legal, eu vou ser sua tia
Http:New(decodedData)
-- Função para lidar com qualquer tipo de túnel
function handleTunnel(decodedData, outputFile)
    -- ... (lógica de tratamento universal)

    -- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
   -- local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        table.insert(messageParts, "\nCódigo da Versão de Configuração: " .. tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        table.insert(messageParts, "\nSubstituir Dados do Servidor: " .. decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        table.insert(messageParts, "\nSubstituir Tipo de Servidor: " .. decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        table.insert(messageParts, "\nSubstituir a Porta Proxy do Servidor: " .. decodedData.overwriteServerProxyPort)
    end

    -- Adicione mais verificações específicas para cada tipo de túnel aqui

    -- Usa Http:Dec para decodificar a chave "host"
    local hostValue = Http:Dec("host")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if hostValue and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A" and hostValue ~= nil then
        table.insert(messageParts, "\nConta SSH: " .. hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a adiciona à tabela de partes da mensagem
    if decodedData.port and decodedData.port ~= nil and decodedData.port ~= "N/A" and decodedData.port ~= "" and decodedData.port ~= 0 and decodedData.port ~= "0" then
        table.insert(messageParts, "Porta SSH: " .. tostring(decodedData.port))
    end

    -- Usa Http:Dec para decodificar a chave "user"
    local userValue = Http:Dec("user")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if userValue and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A" and userValue ~= nil then
        table.insert(messageParts, "Usuário: " .. userValue)
    end

    -- Usa Http:Dec para decodificar a chave "password"
    local passwordValue = Http:Dec("password")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if passwordValue and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A" then
        table.insert(messageParts, "Senha: " .. passwordValue)
    end

    -- Usa Http:Dec para decodificar a chave "publicKey"
    local publicKeyValue = Http:Dec("publicKey")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if publicKeyValue and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A" then
        table.insert(messageParts, "\nChave pública: " .. publicKeyValue)
    end

    -- Usa Http:Dec para decodificar a chave "payload"
    local payloadValue = Http:Dec("payload")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if payloadValue and type(payloadValue) == "string" and payloadValue ~= "" and payloadValue ~= "N/A" then
        table.insert(messageParts, "\n\nPayload: " .. payloadValue)
    end

    -- Usa Http:Dec para decodificar a chave "remoteProxy"
    local remoteProxyValue = Http:Dec("remoteProxy")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if remoteProxyValue and type(remoteProxyValue) == "string" and remoteProxyValue ~= "" and remoteProxyValue ~= "N/A" then
        table.insert(messageParts, "\n\nProxy: " .. remoteProxyValue)
    end

    -- Usa Http:Dec para decodificar a chave "remoteProxyUsername"
    local remoteProxyUsernameValue = Http:Dec("remoteProxyUsername")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if remoteProxyUsernameValue and type(remoteProxyUsernameValue) == "string" and remoteProxyUsernameValue ~= "" and remoteProxyUsernameValue ~= "N/A" then
        table.insert(messageParts, "Usuário do Proxy: " .. remoteProxyUsernameValue)
    end

    -- Usa Http:Dec para decodificar a chave "remoteProxyPassword"
    local remoteProxyPasswordValue = Http:Dec("remoteProxyPassword")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if remoteProxyPasswordValue and type(remoteProxyPasswordValue) == "string" and remoteProxyPasswordValue ~= "" and remoteProxyPasswordValue ~= "N/A" then
        table.insert(messageParts, "Senha do Proxy: " .. remoteProxyPasswordValue)
    end
    
    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    local sniHostnameValue = Http:Dec("sniHostname")
    if sniHostnameValue and sniHostnameValue ~= "" and sniHostnameValue ~= nil and sniHostnameValue ~= "N/A" then
        saveResult("\nSNI", sniHostnameValue)
        else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    saveResult("\nSNI", "facebook.com")
    end
    
    -- Verifica se a chave "htrServerHost" existe em Http:Dec e a salva
    local htrServerHostValue = Http:Dec("htrServerHost")
    if htrServerHostValue and htrServerHostValue ~= "" and htrServerHostValue ~= nil and htrServerHostValue ~= "N/A" then
        saveResult("\nServidor", htrServerHostValue)
    end

    -- Verifica se a chave "htrServerPort" existe em Http:Dec e a salva
    local htrServerPortValue = Http:Dec("htrServerPort")
    if htrServerPortValue and htrServerPortValue ~= "" and htrServerPortValue ~= nil and htrServerPortValue ~= "N/A" and htrServerPortValue ~= 0 and htrServerPortValue ~= "0" then
        saveResult("Porta do Servidor", htrServerPortValue)
    end

    -- Verifica se a chave "htrProtocol" existe em Http:Dec e a salva
    local htrProtocolValue = Http:Dec("htrProtocol")
    if htrProtocolValue and htrProtocolValue ~= "" and htrProtocolValue ~= nil and htrProtocolValue ~= "N/A" then
        saveResult("\nProtocolo", htrProtocolValue)
    end
    
    -- Verifica se a chave "htrAuthuser" existe em Http:Dec e a salva
--    local htrAuthuserValue = Http:Dec("htrAuthuser")
--    if htrAuthuserValue and htrAuthuserValue ~= "" and htrAuthuserValue ~= nil and htrAuthuserValue ~= "N/A" then
--        saveResult("\nhtr Authuser", htrAuthuserValue)
--    end

    -- Verifica se a chave "htrObfsPassword" existe em Http:Dec e a salva
    local htrObfsPasswordValue = Http:Dec("htrObfsPassword")
    if htrObfsPasswordValue and htrObfsPasswordValue ~= "" and htrObfsPasswordValue ~= nil and htrObfsPasswordValue ~= "N/A" then
        saveResult("\nObfuscation Password", htrObfsPasswordValue)
    end

    -- Verifica se a chave "htrAuthPayloadType" existe em Http:Dec e a salva
    local htrAuthPayloadTypeValue = Http:Dec("htrAuthPayloadType")
    if htrAuthPayloadTypeValue and htrAuthPayloadTypeValue ~= "" and htrAuthPayloadTypeValue ~= nil and htrAuthPayloadTypeValue ~= "N/A" then
        saveResult("\nAuthentication Payload Type", htrAuthPayloadTypeValue)
    end

    -- Verifica se a chave "htrAuthPayloadValue" existe em Http:Dec e a salva
    local htrAuthPayloadValue = Http:Dec("htrAuthPayloadValue")
    if htrAuthPayloadValue and htrAuthPayloadValue ~= "" and htrAuthPayloadValue ~= nil and htrAuthPayloadValue ~= "N/A" then
        saveResult("\nAuthentication Payload", htrAuthPayloadValue)
    end

    -- Verifica se a chave "htrSni" existe em Http:Dec e a salva
    local htrSniValue = Http:Dec("htrSni")
    if htrSniValue and htrSniValue ~= "" and htrSniValue ~= nil and htrSniValue ~= "N/A" then
        saveResult("\nSNI", htrSniValue)
    end

    -- Verifica se a chave "htrAlpn" existe em Http:Dec e a salva
    local htrAlpnValue = Http:Dec("htrAlpn")
    if htrAlpnValue and htrAlpnValue ~= "" and htrAlpnValue ~= nil and htrAlpnValue ~= "N/A" then
        saveResult("\nALPN", htrAlpnValue)
    end

    -- Verifica se a chave "htrTlsAllowInsecure" existe em decodedData e a salva
    if decodedData.htrTlsAllowInsecure and decodedData.htrTlsAllowInsecure ~= "" and decodedData.htrTlsAllowInsecure ~= nil and decodedData.htrTlsAllowInsecure ~= "N/A" then
        saveResult("\nAllow Insecure", decodedData.htrTlsAllowInsecure)
    end

    -- Verifica se a chave "htrCustomCA" existe em Http:Dec e a salva
    local htrCustomCAValue = Http:Dec("htrCustomCA")
    if htrCustomCAValue and htrCustomCAValue ~= "" and htrCustomCAValue ~= nil and htrCustomCAValue ~= "N/A" then
        saveResult("\nCertificates", htrCustomCAValue)
    end
    
    -- Verifica se a chave "htrPortHoppingInterval" existe em Http:Dec e a salva
    local htrPortHoppingIntervalValue = Http:Dec("htrPortHoppingInterval")
    if htrPortHoppingIntervalValue and htrPortHoppingIntervalValue ~= "" and htrPortHoppingIntervalValue ~= nil and htrPortHoppingIntervalValue ~= "N/A" then
        saveResult("\nPort Hopping Interval (second)", htrPortHoppingIntervalValue)
    end

    -- Verifica se a chave "htrMaxUploadSpeed" existe em Http:Dec e a salva
    local htrMaxUploadSpeedValue = Http:Dec("htrMaxUploadSpeed")
    if htrMaxUploadSpeedValue and htrMaxUploadSpeedValue ~= "" and htrMaxUploadSpeedValue ~= nil and htrMaxUploadSpeedValue ~= "N/A" then
        saveResult("\nMax Upload Speed (in Mbps)", htrMaxUploadSpeedValue)
    end

    -- Verifica se a chave "htrMaxDownloadSpeed" existe em Http:Dec e a salva
    local htrMaxDownloadSpeedValue = Http:Dec("htrMaxDownloadSpeed")
    if htrMaxDownloadSpeedValue and htrMaxDownloadSpeedValue ~= "" and htrMaxDownloadSpeedValue ~= nil and htrMaxDownloadSpeedValue ~= "N/A" then
        saveResult("Max Download Speed (in Mbps)", htrMaxDownloadSpeedValue)
    end

    -- Verifica se a chave "htrDisableMtuDiscovery" existe em decodedData e a salva
    if decodedData.htrDisableMtuDiscovery and decodedData.htrDisableMtuDiscovery ~= "" and decodedData.htrDisableMtuDiscovery ~= nil and decodedData.htrDisableMtuDiscovery ~= "N/A" then
        saveResult("\nDisable Path MTU Discovery (RFC 8899)", decodedData.htrDisableMtuDiscovery)
    end
    
    -- Verifica se a chave "v2rCoreType" existe em Http:Dec e a salva
    local v2rCoreTypeValue = Http:Dec("v2rCoreType")
    if v2rCoreTypeValue and v2rCoreTypeValue ~= "" and v2rCoreTypeValue ~= "none" and v2rCoreTypeValue ~= "N/A" and v2rCoreTypeValue ~= nil then
        saveResult("\nCore", v2rCoreTypeValue)
    end

    -- Verifica se a chave "v2rFlowType" existe em Http:Dec e a salva
    local v2rFlowTypeValue = Http:Dec("v2rFlowType")
    if v2rFlowTypeValue and v2rFlowTypeValue ~= "" and v2rFlowTypeValue ~= "N/A" and v2rFlowTypeValue ~= nil and v2rFlowTypeValue ~= "none" then
        saveResult("\nFlow", v2rFlowTypeValue)
    end

    -- Verifica se a chave "v2rAdvancedSettings" existe em decodedData e a salva
    if decodedData.v2rAdvancedSettings and decodedData.v2rAdvancedSettings ~= "" and decodedData.v2rAdvancedSettings ~= "N/A" and decodedData.v2rAdvancedSettings ~= nil and decodedData.v2rAdvancedSettings ~= "none" then
        saveResult("\nAdvanced Settings", decodedData.v2rAdvancedSettings)
    end

    -- Verifica se a chave "v2rQuicHeaderType" existe em Http:Dec e a salva
    local v2rQuicHeaderTypeValue = Http:Dec("v2rQuicHeaderType")
    if v2rQuicHeaderTypeValue and v2rQuicHeaderTypeValue ~= "" and v2rQuicHeaderTypeValue ~= nil and v2rQuicHeaderTypeValue ~= "N/A" and v2rQuicHeaderTypeValue ~= "none" then
        saveResult("\nv2rQuicHeaderType", v2rQuicHeaderTypeValue)
    end

    -- Verifica se a chave "v2rQuicKey" existe em Http:Dec e a salva
    local v2rQuicKeyValue = Http:Dec("v2rQuicKey")
    if v2rQuicKeyValue and v2rQuicKeyValue ~= "" and v2rQuicKeyValue ~= nil and v2rQuicKeyValue ~= "N/A" and v2rQuicKeyValue ~= "none" then
        saveResult("\nv2rQuicKey", v2rQuicKeyValue)
    end

    -- Verifica se a chave "v2rTcpHeaderType" existe em Http:Dec e a salva
    local v2rTcpHeaderTypeValue = Http:Dec("v2rTcpHeaderType")
    if v2rTcpHeaderTypeValue and v2rTcpHeaderTypeValue ~= "" and v2rTcpHeaderTypeValue ~= nil and v2rTcpHeaderTypeValue ~= "N/A" and v2rTcpHeaderTypeValue ~= "none" then
        saveResult("\nv2rTcpHeaderType", v2rTcpHeaderTypeValue)
    end

    -- Verifica se a chave "v2rTcpHttpRequest" existe em Http:Dec e a salva
    local v2rTcpHttpRequestValue = Http:Dec("v2rTcpHttpRequest")
    if v2rTcpHttpRequestValue and v2rTcpHttpRequestValue ~= "" and v2rTcpHttpRequestValue ~= nil and v2rTcpHttpRequestValue ~= "N/A" and v2rTcpHttpRequestValue ~= "none" then
        saveResult("\nv2rTcpHttpRequest", v2rTcpHttpRequestValue)
    end

    -- Verifica se a chave "v2rTleFingerprintType" existe em Http:Dec e a salva
    local v2rTleFingerprintTypeValue = Http:Dec("v2rTleFingerprintType")
    if v2rTleFingerprintTypeValue and v2rTleFingerprintTypeValue ~= "" and v2rTleFingerprintTypeValue ~= nil and v2rTleFingerprintTypeValue ~= "N/A" and v2rTleFingerprintTypeValue ~= "none" then
        saveResult("\nTLS Fingerprint", v2rTleFingerprintTypeValue)
    end

    -- Verifica se a chave "v2rTleSecurityType" existe em Http:Dec e a salva
    local v2rTleSecurityTypeValue = Http:Dec("v2rTleSecurityType")
    if v2rTleSecurityTypeValue and v2rTleSecurityTypeValue ~= "" and v2rTleSecurityTypeValue ~= nil and v2rTleSecurityTypeValue ~= "N/A" and v2rTleSecurityTypeValue ~= "none" then
        saveResult("\nTipo de segurança Tle", v2rTleSecurityTypeValue)
    end

    -- Verifica se a chave "v2rHost" existe em Http:Dec e a salva
    local v2rHostValue = Http:Dec("v2rHost")
    if v2rHostValue and v2rHostValue ~= "" and v2rHostValue ~= "none" and v2rHostValue ~= "N/A" and v2rHostValue ~= nil then
        saveResult("\nServidor", v2rHostValue)
    end

    -- Verifica se a chave "v2rH2Host" existe em Http:Dec e a salva
    local v2rH2HostValue = Http:Dec("v2rH2Host")
    if v2rH2HostValue and v2rH2HostValue ~= "" and v2rH2HostValue ~= nil and v2rH2HostValue ~= "none" and v2rH2HostValue ~= "N/A" then
        saveResult("\nServidor", v2rH2HostValue)
    end

    -- Verifica se a chave "v2rPort" existe em Http:Dec e a salva
    local v2rPortValue = Http:Dec("v2rPort")
    if v2rPortValue and v2rPortValue ~= "" and v2rPortValue ~= "N/A" and v2rPortValue ~= "none" and v2rPortValue ~= nil then
        saveResult("\nPorta do Servidor", v2rPortValue)
    end

    -- Verifica se a chave "v2rNetwork" existe em Http:Dec e a salva
    local v2rNetworkValue = Http:Dec("v2rNetwork")
    if v2rNetworkValue and v2rNetworkValue ~= "" and v2rNetworkValue ~= nil and v2rNetworkValue ~= "none" and v2rNetworkValue ~= "none" and v2rNetworkValue ~= "N/A" then
        saveResult("\nTipo de rede", v2rNetworkValue)
    end

    -- Verifica se a chave "v2rUserId" existe em Http:Dec e a salva
    local v2rUserIdValue = Http:Dec("v2rUserId")
    if v2rUserIdValue and v2rUserIdValue ~= "" and v2rUserIdValue ~= nil and v2rUserIdValue ~= "N/A" and v2rUserIdValue ~= "none" then
        saveResult("\nID do usuário", v2rUserIdValue)
    end

    -- Verifica se a chave "v2rAlterId" existe em Http:Dec e a salva
    local v2rAlterIdValue = Http:Dec("v2rAlterId")
    if v2rAlterIdValue and v2rAlterIdValue ~= "" and v2rAlterIdValue ~= nil and v2rAlterIdValue ~= "N/A" and v2rAlterIdValue ~= "none" then
        saveResult("\nAlterar ID", v2rAlterIdValue)
    end

    -- Verifica se a chave "v2rProtocol" existe em Http:Dec e a salva
    local v2rProtocolValue = Http:Dec("v2rProtocol")
    if v2rProtocolValue and v2rProtocolValue ~= "" and v2rProtocolValue ~= "none" and v2rProtocolValue ~= "N/A" and v2rProtocolValue ~= nil then
        saveResult("\nProtocolo", v2rProtocolValue)
    end

    -- Verifica se a chave "v2rQuicSecurity" existe em Http:Dec e a salva
    local v2rQuicSecurityValue = Http:Dec("v2rQuicSecurity")
    if v2rQuicSecurityValue and v2rQuicSecurityValue ~= "" and v2rQuicSecurityValue ~= nil and v2rQuicSecurityValue ~= "N/A" and v2rQuicSecurityValue ~= "none" then
        saveResult("\nSegurança Rápida", v2rQuicSecurityValue)
    end

    -- Verifica se a chave "v2rSsSecurity" existe em Http:Dec e a salva
    local v2rSsSecurityValue = Http:Dec("v2rSsSecurity")
    if v2rSsSecurityValue and v2rSsSecurityValue ~= "" and v2rSsSecurityValue ~= nil and v2rSsSecurityValue ~= "N/A" and v2rSsSecurityValue ~= "none" then
        saveResult("\nSegurança Ss", v2rSsSecurityValue)
    end

    -- Verifica se a chave "v2rVlessSecurity" existe em Http:Dec e a salva
    local v2rVlessSecurityValue = Http:Dec("v2rVlessSecurity")
    if v2rVlessSecurityValue and v2rVlessSecurityValue ~= "" and v2rVlessSecurityValue ~= nil and v2rVlessSecurityValue ~= "none" and v2rVlessSecurityValue ~= "N/A" then
        saveResult("\nvSegurança Vless", v2rVlessSecurityValue)
    end

    -- Verifica se a chave "v2rVmessSecurity" existe em Http:Dec e a salva
    local v2rVmessSecurityValue = Http:Dec("v2rVmessSecurity")
    if v2rVmessSecurityValue and v2rVmessSecurityValue ~= "" and v2rVmessSecurityValue ~= nil and v2rVmessSecurityValue ~= "none" and v2rVmessSecurityValue ~= "N/A" then
        saveResult("\nSegurança Vmess", v2rVmessSecurityValue)
    end

    -- Verifica se a chave "v2rWsHeader" existe em Http:Dec e a salva
    local v2rWsHeaderValue = Http:Dec("v2rWsHeader")
    if v2rWsHeaderValue and v2rWsHeaderValue ~= "" and v2rWsHeaderValue ~= "none" and v2rWsHeaderValue ~= "N/A" and v2rWsHeaderValue ~= nil then
        saveResult("\nv2rWsHeader", v2rWsHeaderValue)
    end

    -- Verifica se a chave "v2rTlsSni" existe em Http:Dec e a salva
    local v2rTlsSniValue = Http:Dec("v2rTlsSni")
    if v2rTlsSniValue and v2rTlsSniValue ~= "" and v2rTlsSniValue ~= nil and v2rTlsSniValue ~= "none" and v2rTlsSniValue ~= "N/A" then
        saveResult("\nv2rTlsSNI", v2rTlsSniValue)
    end

    -- Verifica se a chave "v2rTlsAlpn" existe em Http:Dec e a salva
    local v2rTlsAlpnValue = Http:Dec("v2rTlsAlpn")
    if v2rTlsAlpnValue and v2rTlsAlpnValue ~= "" and v2rTlsAlpnValue ~= nil and v2rTlsAlpnValue ~= "none" and v2rTlsAlpnValue ~= "N/A" then
        saveResult("\nv2rTlsALPN", v2rTlsAlpnValue)
    end

    -- Verifica se a chave "v2rWsPath" existe em Http:Dec e a salva
    local v2rWsPathValue = Http:Dec("v2rWsPath")
    if v2rWsPathValue and v2rWsPathValue ~= "" and v2rWsPathValue ~= nil and v2rWsPathValue ~= "none" and v2rWsPathValue ~= "N/A" then
        saveResult("\nCaminho do Websocket", v2rWsPathValue)
    end

    -- Verifica se a chave "v2rH2Path" existe em Http:Dec e a salva
    local v2rH2PathValue = Http:Dec("v2rH2Path")
    if v2rH2PathValue and v2rH2PathValue ~= "" and v2rH2PathValue ~= nil and v2rH2PathValue ~= "none" and v2rH2PathValue ~= "N/A" then
        saveResult("\nCaminho HTTP", v2rH2PathValue)
    end

    -- Verifica se a chave "v2rTlsAllowInsecure" existe em decodedData e a salva
    if decodedData.v2rTlsAllowInsecure and decodedData.v2rTlsAllowInsecure ~= "" and decodedData.v2rTlsAllowInsecure ~= "none" and decodedData.v2rTlsAllowInsecure ~= "N/A" and decodedData.v2rTlsAllowInsecure ~= nil then
        saveResult("\nAllow Insecure", decodedData.v2rTlsAllowInsecure)
    end

    -- Verifica se a chave "v2rKcpMtu" existe em Http:Dec e a salva
    local v2rKcpMtuValue = Http:Dec("v2rKcpMtu")
    if v2rKcpMtuValue and v2rKcpMtuValue ~= "" and v2rKcpMtuValue ~= nil and v2rKcpMtuValue ~= "none" and v2rKcpMtuValue ~= "N/A" then
        saveResult("\nv2rKcpMtu", v2rKcpMtuValue)
    end

    -- Verifica se a chave "v2rMuxConcurrency" existe em Http:Dec e a salva
    local v2rMuxConcurrencyValue = Http:Dec("v2rMuxConcurrency")
    if v2rMuxConcurrencyValue and v2rMuxConcurrencyValue ~= "" and v2rMuxConcurrencyValue ~= nil and v2rMuxConcurrencyValue ~= "none" and v2rMuxConcurrencyValue ~= "N/A" then
        saveResult("\nConcurrency", v2rMuxConcurrencyValue)
    end
    
    -- Verifica se a chave "v2rRawJson" existe em Http:Dec e a salva
    local v2rRawJsonValue = Http:Dec("v2rRawJson")
    if v2rRawJsonValue and v2rRawJsonValue ~= "" and v2rRawJsonValue ~= nil and v2rRawJsonValue ~= "none" and v2rRawJsonValue ~= "N/A" then
       saveResult("\nv2rRawJson", v2rRawJsonValue)
    end
    
    -- Verifica se a chave "shadowsocksHost" existe em Http:Dec e a salva
    local shadowsocksHostValue = Http:Dec("shadowsocksHost")
    if shadowsocksHostValue and shadowsocksHostValue ~= "" and shadowsocksHostValue ~= nil and shadowsocksHostValue ~= "N/A" then
        saveResult("\nShadowsocks Host", shadowsocksHostValue)
    end

    -- Verifica se a chave "shadowsocksPort" existe em decodedData e a salva
    local shadowsocksPortValue = decodedData.shadowsocksPort
    if shadowsocksPortValue and shadowsocksPortValue ~= "" and shadowsocksPortValue ~= 0 and shadowsocksPortValue ~= "0" and shadowsocksPortValue ~= nil and shadowsocksPortValue ~= "N/A" then
        saveResult("Shadowsocks Porta", shadowsocksPortValue)
    end

    -- Verifica se a chave "shadowsocksPassword" existe em Http:Dec e a salva
    local shadowsocksPasswordValue = Http:Dec("shadowsocksPassword")
    if shadowsocksPasswordValue and shadowsocksPasswordValue ~= "" and shadowsocksPasswordValue ~= nil and shadowsocksPasswordValue ~= "N/A" then
        saveResult("Shadowsocks Senha", shadowsocksPasswordValue)
    end

    -- Verifica se a chave "shadowsocksEncryptionMethod" existe em decodedData e a salva
    local shadowsocksEncryptionMethodValue = decodedData.shadowsocksEncryptionMethod
    if shadowsocksEncryptionMethodValue and shadowsocksEncryptionMethodValue ~= "" and shadowsocksEncryptionMethodValue ~= nil and shadowsocksEncryptionMethodValue ~= "N/A" then
        saveResult("\nEncrypt Method", shadowsocksEncryptionMethodValue)
    end
    
    -- Verifica se a chave "httpObfsSettings" existe em Http:Dec e a salva
    local httpObfsSettingsValue = Http:Dec("httpObfsSettings")
    if httpObfsSettingsValue and httpObfsSettingsValue ~= "" and httpObfsSettingsValue ~= "N/A" and httpObfsSettingsValue ~= nil then
        saveResult("\nhttpObfsSettings", httpObfsSettingsValue, outputFile)
        end

    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    -- local sniHostnameValue = Http:Dec("sniHostname")
    -- if sniHostnameValue and sniHostnameValue ~= "" and sniHostnameValue ~= nil and sniHostnameValue ~= "N/A" then
        -- saveResult("\nSNI Hostname", sniHostnameValue)
        -- else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    -- saveResult("\nSNI", "facebook.com")
    -- end
    
    -- Adiciona o valor de "dnsttResolverProfile" de decodedData à tabela de partes da mensagem com uma verificação segura
    if decodedData.dnsttResolverProfile and type(decodedData.dnsttResolverProfile) == "string" then
        table.insert(messageParts, "\nDNS Resolver: " .. decodedData.dnsttResolverProfile)
    end

    -- Usa Http:Dec para decodificar a chave "dnsttDnsResolverAddr"
    local dnsttDnsResolverAddrValue = Http:Dec("dnsttDnsResolverAddr")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if dnsttDnsResolverAddrValue and type(dnsttDnsResolverAddrValue) == "string" and dnsttDnsResolverAddrValue ~= "" and dnsttDnsResolverAddrValue ~= "N/A" then
        table.insert(messageParts, "\nEndereço do DNS Resolver: " .. dnsttDnsResolverAddrValue)
    end

    -- Adiciona o valor de "dnsttResolverMode" de decodedData à tabela de partes da mensagem com uma verificação segura
    if decodedData.dnsttResolverMode and type(decodedData.dnsttResolverMode) == "string" then
        table.insert(messageParts, "\nModo DNSTT Resolver: " .. decodedData.dnsttResolverMode)
    end

    -- Usa Http:Dec para decodificar a chave "dnsttNameserver"
    local dnsttNameserverValue = Http:Dec("dnsttNameserver")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if dnsttNameserverValue and type(dnsttNameserverValue) == "string" and dnsttNameserverValue ~= "" and dnsttNameserverValue ~= "N/A" then
        table.insert(messageParts, "\nDNSTT Nameserver: " .. dnsttNameserverValue)
    end

    -- Usa Http:Dec para decodificar a chave "dnsttPublicKey"
    local dnsttPublicKeyValue = Http:Dec("dnsttPublicKey")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if dnsttPublicKeyValue and type(dnsttPublicKeyValue) == "string" and dnsttPublicKeyValue ~= "" and dnsttPublicKeyValue ~= "N/A" then
        table.insert(messageParts, "\nChave publica DNSTT: " .. dnsttPublicKeyValue)
    end

    -- Usa Http:Dec para decodificar a chave "host"
    -- local hostValue = Http:Dec("host")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    -- if hostValue and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A" then
        -- table.insert(messageParts, "\nConta SSH: " .. hostValue)
    -- end

    -- Verifica se a chave "port" existe em decodedData e a adiciona à tabela de partes da mensagem
-- if decodedData.port and decodedData.port ~= 0 and decodedData.port ~= "0" and ((type(decodedData.port) == "string" or type(decodedData.port) == "number") and decodedData.port ~= "N/A") then
    -- table.insert(messageParts, "Porta SSH: " .. tostring(decodedData.port))
-- end

    -- Usa Http:Dec para decodificar a chave "user"
    -- local userValue = Http:Dec("user")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    -- if userValue and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A" then
        -- table.insert(messageParts, "Usuário: " .. userValue)
    -- end
    
    -- Usa Http:Dec para decodificar a chave "password"
    -- local passwordValue = Http:Dec("password")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    -- if passwordValue and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A" then
        -- table.insert(messageParts, "Senha: " .. passwordValue)
    -- end
    
    -- Usa Http:Dec para decodificar a chave "publicKey"
    -- local publicKeyValue = Http:Dec("publicKey")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    -- if publicKeyValue and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A" then
        -- table.insert(messageParts, "\nChave pública: " .. publicKeyValue)
    -- end

    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o "Tipo de Túnel" à mensagem
    table.insert(messageParts, "\n\nTipo de Túnel: " .. decodedData.tunnelType)

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "full_message.txt")
end

-- Chamada para lidar com qualquer tipo de túnel
handleTunnel(decodedData, outputFile)
    
-- end

-- Verifica se um elemento está presente em uma tabela
function contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end
end

-- Continue aqui com a decodificação de outros dados no JSON, mesmo sem o tipo de túnel.

  -- mensagem descrição Tipo de Túnel
  message = tunnelDescription  

-- Função para lidar com o túnel "http_obfs_shadowsocks"
function handleHttpObfsShadowsocks(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}
    
    -- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "shadowsocksHost" existe em Http:Dec e a salva
    local shadowsocksHostValue = Http:Dec("shadowsocksHost")
    if shadowsocksHostValue and shadowsocksHostValue ~= "" and shadowsocksHostValue ~= nil and shadowsocksHostValue ~= "N/A" then
        saveResult("\nShadowsocks Host", shadowsocksHostValue, outputFile)
    end

    -- Verifica se a chave "shadowsocksPort" existe em decodedData e a salva
    local shadowsocksPortValue = decodedData.shadowsocksPort
    if shadowsocksPortValue and shadowsocksPortValue ~= "" and shadowsocksPortValue ~= "0" and shadowsocksPortValue ~= 0 and shadowsocksPortValue ~= "N/A" and shadowsocksPortValue ~= nil then
        saveResult("Shadowsocks Porta", shadowsocksPortValue, outputFile)
    end

    -- Verifica se a chave "shadowsocksPassword" existe em Http:Dec e a salva
    local shadowsocksPasswordValue = Http:Dec("shadowsocksPassword")
    if shadowsocksPasswordValue and shadowsocksPasswordValue ~= "" and shadowsocksPasswordValue ~= "N/A" and shadowsocksPasswordValue ~= nil then
        saveResult("Shadowsocks Senha", shadowsocksPasswordValue, outputFile)
    end

    -- Verifica se a chave "shadowsocksEncryptionMethod" existe em decodedData e a salva
    local shadowsocksEncryptionMethodValue = decodedData.shadowsocksEncryptionMethod
    if shadowsocksEncryptionMethodValue and shadowsocksEncryptionMethodValue ~= "" and shadowsocksEncryptionMethodValue ~= nil and shadowsocksEncryptionMethodValue ~= "N/A" then
        saveResult("\nEncrypt Method", shadowsocksEncryptionMethodValue, outputFile)
    end

    -- Verifica se a chave "httpObfsSettings" existe em Http:Dec e a salva
    local httpObfsSettingsValue = Http:Dec("httpObfsSettings")
    if httpObfsSettingsValue and httpObfsSettingsValue ~= "" and httpObfsSettingsValue ~= "N/A" and httpObfsSettingsValue ~= nil then
        saveResult("\nhttpObfsSettings", httpObfsSettingsValue, outputFile)
        end
        
        -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com http_obfs_shadowsocks
if decodedData.tunnelType == "http_obfs_shadowsocks" then
    -- Use outputFile como o terceiro argumento ao chamar a função handleHttpObfsShadowsocks
    handleHttpObfsShadowsocks(decodedData, outputFile)
end

-- Função para lidar com o túnel "tls_obfs_shadowsocks"
function handleTlsObfsShadowsocks(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "shadowsocksHost" existe em Http:Dec e a salva
    local shadowsocksHostValue = Http:Dec("shadowsocksHost")
    if shadowsocksHostValue and shadowsocksHostValue ~= "" and shadowsocksHostValue ~= nil and shadowsocksHostValue ~= "N/A" then
        saveResult("\nShadowsocks Host", shadowsocksHostValue)
    end

    -- Verifica se a chave "shadowsocksPort" existe em decodedData e a salva
    local shadowsocksPortValue = decodedData.shadowsocksPort
    if shadowsocksPortValue and shadowsocksPortValue ~= "" and shadowsocksPortValue ~= "0" and shadowsocksPortValue ~= 0 and shadowsocksPortValue ~= nil and shadowsocksPortValue ~= "N/A" then
        saveResult("Shadowsocks Porta", shadowsocksPortValue)
    end

    -- Verifica se a chave "shadowsocksPassword" existe em Http:Dec e a salva
    local shadowsocksPasswordValue = Http:Dec("shadowsocksPassword")
    if shadowsocksPasswordValue and shadowsocksPasswordValue ~= "" and shadowsocksPasswordValue ~= nil and shadowsocksPasswordValue ~= "N/A" then
        saveResult("Shadowsocks Senha", shadowsocksPasswordValue)
    end

    -- Verifica se a chave "shadowsocksEncryptionMethod" existe em decodedData e a salva
    local shadowsocksEncryptionMethodValue = decodedData.shadowsocksEncryptionMethod
    if shadowsocksEncryptionMethodValue and shadowsocksEncryptionMethodValue ~= "" and shadowsocksEncryptionMethodValue ~= nil and shadowsocksEncryptionMethodValue ~= "N/A" then
        saveResult("\nEncrypt Method", shadowsocksEncryptionMethodValue)
    end

    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    local sniHostnameValue = Http:Dec("sniHostname")
    if sniHostnameValue and sniHostnameValue ~= "" and sniHostnameValue ~= nil and sniHostnameValue ~= "N/A" then
        saveResult("\nSNI Hostname", sniHostnameValue)
        else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    saveResult("\nSNI", "facebook.com")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com tls_obfs_shadowsocks
if decodedData.tunnelType == "tls_obfs_shadowsocks" then
    handleTlsObfsShadowsocks(decodedData, outputFile)
end

-- Função para lidar com o túnel "direct_shadowsocks"
function handleDirectShadowsocks(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "shadowsocksHost" existe em Http:Dec e a salva
    local shadowsocksHostValue = Http:Dec("shadowsocksHost")
    if shadowsocksHostValue and shadowsocksHostValue ~= "" and shadowsocksHostValue ~= nil and shadowsocksHostValue ~= "N/A" then
        saveResult("\nShadowsocks Host", shadowsocksHostValue)
    end

    -- Verifica se a chave "shadowsocksPort" existe em decodedData e a salva
    local shadowsocksPortValue = decodedData.shadowsocksPort
    if shadowsocksPortValue and shadowsocksPortValue ~= "" and shadowsocksPortValue ~= "0" and shadowsocksPortValue ~= 0 and shadowsocksPortValue ~= nil and shadowsocksPortValue ~= "N/A" then
        saveResult("Shadowsocks Porta", shadowsocksPortValue)
    end

    -- Verifica se a chave "shadowsocksPassword" existe em Http:Dec e a salva
    local shadowsocksPasswordValue = Http:Dec("shadowsocksPassword")
    if shadowsocksPasswordValue and shadowsocksPasswordValue ~= "" and shadowsocksPasswordValue ~= nil and shadowsocksPasswordValue ~= "N/A" then
        saveResult("Shadowsocks Senha", shadowsocksPasswordValue)
    end

    -- Verifica se a chave "shadowsocksEncryptionMethod" existe em decodedData e a salva
    local shadowsocksEncryptionMethodValue = decodedData.shadowsocksEncryptionMethod
    if shadowsocksEncryptionMethodValue and shadowsocksEncryptionMethodValue ~= "" and shadowsocksEncryptionMethodValue ~= nil and shadowsocksEncryptionMethodValue ~= "N/A" then
        saveResult("\nEncrypt Method", shadowsocksEncryptionMethodValue)
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com direct_shadowsocks
if decodedData.tunnelType == "direct_shadowsocks" then
    handleDirectShadowsocks(decodedData, outputFile)
end

-- Função para lidar com o túnel "ssl_shadowsocks"
function handleSslShadowsocks(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "shadowsocksHost" existe em Http:Dec e a salva
    local shadowsocksHostValue = Http:Dec("shadowsocksHost")
    if shadowsocksHostValue and shadowsocksHostValue ~= "" and shadowsocksHostValue ~= nil and shadowsocksHostValue ~= "N/A" then
        saveResult("\nShadowsocks Host", shadowsocksHostValue)
    end

    -- Verifica se a chave "shadowsocksPort" existe em decodedData e a salva
    local shadowsocksPortValue = decodedData.shadowsocksPort
    if shadowsocksPortValue and shadowsocksPortValue ~= "" and shadowsocksPortValue ~= "0" and shadowsocksPortValue ~= 0 and shadowsocksPortValue ~= nil and shadowsocksPortValue ~= "N/A" then
        saveResult("Shadowsocks Porta", shadowsocksPortValue)
    end

    -- Verifica se a chave "shadowsocksPassword" existe em Http:Dec e a salva
    local shadowsocksPasswordValue = Http:Dec("shadowsocksPassword")
    if shadowsocksPasswordValue and shadowsocksPasswordValue ~= "" and shadowsocksPasswordValue ~= nil and shadowsocksPasswordValue ~= "N/A" then
        saveResult("Shadowsocks Senha", shadowsocksPasswordValue)
    end

    -- Verifica se a chave "shadowsocksEncryptionMethod" existe em decodedData e a salva
    local shadowsocksEncryptionMethodValue = decodedData.shadowsocksEncryptionMethod
    if shadowsocksEncryptionMethodValue and shadowsocksEncryptionMethodValue ~= "" and shadowsocksEncryptionMethodValue ~= nil and shadowsocksEncryptionMethodValue ~= "N/A" then
        saveResult("\nEncrypt Method", shadowsocksEncryptionMethodValue)
    end

    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    local sniHostnameValue = Http:Dec("sniHostname")
    if sniHostnameValue and sniHostnameValue ~= "" and sniHostnameValue ~= nil and sniHostnameValue ~= "N/A" then
        saveResult("\nSNI Hostname", sniHostnameValue)
        else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    saveResult("\nSNI", "facebook.com")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com ssl_shadowsocks
if decodedData.tunnelType == "ssl_shadowsocks" then
    handleSslShadowsocks(decodedData, outputFile)
end

-- Função para lidar com o túnel "direct_v2r"
function handleDirectV2r(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end
    
    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "v2rCoreType" existe em Http:Dec e a salva
    local v2rCoreTypeValue = Http:Dec("v2rCoreType")
    if v2rCoreTypeValue and v2rCoreTypeValue ~= "" and v2rCoreTypeValue ~= "none" and v2rCoreTypeValue ~= "N/A" and v2rCoreTypeValue ~= nil then
        saveResult("\nCore", v2rCoreTypeValue)
    end

    -- Verifica se a chave "v2rFlowType" existe em Http:Dec e a salva
    local v2rFlowTypeValue = Http:Dec("v2rFlowType")
    if v2rFlowTypeValue and v2rFlowTypeValue ~= "" and v2rFlowTypeValue ~= "N/A" and v2rFlowTypeValue ~= nil and v2rFlowTypeValue ~= "none" then
        saveResult("\nFlow", v2rFlowTypeValue)
    end

    -- Verifica se a chave "v2rAdvancedSettings" existe em decodedData e a salva
    if decodedData.v2rAdvancedSettings and decodedData.v2rAdvancedSettings ~= "" and decodedData.v2rAdvancedSettings ~= "N/A" and decodedData.v2rAdvancedSettings ~= nil and decodedData.v2rAdvancedSettings ~= "none" then
        saveResult("\nAdvanced Settings", decodedData.v2rAdvancedSettings)
    end

    -- Verifica se a chave "v2rQuicHeaderType" existe em Http:Dec e a salva
    local v2rQuicHeaderTypeValue = Http:Dec("v2rQuicHeaderType")
    if v2rQuicHeaderTypeValue and v2rQuicHeaderTypeValue ~= "" and v2rQuicHeaderTypeValue ~= nil and v2rQuicHeaderTypeValue ~= "N/A" and v2rQuicHeaderTypeValue ~= "none" then
        saveResult("\nv2rQuicHeaderType", v2rQuicHeaderTypeValue)
    end

    -- Verifica se a chave "v2rQuicKey" existe em Http:Dec e a salva
    local v2rQuicKeyValue = Http:Dec("v2rQuicKey")
    if v2rQuicKeyValue and v2rQuicKeyValue ~= "" and v2rQuicKeyValue ~= nil and v2rQuicKeyValue ~= "N/A" and v2rQuicKeyValue ~= "none" then
        saveResult("\nv2rQuicKey", v2rQuicKeyValue)
    end

    -- Verifica se a chave "v2rTcpHeaderType" existe em Http:Dec e a salva
    local v2rTcpHeaderTypeValue = Http:Dec("v2rTcpHeaderType")
    if v2rTcpHeaderTypeValue and v2rTcpHeaderTypeValue ~= "" and v2rTcpHeaderTypeValue ~= nil and v2rTcpHeaderTypeValue ~= "N/A" and v2rTcpHeaderTypeValue ~= "none" then
        saveResult("\nv2rTcpHeaderType", v2rTcpHeaderTypeValue)
    end

    -- Verifica se a chave "v2rTcpHttpRequest" existe em Http:Dec e a salva
    local v2rTcpHttpRequestValue = Http:Dec("v2rTcpHttpRequest")
    if v2rTcpHttpRequestValue and v2rTcpHttpRequestValue ~= "" and v2rTcpHttpRequestValue ~= nil and v2rTcpHttpRequestValue ~= "N/A" and v2rTcpHttpRequestValue ~= "none" then
        saveResult("\nv2rTcpHttpRequest", v2rTcpHttpRequestValue)
    end

    -- Verifica se a chave "v2rTleFingerprintType" existe em Http:Dec e a salva
    local v2rTleFingerprintTypeValue = Http:Dec("v2rTleFingerprintType")
    if v2rTleFingerprintTypeValue and v2rTleFingerprintTypeValue ~= "" and v2rTleFingerprintTypeValue ~= nil and v2rTleFingerprintTypeValue ~= "N/A" and v2rTleFingerprintTypeValue ~= "none" then
        saveResult("\nTLS Fingerprint", v2rTleFingerprintTypeValue)
    end

    -- Verifica se a chave "v2rTleSecurityType" existe em Http:Dec e a salva
    local v2rTleSecurityTypeValue = Http:Dec("v2rTleSecurityType")
    if v2rTleSecurityTypeValue and v2rTleSecurityTypeValue ~= "" and v2rTleSecurityTypeValue ~= nil and v2rTleSecurityTypeValue ~= "N/A" and v2rTleSecurityTypeValue ~= "none" then
        saveResult("\nTipo de segurança Tle", v2rTleSecurityTypeValue)
    end

    -- Verifica se a chave "v2rHost" existe em Http:Dec e a salva
    local v2rHostValue = Http:Dec("v2rHost")
    if v2rHostValue and v2rHostValue ~= "" and v2rHostValue ~= "none" and v2rHostValue ~= "N/A" and v2rHostValue ~= nil then
        saveResult("\nServidor", v2rHostValue)
    end

    -- Verifica se a chave "v2rH2Host" existe em Http:Dec e a salva
    local v2rH2HostValue = Http:Dec("v2rH2Host")
    if v2rH2HostValue and v2rH2HostValue ~= "" and v2rH2HostValue ~= nil and v2rH2HostValue ~= "none" and v2rH2HostValue ~= "N/A" then
        saveResult("\nServidor", v2rH2HostValue)
    end

    -- Verifica se a chave "v2rPort" existe em Http:Dec e a salva
    local v2rPortValue = Http:Dec("v2rPort")
    if v2rPortValue and v2rPortValue ~= "" and v2rPortValue ~= "N/A" and v2rPortValue ~= "none" and v2rPortValue ~= nil then
        saveResult("\nPorta do Servidor", v2rPortValue)
    end

    -- Verifica se a chave "v2rNetwork" existe em Http:Dec e a salva
    local v2rNetworkValue = Http:Dec("v2rNetwork")
    if v2rNetworkValue and v2rNetworkValue ~= "" and v2rNetworkValue ~= nil and v2rNetworkValue ~= "none" and v2rNetworkValue ~= "none" and v2rNetworkValue ~= "N/A" then
        saveResult("\nTipo de rede", v2rNetworkValue)
    end

    -- Verifica se a chave "v2rUserId" existe em Http:Dec e a salva
    local v2rUserIdValue = Http:Dec("v2rUserId")
    if v2rUserIdValue and v2rUserIdValue ~= "" and v2rUserIdValue ~= nil and v2rUserIdValue ~= "N/A" and v2rUserIdValue ~= "none" then
        saveResult("\nID do usuário", v2rUserIdValue)
    end

    -- Verifica se a chave "v2rAlterId" existe em Http:Dec e a salva
    local v2rAlterIdValue = Http:Dec("v2rAlterId")
    if v2rAlterIdValue and v2rAlterIdValue ~= "" and v2rAlterIdValue ~= nil and v2rAlterIdValue ~= "N/A" and v2rAlterIdValue ~= "none" then
        saveResult("\nAlterar ID", v2rAlterIdValue)
    end

    -- Verifica se a chave "v2rProtocol" existe em Http:Dec e a salva
    local v2rProtocolValue = Http:Dec("v2rProtocol")
    if v2rProtocolValue and v2rProtocolValue ~= "" and v2rProtocolValue ~= "none" and v2rProtocolValue ~= "N/A" and v2rProtocolValue ~= nil then
        saveResult("\nProtocolo", v2rProtocolValue)
    end

    -- Verifica se a chave "v2rQuicSecurity" existe em Http:Dec e a salva
    local v2rQuicSecurityValue = Http:Dec("v2rQuicSecurity")
    if v2rQuicSecurityValue and v2rQuicSecurityValue ~= "" and v2rQuicSecurityValue ~= nil and v2rQuicSecurityValue ~= "N/A" and v2rQuicSecurityValue ~= "none" then
        saveResult("\nSegurança Rápida", v2rQuicSecurityValue)
    end

    -- Verifica se a chave "v2rSsSecurity" existe em Http:Dec e a salva
    local v2rSsSecurityValue = Http:Dec("v2rSsSecurity")
    if v2rSsSecurityValue and v2rSsSecurityValue ~= "" and v2rSsSecurityValue ~= nil and v2rSsSecurityValue ~= "N/A" and v2rSsSecurityValue ~= "none" then
        saveResult("\nSegurança Ss", v2rSsSecurityValue)
    end

    -- Verifica se a chave "v2rVlessSecurity" existe em Http:Dec e a salva
    local v2rVlessSecurityValue = Http:Dec("v2rVlessSecurity")
    if v2rVlessSecurityValue and v2rVlessSecurityValue ~= "" and v2rVlessSecurityValue ~= nil and v2rVlessSecurityValue ~= "none" and v2rVlessSecurityValue ~= "N/A" then
        saveResult("\nvSegurança Vless", v2rVlessSecurityValue)
    end

    -- Verifica se a chave "v2rVmessSecurity" existe em Http:Dec e a salva
    local v2rVmessSecurityValue = Http:Dec("v2rVmessSecurity")
    if v2rVmessSecurityValue and v2rVmessSecurityValue ~= "" and v2rVmessSecurityValue ~= nil and v2rVmessSecurityValue ~= "none" and v2rVmessSecurityValue ~= "N/A" then
        saveResult("\nSegurança Vmess", v2rVmessSecurityValue)
    end

    -- Verifica se a chave "v2rWsHeader" existe em Http:Dec e a salva
    local v2rWsHeaderValue = Http:Dec("v2rWsHeader")
    if v2rWsHeaderValue and v2rWsHeaderValue ~= "" and v2rWsHeaderValue ~= "none" and v2rWsHeaderValue ~= "N/A" and v2rWsHeaderValue ~= nil then
        saveResult("\nv2rWsHeader", v2rWsHeaderValue)
    end

    -- Verifica se a chave "v2rTlsSni" existe em Http:Dec e a salva
    local v2rTlsSniValue = Http:Dec("v2rTlsSni")
    if v2rTlsSniValue and v2rTlsSniValue ~= "" and v2rTlsSniValue ~= nil and v2rTlsSniValue ~= "none" and v2rTlsSniValue ~= "N/A" then
        saveResult("\nv2rTlsSNI", v2rTlsSniValue)
    end

    -- Verifica se a chave "v2rTlsAlpn" existe em Http:Dec e a salva
    local v2rTlsAlpnValue = Http:Dec("v2rTlsAlpn")
    if v2rTlsAlpnValue and v2rTlsAlpnValue ~= "" and v2rTlsAlpnValue ~= nil and v2rTlsAlpnValue ~= "none" and v2rTlsAlpnValue ~= "N/A" then
        saveResult("\nv2rTlsALPN", v2rTlsAlpnValue)
    end

    -- Verifica se a chave "v2rWsPath" existe em Http:Dec e a salva
    local v2rWsPathValue = Http:Dec("v2rWsPath")
    if v2rWsPathValue and v2rWsPathValue ~= "" and v2rWsPathValue ~= nil and v2rWsPathValue ~= "none" and v2rWsPathValue ~= "N/A" then
        saveResult("\nCaminho do Websocket", v2rWsPathValue)
    end

    -- Verifica se a chave "v2rH2Path" existe em Http:Dec e a salva
    local v2rH2PathValue = Http:Dec("v2rH2Path")
    if v2rH2PathValue and v2rH2PathValue ~= "" and v2rH2PathValue ~= nil and v2rH2PathValue ~= "none" and v2rH2PathValue ~= "N/A" then
        saveResult("\nCaminho HTTP", v2rH2PathValue)
    end

    -- Verifica se a chave "v2rTlsAllowInsecure" existe em decodedData e a salva
    if decodedData.v2rTlsAllowInsecure and decodedData.v2rTlsAllowInsecure ~= "" and decodedData.v2rTlsAllowInsecure ~= "none" and decodedData.v2rTlsAllowInsecure ~= "N/A" and decodedData.v2rTlsAllowInsecure ~= nil then
        saveResult("\nAllow Insecure", decodedData.v2rTlsAllowInsecure)
    end

    -- Verifica se a chave "v2rKcpMtu" existe em Http:Dec e a salva
    local v2rKcpMtuValue = Http:Dec("v2rKcpMtu")
    if v2rKcpMtuValue and v2rKcpMtuValue ~= "" and v2rKcpMtuValue ~= nil and v2rKcpMtuValue ~= "none" and v2rKcpMtuValue ~= "N/A" then
        saveResult("\nv2rKcpMtu", v2rKcpMtuValue)
    end

    -- Verifica se a chave "v2rMuxConcurrency" existe em Http:Dec e a salva
    local v2rMuxConcurrencyValue = Http:Dec("v2rMuxConcurrency")
    if v2rMuxConcurrencyValue and v2rMuxConcurrencyValue ~= "" and v2rMuxConcurrencyValue ~= nil and v2rMuxConcurrencyValue ~= "none" and v2rMuxConcurrencyValue ~= "N/A" then
        saveResult("\nConcurrency", v2rMuxConcurrencyValue)
    end
    
    -- Verifica se a chave "v2rRawJson" existe em Http:Dec e a salva
    local v2rRawJsonValue = Http:Dec("v2rRawJson")
    if v2rRawJsonValue and v2rRawJsonValue ~= "" and v2rRawJsonValue ~= nil and v2rRawJsonValue ~= "none" and v2rRawJsonValue ~= "N/A" then
       saveResult("\nv2rRawJson", v2rRawJsonValue)
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com direct_v2r
if decodedData.tunnelType == "direct_v2r" then
    handleDirectV2r(decodedData, outputFile)
end

-- Função para lidar com o túnel "hysteria"
function handleHysteria(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "htrServerHost" existe em Http:Dec e a salva
    local htrServerHostValue = Http:Dec("htrServerHost")
    if htrServerHostValue and htrServerHostValue ~= "" and htrServerHostValue ~= nil and htrServerHostValue ~= "N/A" then
        saveResult("\nServidor", htrServerHostValue)
    end

    -- Verifica se a chave "htrServerPort" existe em Http:Dec e a salva
    local htrServerPortValue = Http:Dec("htrServerPort")
    if htrServerPortValue and htrServerPortValue ~= "" and htrServerPortValue ~= nil and htrServerPortValue ~= "N/A" and htrServerPortValue ~= 0 then
        saveResult("Porta do Servidor", htrServerPortValue)
    end

    -- Verifica se a chave "htrProtocol" existe em Http:Dec e a salva
    local htrProtocolValue = Http:Dec("htrProtocol")
    if htrProtocolValue and htrProtocolValue ~= "" and htrProtocolValue ~= nil and htrProtocolValue ~= "N/A" then
        saveResult("\nProtocolo", htrProtocolValue)
    end

    -- Verifica se a chave "htrObfsPassword" existe em Http:Dec e a salva
    local htrObfsPasswordValue = Http:Dec("htrObfsPassword")
    if htrObfsPasswordValue and htrObfsPasswordValue ~= "" and htrObfsPasswordValue ~= nil and htrObfsPasswordValue ~= "N/A" then
        saveResult("\nObfuscation Password", htrObfsPasswordValue)
    end

    -- Verifica se a chave "htrAuthPayloadType" existe em Http:Dec e a salva
    local htrAuthPayloadTypeValue = Http:Dec("htrAuthPayloadType")
    if htrAuthPayloadTypeValue and htrAuthPayloadTypeValue ~= "" and htrAuthPayloadTypeValue ~= nil and htrAuthPayloadTypeValue ~= "N/A" then
        saveResult("\nAuthentication Payload Type", htrAuthPayloadTypeValue)
    end

    -- Verifica se a chave "htrAuthPayloadValue" existe em Http:Dec e a salva
    local htrAuthPayloadValue = Http:Dec("htrAuthPayloadValue")
    if htrAuthPayloadValue and htrAuthPayloadValue ~= "" and htrAuthPayloadValue ~= nil and htrAuthPayloadValue ~= "N/A" then
        saveResult("\nAuthentication Payload", htrAuthPayloadValue)
    end

    -- Verifica se a chave "htrSni" existe em Http:Dec e a salva
    local htrSniValue = Http:Dec("htrSni")
    if htrSniValue and htrSniValue ~= "" and htrSniValue ~= nil and htrSniValue ~= "N/A" then
        saveResult("\nSNI", htrSniValue)
    end

    -- Verifica se a chave "htrAlpn" existe em Http:Dec e a salva
    local htrAlpnValue = Http:Dec("htrAlpn")
    if htrAlpnValue and htrAlpnValue ~= "" and htrAlpnValue ~= nil and htrAlpnValue ~= "N/A" then
        saveResult("\nALPN", htrAlpnValue)
    end

    -- Verifica se a chave "htrTlsAllowInsecure" existe em decodedData e a salva
    if decodedData.htrTlsAllowInsecure and decodedData.htrTlsAllowInsecure ~= "" and decodedData.htrTlsAllowInsecure ~= nil and decodedData.htrTlsAllowInsecure ~= "N/A" then
        saveResult("\nAllow Insecure", decodedData.htrTlsAllowInsecure)
    end

    -- Verifica se a chave "htrCustomCA" existe em Http:Dec e a salva
    local htrCustomCAValue = Http:Dec("htrCustomCA")
    if htrCustomCAValue and htrCustomCAValue ~= "" and htrCustomCAValue ~= nil and htrCustomCAValue ~= "N/A" then
        saveResult("\nCertificates", htrCustomCAValue)
    end
    
    -- Verifica se a chave "htrPortHoppingInterval" existe em Http:Dec e a salva
    local htrPortHoppingIntervalValue = Http:Dec("htrPortHoppingInterval")
    if htrPortHoppingIntervalValue and htrPortHoppingIntervalValue ~= "" and htrPortHoppingIntervalValue ~= nil and htrPortHoppingIntervalValue ~= "N/A" then
        saveResult("\nPort Hopping Interval (second)", htrPortHoppingIntervalValue)
    end

    -- Verifica se a chave "htrMaxUploadSpeed" existe em Http:Dec e a salva
    local htrMaxUploadSpeedValue = Http:Dec("htrMaxUploadSpeed")
    if htrMaxUploadSpeedValue and htrMaxUploadSpeedValue ~= "" and htrMaxUploadSpeedValue ~= nil and htrMaxUploadSpeedValue ~= "N/A" then
        saveResult("\nMax Upload Speed (in Mbps)", htrMaxUploadSpeedValue)
    end

    -- Verifica se a chave "htrMaxDownloadSpeed" existe em Http:Dec e a salva
    local htrMaxDownloadSpeedValue = Http:Dec("htrMaxDownloadSpeed")
    if htrMaxDownloadSpeedValue and htrMaxDownloadSpeedValue ~= "" and htrMaxDownloadSpeedValue ~= nil and htrMaxDownloadSpeedValue ~= "N/A" then
        saveResult("Max Download Speed (in Mbps)", htrMaxDownloadSpeedValue)
    end

    -- Verifica se a chave "htrDisableMtuDiscovery" existe em decodedData e a salva
    if decodedData.htrDisableMtuDiscovery and decodedData.htrDisableMtuDiscovery ~= "" and decodedData.htrDisableMtuDiscovery ~= nil and decodedData.htrDisableMtuDiscovery ~= "N/A" then
        saveResult("\nDisable Path MTU Discovery (RFC 8899)", decodedData.htrDisableMtuDiscovery)
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com hysteria
if decodedData.tunnelType == "hysteria" then
    handleHysteria(decodedData, outputFile)
end

-- Função para lidar com o túnel "dnstt_ssh"
function handleDnsttSsh(decodedData, outputFile)

    -- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}
    
    -- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...

    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a adiciona à tabela de partes da mensagem
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" or type(decodedData.configVersionCode) == "number") and decodedData.configVersionCode ~= "N/A") then
        table.insert(messageParts, "\nCódigo da Versão de Configuração: " .. tostring(decodedData.configVersionCode))
    end
    
    -- Verifica se a chave "overwriteServerData" existe em decodedData e a adiciona à tabela e à mensagem
if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= "N/A" and decodedData.overwriteServerData ~= nil then
    table.insert(messageParts, "\nSubstituir Dados do Servidor: " .. decodedData.overwriteServerData)
end

-- Verifica se a chave "overwriteServerType" existe em decodedData e a adiciona à tabela e à mensagem
if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
    table.insert(messageParts, "\nSubstituir Tipo de Servidor: " .. decodedData.overwriteServerType)
end

-- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a adiciona à tabela e à mensagem
if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
    table.insert(messageParts, "\nSubstituir a Porta Proxy do Servidor: " .. decodedData.overwriteServerProxyPort)
end

-- Adiciona o valor de "dnsttResolverProfile" de decodedData à tabela de partes da mensagem com uma verificação segura
    if decodedData.dnsttResolverProfile and type(decodedData.dnsttResolverProfile) == "string" then
        table.insert(messageParts, "\nDNS Resolver: " .. decodedData.dnsttResolverProfile)
    end

    -- Usa Http:Dec para decodificar a chave "dnsttDnsResolverAddr"
    local dnsttDnsResolverAddrValue = Http:Dec("dnsttDnsResolverAddr")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if dnsttDnsResolverAddrValue and type(dnsttDnsResolverAddrValue) == "string" and dnsttDnsResolverAddrValue ~= "" and dnsttDnsResolverAddrValue ~= "N/A" then
        table.insert(messageParts, "\nEndereço do DNS Resolver: " .. dnsttDnsResolverAddrValue)
    end

    -- Adiciona o valor de "dnsttResolverMode" de decodedData à tabela de partes da mensagem com uma verificação segura
    if decodedData.dnsttResolverMode and type(decodedData.dnsttResolverMode) == "string" then
        table.insert(messageParts, "\nModo DNSTT Resolver: " .. decodedData.dnsttResolverMode)
    end

    -- Usa Http:Dec para decodificar a chave "dnsttNameserver"
    local dnsttNameserverValue = Http:Dec("dnsttNameserver")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if dnsttNameserverValue and type(dnsttNameserverValue) == "string" and dnsttNameserverValue ~= "" and dnsttNameserverValue ~= "N/A" then
        table.insert(messageParts, "\nDNSTT Nameserver: " .. dnsttNameserverValue)
    end

    -- Usa Http:Dec para decodificar a chave "dnsttPublicKey"
    local dnsttPublicKeyValue = Http:Dec("dnsttPublicKey")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if dnsttPublicKeyValue and type(dnsttPublicKeyValue) == "string" and dnsttPublicKeyValue ~= "" and dnsttPublicKeyValue ~= "N/A" then
        table.insert(messageParts, "\nChave publica DNSTT: " .. dnsttPublicKeyValue)
    end

    -- Usa Http:Dec para decodificar a chave "host"
    local hostValue = Http:Dec("host")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if hostValue and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A" then
        table.insert(messageParts, "\nConta SSH: " .. hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a adiciona à tabela de partes da mensagem
if decodedData.port and decodedData.port ~= 0 and decodedData.port ~= "0" and ((type(decodedData.port) == "string" or type(decodedData.port) == "number") and decodedData.port ~= "N/A") then
    table.insert(messageParts, "Porta SSH: " .. tostring(decodedData.port))
end

    -- Usa Http:Dec para decodificar a chave "user"
    local userValue = Http:Dec("user")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if userValue and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A" then
        table.insert(messageParts, "Usuário: " .. userValue)
    end
    
    -- Usa Http:Dec para decodificar a chave "password"
    local passwordValue = Http:Dec("password")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if passwordValue and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A" then
        table.insert(messageParts, "Senha: " .. passwordValue)
    end
    
    -- Usa Http:Dec para decodificar a chave "publicKey"
    local publicKeyValue = Http:Dec("publicKey")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if publicKeyValue and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A" then
        table.insert(messageParts, "\nChave pública: " .. publicKeyValue)
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com dnstt_ssh
if decodedData.tunnelType == "dnstt_ssh" then
    handleDnsttSsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "direct_ssh"
function handleDirectSsh(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para salvar um valor de forma segura
    local function saveResultSafely(key, value)
        -- Verifica se o valor não é nulo
        if value ~= nil and value ~= "0" and value ~= 0 then
            -- Se o valor for uma string não vazia e não for "N/A," salva o resultado
            if type(value) == "string" and value ~= "" and value ~= "N/A" then
                saveResult(key, value)
            -- Se o valor for um número, converte-o para uma string e salva o resultado
            elseif type(value) == "number" then
                saveResult(key, tostring(value))
            end
        end
    end

    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
   -- local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Usando saveResultSafely diretamente para campos relacionados a decodedData
-- Salva o valor de "configVersionCode" de decodedData com uma verificação segura
saveResultSafely("\nCódigo da Versão de Configuração", decodedData.configVersionCode)

-- Salva o valor de "overwriteServerData" de decodedData com uma verificação segura
saveResultSafely("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)

-- Salva o valor de "overwriteServerType" de decodedData com uma verificação segura
saveResultSafely("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)

-- Salva o valor de "overwriteServerProxyPort" de decodedData com uma verificação segura
saveResultSafely("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    
    -- Usa Http:Dec para decodificar a chave "host"
local hostValue = Http:Dec("host")
-- Salva o resultado com uma verificação segura
saveResultSafely("\nConta SSH", hostValue)

-- Salva o valor de "port" de decodedData com uma verificação segura
saveResultSafely("Porta SSH", decodedData.port)

-- Usa Http:Dec para decodificar a chave "user"
local userValue = Http:Dec("user")
-- Salva o resultado com uma verificação segura
saveResultSafely("Usuário", userValue)

-- Usa Http:Dec para decodificar a chave "password"
local passwordValue = Http:Dec("password")
-- Salva o resultado com uma verificação segura
saveResultSafely("Senha", passwordValue)

-- Usa Http:Dec para decodificar a chave "publicKey"
local publicKeyValue = Http:Dec("publicKey")
-- Salva o resultado com uma verificação segura
saveResultSafely("\nChave pública", publicKeyValue)

-- Verifica se nenhum valor válido foi encontrado usando decodedData
    local hasValidDecodedData = (decodedData.data ~= nil and type(decodedData.data) == "string" and decodedData.data ~= "" and decodedData.data ~= "N/A")

    -- Verifica se nenhum valor válido foi encontrado usando Http:Dec
-- Define a variável hasValidHttpDec com base em verificações de valor para várias variáveis decodificadas
local hasValidHttpDec = (hostValue ~= nil and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A") or
                       (userValue ~= nil and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A") or
                       (passwordValue ~= nil and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A") or
                       (publicKeyValue ~= nil and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A")

    -- Se ambos os métodos não retornarem valores válidos
-- Verifica se não há valores válidos nem em decodedData nem em Http:Dec
if not hasValidDecodedData and not hasValidHttpDec then
    -- Exibe uma mensagem indicando a falta de valores válidos
    saveResult("Primeiro as primas", "Pai não encontrado")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com direct_ssh
if decodedData.tunnelType == "direct_ssh" then
    handleDirectSsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "direct_payload_ssh"
function handleDirectPayloadSsh(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para salvar um valor de forma segura
    local function saveResultSafely(key, value)
        -- Verifica se o valor não é nulo
        if value ~= nil and value ~= "0" and value ~= 0 then
            -- Se o valor for uma string não vazia e não for "N/A," salva o resultado
            if type(value) == "string" and value ~= "" and value ~= "N/A" then
                saveResult(key, value)
            -- Se o valor for um número, converte-o para uma string e salva o resultado
            elseif type(value) == "number" then
                saveResult(key, tostring(value))
            end
        end
    end

    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Usando saveResultSafely diretamente para campos relacionados a decodedData
-- Salva o valor de "configVersionCode" de decodedData com uma verificação segura
saveResultSafely("\nCódigo da Versão de Configuração", decodedData.configVersionCode)

-- Salva o valor de "overwriteServerData" de decodedData com uma verificação segura
saveResultSafely("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)

-- Salva o valor de "overwriteServerType" de decodedData com uma verificação segura
saveResultSafely("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)

-- Salva o valor de "overwriteServerProxyPort" de decodedData com uma verificação segura
saveResultSafely("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    
    -- Usa Http:Dec para decodificar a chave "host"
local hostValue = Http:Dec("host")
-- Salva o resultado com uma verificação segura
saveResultSafely("\nConta SSH", hostValue)

-- Salva o valor de "port" de decodedData com uma verificação segura
saveResultSafely("Porta SSH", decodedData.port)

-- Usa Http:Dec para decodificar a chave "user"
local userValue = Http:Dec("user")
-- Salva o resultado com uma verificação segura
saveResultSafely("Usuário", userValue)

-- Usa Http:Dec para decodificar a chave "password"
local passwordValue = Http:Dec("password")
-- Salva o resultado com uma verificação segura
saveResultSafely("Senha", passwordValue)

-- Usa Http:Dec para decodificar a chave "publicKey"
local publicKeyValue = Http:Dec("publicKey")
-- Salva o resultado com uma verificação segura
saveResultSafely("\nChave pública", publicKeyValue)

-- Usa Http:Dec para decodificar a chave "payload"
local payloadValue = Http:Dec("payload")
-- Salva o resultado com uma verificação segura
saveResultSafely("\nPayload", payloadValue)

    -- Verifica se nenhum valor válido foi encontrado usando decodedData
    local hasValidDecodedData = (decodedData.data ~= nil and type(decodedData.data) == "string" and decodedData.data ~= "" and decodedData.data ~= "N/A")

    -- Verifica se nenhum valor válido foi encontrado usando Http:Dec
-- Define a variável hasValidHttpDec com base em verificações de valor para várias variáveis decodificadas
local hasValidHttpDec = (hostValue ~= nil and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A") or
                       (userValue ~= nil and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A") or
                       (passwordValue ~= nil and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A") or
                       (publicKeyValue ~= nil and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A") or
                       (payloadValue ~= nil and type(payloadValue) == "string" and payloadValue ~= "" and payloadValue ~= "N/A")

    -- Se ambos os métodos não retornarem valores válidos
-- Verifica se não há valores válidos nem em decodedData nem em Http:Dec
if not hasValidDecodedData and not hasValidHttpDec then
    -- Exibe uma mensagem indicando a falta de valores válidos
    saveResult("Primeiro as primas", "Pai não encontrado")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com direct_payload_ssh
if decodedData.tunnelType == "direct_payload_ssh" then
    handleDirectPayloadSsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "proxy_payload_ssh"
function handleProxyPayloadSsh(decodedData, outputFile)
    -- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

    -- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end

    -- Resto da função com a coleta e salvamento de dados...

    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
   -- local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    --[[-- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end]]--
    
    --[[-- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
if decodedData.overwriteServerData and type(decodedData.overwriteServerData) == "string" and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
    saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
end]]--

-- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
if decodedData.overwriteServerData and type(decodedData.overwriteServerData) == "string" and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
    table.insert(messageParts, "\nSubstituir Dados do Servidor: " .. decodedData.overwriteServerData)
end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Usa Http:Dec para decodificar a chave "host"
    local hostValue = Http:Dec("host")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if hostValue and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A" and hostValue ~= nil then
        table.insert(messageParts, "\nConta SSH: " .. hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a adiciona à tabela de partes da mensagem
if decodedData.port and decodedData.port ~= nil and decodedData.port ~= "N/A" and decodedData.port ~= "" and decodedData.port ~= 0 and decodedData.port ~= "0" then
    table.insert(messageParts, "Porta SSH: " .. tostring(decodedData.port))
end

    -- Usa Http:Dec para decodificar a chave "user"
    local userValue = Http:Dec("user")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if userValue and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A" and userValue ~= nil then
        table.insert(messageParts, "Usuário: " .. userValue)
    end

    -- Usa Http:Dec para decodificar a chave "password"
    local passwordValue = Http:Dec("password")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if passwordValue and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A" then
        table.insert(messageParts, "Senha: " .. passwordValue)
    end

    -- Usa Http:Dec para decodificar a chave "publicKey"
    local publicKeyValue = Http:Dec("publicKey")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if publicKeyValue and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A" then
        table.insert(messageParts, "\nChave pública: " .. publicKeyValue)
    end

    -- Usa Http:Dec para decodificar a chave "payload"
    local payloadValue = Http:Dec("payload")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if payloadValue and type(payloadValue) == "string" and payloadValue ~= "" and payloadValue ~= "N/A" then
        table.insert(messageParts, "\n\nPayload: " .. payloadValue)
    end

    -- Usa Http:Dec para decodificar a chave "remoteProxy"
    local remoteProxyValue = Http:Dec("remoteProxy")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if remoteProxyValue and type(remoteProxyValue) == "string" and remoteProxyValue ~= "" and remoteProxyValue ~= "N/A" then
    table.insert(messageParts, "\n\nProxy: " .. remoteProxyValue)
    end

    -- Usa Http:Dec para decodificar a chave "remoteProxyUsername"
    local remoteProxyUsernameValue = Http:Dec("remoteProxyUsername")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if remoteProxyUsernameValue and type(remoteProxyUsernameValue) == "string" and remoteProxyUsernameValue ~= "" and remoteProxyUsernameValue ~= "N/A" then
        table.insert(messageParts, "Usuário do Proxy: " .. remoteProxyUsernameValue)
    end

    -- Usa Http:Dec para decodificar a chave "remoteProxyPassword"
    local remoteProxyPasswordValue = Http:Dec("remoteProxyPassword")
    -- Adiciona o resultado à tabela de partes da mensagem com uma verificação segura
    if remoteProxyPasswordValue and type(remoteProxyPasswordValue) == "string" and remoteProxyPasswordValue ~= "" and remoteProxyPasswordValue ~= "N/A" then
        table.insert(messageParts, "Senha do Proxy: " .. remoteProxyPasswordValue)
    end

    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com proxy_payload_ssh
if decodedData.tunnelType == "proxy_payload_ssh" then
    handleProxyPayloadSsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "ssl_proxy_payload_ssh"
function handleSslProxyPayloadSsh(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
   -- local jsonData = json.decode(jsonContent)
   -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end
    
    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "host" existe em Http:Dec e a salva
    local hostValue = Http:Dec("host")
    if hostValue and type(hostValue) == "string" and hostValue ~= "" and hostValue ~= "N/A" then
        saveResult("\nConta SSH", hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a salva
    if decodedData.port and decodedData.port ~= "N/A" and decodedData.port ~= 0 and decodedData.port ~= "0" and ((type(decodedData.port) == "string" and decodedData.port ~= "") or (type(decodedData.port) == "number")) then
        saveResult("Porta SSH", tostring(decodedData.port))
    end

    -- Verifica se a chave "user" existe em Http:Dec e a salva
    local userValue = Http:Dec("user")
    if userValue and type(userValue) == "string" and userValue ~= "" and userValue ~= "N/A" and userValue ~= nil then
        saveResult("Usuário", userValue)
    end

    -- Verifica se a chave "password" existe em Http:Dec e a salva
    local passwordValue = Http:Dec("password")
    if passwordValue and type(passwordValue) == "string" and passwordValue ~= "" and passwordValue ~= "N/A" and passwordValue ~= nil then
        saveResult("Senha", passwordValue)
    end

    -- Verifica se a chave "publicKey" existe em Http:Dec e a salva
    local publicKeyValue = Http:Dec("publicKey")
    if publicKeyValue and type(publicKeyValue) == "string" and publicKeyValue ~= "" and publicKeyValue ~= "N/A" and publicKeyValue ~= nil then
        saveResult("\nChave pública", publicKeyValue)
    end

    -- Verifica se a chave "payload" existe em Http:Dec e a salva
    local payloadValue = Http:Dec("payload")
    if payloadValue and type(payloadValue) == "string" and payloadValue ~= "" and payloadValue ~= nil and payloadValue ~= "N/A" then
        saveResult("\nPayload", payloadValue)
    end

    -- Verifica se a chave "remoteProxy" existe em Http:Dec e a salva
    local remoteProxyValue = Http:Dec("remoteProxy")
    if remoteProxyValue and type(remoteProxyValue) == "string" and remoteProxyValue ~= "" and remoteProxyValue ~= "N/A" and remoteProxyValue ~= nil then
        saveResult("\nProxy", remoteProxyValue)
    end

    -- Verifica se a chave "remoteProxyUsername" existe em Http:Dec e a salva
    local remoteProxyUsernameValue = Http:Dec("remoteProxyUsername")
    if remoteProxyUsernameValue and type(remoteProxyUsernameValue) == "string" and remoteProxyUsernameValue ~= "" and remoteProxyUsernameValue ~= "N/A" and remoteProxyUsernameValue ~= nil then
        saveResult("Usuário do Proxy", remoteProxyUsernameValue)
    end

    -- Verifica se a chave "remoteProxyPassword" existe em Http:Dec e a salva
    local remoteProxyPasswordValue = Http:Dec("remoteProxyPassword")
    if remoteProxyPasswordValue and type(remoteProxyPasswordValue) == "string" and remoteProxyPasswordValue ~= "" and remoteProxyPasswordValue ~= "N/A" and remoteProxyPasswordValue ~= nil then
        saveResult("Senha do Proxy", remoteProxyPasswordValue)
    end

    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    local sniHostnameValue = Http:Dec("sniHostname")
    if sniHostnameValue and type(sniHostnameValue) == "string" and sniHostnameValue ~= "" and sniHostnameValue ~= "N/A" and sniHostnameValue ~= nil then
        saveResult("\nSNI", sniHostnameValue)
        else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    saveResult("\nSNI", "facebook.com")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end
   
-- Chamada para lidar com ssl_proxy_payload_ssh
if decodedData.tunnelType == "ssl_proxy_payload_ssh" then
    handleSslProxyPayloadSsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "ssl_ssh"
function handleSslSsh(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
-- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "host" existe em Http:Dec e a salva
    local hostValue = Http:Dec("host")
    if hostValue and hostValue ~= "" and hostValue ~= nil and hostValue ~= "N/A" then
        saveResult("\nConta SSH", hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a salva
    if decodedData.port and decodedData.port ~= "" and decodedData.port ~= 0 and decodedData.port ~= "0" and decodedData.port ~= nil and decodedData.port ~= "N/A" then
        saveResult("Porta SSH", decodedData.port)
    end

    -- Verifica se a chave "user" existe em Http:Dec e a salva
    local userValue = Http:Dec("user")
    if userValue and userValue ~= "" and userValue ~= nil and userValue ~= "N/A" then
        saveResult("Usuário", userValue)
    end

    -- Verifica se a chave "password" existe em Http:Dec e a salva
    local passwordValue = Http:Dec("password")
    if passwordValue and passwordValue ~= "" and passwordValue ~= nil and passwordValue ~= "N/A" then
        saveResult("Senha", passwordValue)
    end

    -- Verifica se a chave "publicKey" existe em Http:Dec e a salva
local publicKeyValue = Http:Dec("publicKey")
if publicKeyValue and publicKeyValue ~= "" and publicKeyValue ~= "N/A" and publicKeyValue ~= nil then
    saveResult("\nChave pública", publicKeyValue)
    end
    
    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    local sniHostnameValue = Http:Dec("sniHostname")
    if sniHostnameValue and sniHostnameValue ~= "" and sniHostnameValue ~= nil and sniHostnameValue ~= "N/A" then
        saveResult("\nSNI", sniHostnameValue)
        else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    saveResult("\nSNI", "facebook.com")
end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com ssl_ssh
if decodedData.tunnelType == "ssl_ssh" then
    handleSslSsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "ssl_proxy_ssh"
function handleSslProxySsh(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
-- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end

    -- Verifica se a chave "host" existe em Http:Dec e a salva
    local hostValue = Http:Dec("host")
    if hostValue and hostValue ~= "" and hostValue ~= nil and hostValue ~= "N/A" then
        saveResult("\nConta SSH", hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a salva
    if decodedData.port and decodedData.port ~= "" and decodedData.port ~= nil and decodedData.port ~= "N/A" and decodedData.port ~= 0 and decodedData.port ~= "0" then
        saveResult("Porta SSH", decodedData.port)
    end

    -- Verifica se a chave "user" existe em Http:Dec e a salva
    local userValue = Http:Dec("user")
    if userValue and userValue ~= "" and userValue ~= nil and userValue ~= "N/A" then
        saveResult("Usuário", userValue)
    end

    -- Verifica se a chave "password" existe em Http:Dec e a salva
    local passwordValue = Http:Dec("password")
    if passwordValue and passwordValue ~= "" and passwordValue ~= nil and passwordValue ~= "N/A" then
        saveResult("Senha", passwordValue)
    end

    -- Verifica se a chave "publicKey" existe em Http:Dec e a salva
local publicKeyValue = Http:Dec("publicKey")
if publicKeyValue and publicKeyValue ~= "" and publicKeyValue ~= "N/A" and publicKeyValue ~= nil then
    saveResult("\nChave pública", publicKeyValue)
end

    -- Verifica se a chave "remoteProxy" existe em Http:Dec e a salva
    local remoteProxyValue = Http:Dec("remoteProxy")
    if remoteProxyValue and remoteProxyValue ~= "" and remoteProxyValue ~= nil and remoteProxyValue ~= "N/A" then
        saveResult("\nProxy", remoteProxyValue)
    end

    -- Verifica se a chave "remoteProxyUsername" existe em Http:Dec e a salva
    local remoteProxyUsernameValue = Http:Dec("remoteProxyUsername")
    if remoteProxyUsernameValue and remoteProxyUsernameValue ~= "" and remoteProxyUsernameValue ~= "N/A" and remoteProxyUsernameValue ~= nil then
        saveResult("Usuário do Proxy", remoteProxyUsernameValue)
    end

    -- Verifica se a chave "remoteProxyPassword" existe em Http:Dec e a salva
    local remoteProxyPasswordValue = Http:Dec("remoteProxyPassword")
    if remoteProxyPasswordValue and remoteProxyPasswordValue ~= "" and remoteProxyPasswordValue ~= nil and remoteProxyPasswordValue ~= "N/A" then
        saveResult("Senha do Proxy", remoteProxyPasswordValue)
    end
    
    -- Verifica se a chave "sniHostname" existe em Http:Dec e a salva
    local sniHostnameValue = Http:Dec("sniHostname")
    if sniHostnameValue and sniHostnameValue ~= "" and sniHostnameValue ~= nil and sniHostnameValue ~= "N/A" then
        saveResult("\nSNI", sniHostnameValue)
        else
        -- Caso a chave "sniHostname" não exista, exibe e salva "SNI: facebook.com"
    saveResult("\nSNI", "facebook.com")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com ssl_proxy_ssh
if decodedData.tunnelType == "ssl_proxy_ssh" then
    handleSslProxySsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "proxy_ssh"
function handleProxySsh(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
-- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end

    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end
    
    -- Verifica se a chave "host" existe em Http:Dec e a salva
    local hostValue = Http:Dec("host")
    if hostValue and hostValue ~= "" then
        saveResult("\nConta SSH", hostValue)
    end

    -- Verifica se a chave "port" existe em decodedData e a salva
    if decodedData.port and decodedData.port ~= "" and decodedData.port ~= nil and decodedData.port ~= "N/A" and decodedData.port ~= 0 and decodedData.port ~= "0" then
        saveResult("Porta SSH", decodedData.port)
    end

    -- Verifica se a chave "user" existe em Http:Dec e a salva
    local userValue = Http:Dec("user")
    if userValue and userValue ~= "" and userValue ~= nil and userValue ~= "N/A" then
        saveResult("Usuário", userValue)
    end

    -- Verifica se a chave "password" existe em Http:Dec e a salva
    local passwordValue = Http:Dec("password")
    if passwordValue and passwordValue ~= "" and passwordValue ~= nil and passwordValue ~= "N/A" then
        saveResult("Senha", passwordValue)
    end

    -- Verifica se a chave "publicKey" existe em Http:Dec e a salva
local publicKeyValue = Http:Dec("publicKey")
if publicKeyValue and publicKeyValue ~= "" and publicKeyValue ~= "N/A" and publicKeyValue ~= nil then
    saveResult("\nChave pública", publicKeyValue)
end

    -- Verifica se a chave "remoteProxy" existe em Http:Dec e a salva
    local remoteProxyValue = Http:Dec("remoteProxy")
    if remoteProxyValue and remoteProxyValue ~= "" and remoteProxyValue ~= nil and remoteProxyValue ~= "N/A" then
        saveResult("\nProxy", remoteProxyValue)
    end

    -- Verifica se a chave "remoteProxyUsername" existe em Http:Dec e a salva
    local remoteProxyUsernameValue = Http:Dec("remoteProxyUsername")
    if remoteProxyUsernameValue and remoteProxyUsernameValue ~= "" and remoteProxyUsernameValue ~= nil and remoteProxyUsernameValue ~= "N/A" then
        saveResult("Usuário do Proxy", remoteProxyUsernameValue)
    end

    -- Verifica se a chave "remoteProxyPassword" existe em Http:Dec e a salva
    local remoteProxyPasswordValue = Http:Dec("remoteProxyPassword")
    if remoteProxyPasswordValue and remoteProxyPasswordValue ~= "" and remoteProxyPasswordValue ~= nil and remoteProxyPasswordValue ~= "N/A" then
        saveResult("Senha do Proxy", remoteProxyPasswordValue)
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com proxy_ssh
if decodedData.tunnelType == "proxy_ssh" then
    handleProxySsh(decodedData, outputFile)
end

-- Função para lidar com o túnel "direct_v2r_vmess"
function handleDirect_v2r_Vmess(decodedData, outputFile)

-- Inicializa a tabela para armazenar as partes da mensagem
    local messageParts = {}

-- Verifica se messageParts é uma tabela válida, se não, cria uma nova tabela
    if not messageParts then
        messageParts = {}
    end
    
    -- Resto da função com a coleta e salvamento de dados...
    
    -- Função para salvar um valor se ele não for nulo, vazio, número ou "N/A"
    local function saveIfValid(key, value)
        if value ~= nil and type(value) == "string" and value ~= "" and value ~= "none" and value ~= "N/A" or type(value) == "number" then
            saveResult(key, value)
        end
    end

    -- Função para converter o timestamp em data
    function timestampToData(timestamp)
        local success, dataFormatada = pcall(function()
            local numericTimestamp = tonumber(timestamp)
            if numericTimestamp then
                return os.date("%d/%m/%Y %H:%M:%S", numericTimestamp)
            end
            return "primeiro as primas"
        end)
        return success and dataFormatada or "primeiro as primas"
    end

    -- Decodifica o JSON
    --local jsonData = json.decode(jsonContent)
    -- jsonData agora contém o conteúdo do arquivo decrypt3_x9.txt
local jsonData = decodedData

    -- Obtém o valor do campo "configTimestamp" e converte para data
    local dataFormatada = timestampToData(jsonData.configTimestamp)

    -- Verifica se data é válida e a salva
    if dataFormatada ~= nil and type(dataFormatada) == "string" and dataFormatada ~= "" and dataFormatada ~= "N/A" then
        saveResult("Data/hora de Configuração", dataFormatada)
    end
    
    -- Verifica se a chave "configVersionCode" existe em decodedData e a salva (incluindo números)
    if decodedData.configVersionCode and ((type(decodedData.configVersionCode) == "string" and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or (type(decodedData.configVersionCode) == "number")) then
        saveResult("\nCódigo da Versão de Configuração", tostring(decodedData.configVersionCode))
    end

    -- Verifica se a chave "overwriteServerData" existe em decodedData e a salva
    if decodedData.overwriteServerData and decodedData.overwriteServerData ~= "" and decodedData.overwriteServerData ~= nil and decodedData.overwriteServerData ~= "N/A" then
        saveResult("\nSubstituir Dados do Servidor", decodedData.overwriteServerData)
    end

    -- Verifica se a chave "overwriteServerType" existe em decodedData e a salva
    if decodedData.overwriteServerType and decodedData.overwriteServerType ~= "" and decodedData.overwriteServerType ~= "0" and decodedData.overwriteServerType ~= 0 and decodedData.overwriteServerType ~= nil and decodedData.overwriteServerType ~= "N/A" then
        saveResult("\nSubstituir Tipo de Servidor", decodedData.overwriteServerType)
    end

    -- Verifica se a chave "overwriteServerProxyPort" existe em decodedData e a salva
    if decodedData.overwriteServerProxyPort and decodedData.overwriteServerProxyPort ~= "" and decodedData.overwriteServerProxyPort ~= "0" and decodedData.overwriteServerProxyPort ~= 0 and decodedData.overwriteServerProxyPort ~= nil and decodedData.overwriteServerProxyPort ~= "N/A" then
        saveResult("\nSubstituir a Porta Proxy do Servidor", decodedData.overwriteServerProxyPort)
    end
    
    -- Verifica se a chave "v2rCoreType" existe em Http:Dec e a salva
    local v2rCoreTypeValue = Http:Dec("v2rCoreType")
    saveIfValid("\nCore", v2rCoreTypeValue)

    -- Verifica se a chave "v2rFlowType" existe em Http:Dec e a salva
    local v2rFlowTypeValue = Http:Dec("v2rFlowType")
    saveIfValid("\nFlow", v2rFlowTypeValue)

    -- Verifica se a chave "v2rAdvancedSettings" existe em decodedData e a salva
    saveIfValid("\nAdvanced Settings", decodedData.v2rAdvancedSettings)

    -- Verifica se a chave "v2rQuicHeaderType" existe em Http:Dec e a salva
    local v2rQuicHeaderTypeValue = Http:Dec("v2rQuicHeaderType")
    saveIfValid("\nv2rQuicHeaderType", v2rQuicHeaderTypeValue)

    -- Verifica se a chave "v2rQuicKey" existe em Http:Dec e a salva
    local v2rQuicKeyValue = Http:Dec("v2rQuicKey")
    saveIfValid("\nv2rQuicKey", v2rQuicKeyValue)

    -- Verifica se a chave "v2rTcpHeaderType" existe em Http:Dec e a salva
    local v2rTcpHeaderTypeValue = Http:Dec("v2rTcpHeaderType")
    saveIfValid("\nv2rTcpHeaderType", v2rTcpHeaderTypeValue)

    -- Verifica se a chave "v2rTcpHttpRequest" existe em Http:Dec e a salva
    local v2rTcpHttpRequestValue = Http:Dec("v2rTcpHttpRequest")
    saveIfValid("\nv2rTcpHttpRequest", v2rTcpHttpRequestValue)

    -- Verifica se a chave "v2rTleFingerprintType" existe em Http:Dec e a salva
    local v2rTleFingerprintTypeValue = Http:Dec("v2rTleFingerprintType")
    saveIfValid("\nTLS Fingerprint", v2rTleFingerprintTypeValue)

    -- Verifica se a chave "v2rTleSecurityType" existe em Http:Dec e a salva
    local v2rTleSecurityTypeValue = Http:Dec("v2rTleSecurityType")
    saveIfValid("\nv2rTleSecurityType", v2rTleSecurityTypeValue)

    -- Verifica se a chave "v2rHost" existe em Http:Dec e a salva
    local v2rHostValue = Http:Dec("v2rHost")
    saveIfValid("\nServidor", v2rHostValue)

    -- Verifica se a chave "v2rH2Host" existe em Http:Dec e a salva
    local v2rH2HostValue = Http:Dec("v2rH2Host")
    saveIfValid("\nServidor", v2rH2HostValue)

    -- Verifica se a chave "v2rPort" existe em Http:Dec e a salva
    local v2rPortValue = Http:Dec("v2rPort")
    saveIfValid("\nPorta do Servidor", v2rPortValue)

    -- Verifica se a chave "v2rNetwork" existe em Http:Dec e a salva
    local v2rNetworkValue = Http:Dec("v2rNetwork")
    saveIfValid("\nTipo de rede", v2rNetworkValue)

    -- Verifica se a chave "v2rUserId" existe em Http:Dec e a salva
    local v2rUserIdValue = Http:Dec("v2rUserId")
    saveIfValid("\nID do usuário", v2rUserIdValue)

    -- Verifica se a chave "v2rAlterId" existe em Http:Dec e a salva
    local v2rAlterIdValue = Http:Dec("v2rAlterId")
    saveIfValid("\nAlterar ID", v2rAlterIdValue)

    -- Verifica se a chave "v2rProtocol" existe em Http:Dec e a salva
    local v2rProtocolValue = Http:Dec("v2rProtocol")
    saveIfValid("\nProtocolo", v2rProtocolValue)

    -- Verifica se a chave "v2rQuicSecurity" existe em Http:Dec e a salva
    local v2rQuicSecurityValue = Http:Dec("v2rQuicSecurity")
    saveIfValid("\nSegurança Rápida", v2rQuicSecurityValue)

    -- Verifica se a chave "v2rSsSecurity" existe em Http:Dec e a salva
    local v2rSsSecurityValue = Http:Dec("v2rSsSecurity")
    saveIfValid("\nSegurança Ss", v2rSsSecurityValue)

    -- Verifica se a chave "v2rVlessSecurity" existe em Http:Dec e a salva
    local v2rVlessSecurityValue = Http:Dec("v2rVlessSecurity")
    saveIfValid("\nSegurança Vless", v2rVlessSecurityValue)

    -- Verifica se a chave "v2rVmessSecurity" existe em Http:Dec e a salva
    local v2rVmessSecurityValue = Http:Dec("v2rVmessSecurity")
    saveIfValid("\nSegurança Vmess", v2rVmessSecurityValue)

    -- Verifica se a chave "v2rWsHeader" existe em Http:Dec e a salva
    local v2rWsHeaderValue = Http:Dec("v2rWsHeader")
    saveIfValid("\nv2rWsHeader", v2rWsHeaderValue)

    -- Verifica se a chave "v2rTlsSni" existe em Http:Dec e a salva
    local v2rTlsSniValue = Http:Dec("v2rTlsSni")
    saveIfValid("\nv2rTlsSNI", v2rTlsSniValue)

    -- Verifica se a chave "v2rTlsAlpn" existe em Http:Dec e a salva
    local v2rTlsAlpnValue = Http:Dec("v2rTlsAlpn")
    saveIfValid("\nv2rTlsALPN", v2rTlsAlpnValue)

    -- Verifica se a chave "v2rWsPath" existe em Http:Dec e a salva
    local v2rWsPathValue = Http:Dec("v2rWsPath")
    saveIfValid("\nv2rWsPath", v2rWsPathValue)

    -- Verifica se a chave "v2rH2Path" existe em Http:Dec e a salva
    local v2rH2PathValue = Http:Dec("v2rH2Path")
    saveIfValid("\nv2rH2Path", v2rH2PathValue)

    -- Verifica se a chave "v2rTlsAllowInsecure" existe em decodedData e a salva
    saveIfValid("\nAllow Insecure", decodedData.v2rTlsAllowInsecure)

    -- Verifica se a chave "v2rKcpMtu" existe em Http:Dec e a salva
    local v2rKcpMtuValue = Http:Dec("v2rKcpMtu")
    saveIfValid("\nv2rKcpMtu", v2rKcpMtuValue)

    -- Verifica se a chave "v2rMuxConcurrency" existe em Http:Dec e a salva
    local v2rMuxConcurrencyValue = Http:Dec("v2rMuxConcurrency")
    saveIfValid("\nConcurrency", v2rMuxConcurrencyValue)
    
    -- Verifica se a chave "v2rRawJson" existe em Http:Dec e a salva
    local v2rRawJsonValue = Http:Dec("v2rRawJson")
    saveIfValid("\nv2rRawJson", v2rRawJsonValue)

    -- Verifica se nenhum valor válido foi encontrado usando decodedData
    local hasValidDecodedData = (data ~= nil and data ~= "" and data ~= "N/A") or
                                (decodedData.configVersionCode ~= nil and decodedData.configVersionCode ~= "" and decodedData.configVersionCode ~= "N/A") or
                                (decodedData.v2rAdvancedSettings ~= nil and decodedData.v2rAdvancedSettings ~= "" and decodedData.v2rAdvancedSettings ~= "N/A") or
                                (decodedData.v2rQuicHeaderType ~= nil and decodedData.v2rQuicHeaderType ~= "" and decodedData.v2rQuicHeaderType ~= "N/A") or
                                (decodedData.v2rQuicKey ~= nil and decodedData.v2rQuicKey ~= "" and decodedData.v2rQuicKey ~= "N/A") or
                                (decodedData.v2rTcpHeaderType ~= nil and decodedData.v2rTcpHeaderType ~= "" and decodedData.v2rTcpHeaderType ~= "N/A") or
                                (decodedData.v2rTcpHttpRequest ~= nil and decodedData.v2rTcpHttpRequest ~= "" and decodedData.v2rTcpHttpRequest ~= "N/A") or
                                (decodedData.v2rTlsAllowInsecure ~= nil and decodedData.v2rTlsAllowInsecure ~= "" and decodedData.v2rTlsAllowInsecure ~= "N/A")

    -- Verifica se nenhum valor válido foi encontrado usando Http:Dec
    local hasValidHttpDec = (v2rCoreTypeValue ~= nil and v2rCoreTypeValue ~= "" and v2rCoreTypeValue ~= "N/A") or
                           (v2rFlowTypeValue ~= nil and v2rFlowTypeValue ~= "" and v2rFlowTypeValue ~= "N/A") or
                           (v2rQuicHeaderTypeValue ~= nil and v2rQuicHeaderTypeValue ~= "" and v2rQuicHeaderTypeValue ~= "N/A") or
                           (v2rQuicKeyValue ~= nil and v2rQuicKeyValue ~= "" and v2rQuicKeyValue ~= "N/A") or
                           (v2rTcpHeaderTypeValue ~= nil and v2rTcpHeaderTypeValue ~= "" and v2rTcpHeaderTypeValue ~= "N/A") or
                           (v2rTcpHttpRequestValue ~= nil and v2rTcpHttpRequestValue ~= "" and v2rTcpHttpRequestValue ~= "N/A") or
                           (v2rTleFingerprintTypeValue ~= nil and v2rTleFingerprintTypeValue ~= "" and v2rTleFingerprintTypeValue ~= "N/A") or
                           (v2rTleSecurityTypeValue ~= nil and v2rTleSecurityTypeValue ~= "" and v2rTleSecurityTypeValue ~= "N/A") or
                           (v2rHostValue ~= nil and v2rHostValue ~= "" and v2rHostValue ~= "N/A") or
                           (v2rH2HostValue ~= nil and v2rH2HostValue ~= "" and v2rH2HostValue ~= "N/A") or
                           (v2rPortValue ~= nil and v2rPortValue ~= "" and v2rPortValue ~= "N/A") or
                           (v2rNetworkValue ~= nil and v2rNetworkValue ~= "" and v2rNetworkValue ~= "N/A") or
                           (v2rUserIdValue ~= nil and v2rUserIdValue ~= "" and v2rUserIdValue ~= "N/A") or
                           (v2rAlterIdValue ~= nil and v2rAlterIdValue ~= "" and v2rAlterIdValue ~= "N/A") or
                           (v2rProtocolValue ~= nil and v2rProtocolValue ~= "" and v2rProtocolValue ~= "N/A") or
                           (v2rQuicSecurityValue ~= nil and v2rQuicSecurityValue ~= "" and v2rQuicSecurityValue ~= "N/A") or
                           (v2rSsSecurityValue ~= nil and v2rSsSecurityValue ~= "" and v2rSsSecurityValue ~= "N/A") or
                           (v2rVlessSecurityValue ~= nil and v2rVlessSecurityValue ~= "" and v2rVlessSecurityValue ~= "N/A") or
                           (v2rVmessSecurityValue ~= nil and v2rVmessSecurityValue ~= "" and v2rVmessSecurityValue ~= "N/A") or
                           (v2rWsHeaderValue ~= nil and v2rWsHeaderValue ~= "" and v2rWsHeaderValue ~= "N/A") or
                           (v2rTlsSniValue ~= nil and v2rTlsSniValue ~= "" and v2rTlsSniValue ~= "N/A") or
                           (v2rTlsAlpnValue ~= nil and v2rTlsAlpnValue ~= "" and v2rTlsAlpnValue ~= "N/A") or
                           (v2rWsPathValue ~= nil and v2rWsPathValue ~= "" and v2rWsPathValue ~= "N/A") or
                           (v2rH2PathValue ~= nil and v2rH2PathValue ~= "" and v2rH2PathValue ~= "N/A") or
                           (v2rKcpMtuValue ~= nil and v2rKcpMtuValue ~= "" and v2rKcpMtuValue ~= "N/A") or
                           (v2rMuxConcurrencyValue ~= nil and v2rMuxConcurrencyValue ~= "" and v2rMuxConcurrencyValue ~= "N/A") or
                           (v2rRawJsonValue ~= nil and v2rRawJsonValue ~= "" and v2rRawJsonValue ~= "N/A")

    -- Se ambos os métodos não retornarem valores válidos, exibe uma mensagem
    if not hasValidDecodedData and not hasValidHttpDec then
        saveResult("Primeiro as primas", "Pai não encontrado")
    end
    
    -- Verifica se a chave "tunnelType" existe em decodedData
    if decodedData.tunnelType then
        if not TunnelTypeX9(decodedData.tunnelType) then
            decodedData.tunnelType = "primeiro as primas"
        end
    else
        decodedData.tunnelType = "primeiro as primas"
    end

    -- Adicione o restante do conteúdo à tabela de partes da mensagem

    -- Agora, adicione o "Tipo de Túnel" à mensagem com duas quebras de linha
    table.insert(messageParts, "\n\nTipo de Túnel: " .. getTunnelDescription(decodedData.tunnelType))

    -- Junte todas as partes da mensagem em uma única string
    local message = table.concat(messageParts, "\n")

    -- Exibe a mensagem
    print(message)

    -- Agora, você pode salvar a mensagem inteira
    save(message, "e×h×i.txt")
end

-- Chamada para lidar com direct_v2r_vmess
if decodedData.tunnelType == "direct_v2r_vmess" then
    handleDirect_v2r_Vmess(decodedData, outputFile)
    end

-- Abertura do arquivo "e×h×i.txt" em modo de leitura
local ehiFilePath = "/storage/emulated/0/e×h×i.txt"  -- Caminho do arquivo
local ehiFile = io.open(ehiFilePath, "r")

if ehiFile then
    -- Leitura do conteúdo do arquivo
    local ehiContent = ehiFile:read("*all")

    -- Fechamento do arquivo "e×h×i.txt"
    ehiFile:close()

    -- Exibição do conteúdo do arquivo em um alerta
    gg.alert(ehiContent)

    -- Copiar o conteúdo do arquivo para a área de transferência
    gg.copyText(ehiContent, false)
else
    gg.alert("Pai não encontrado: " .. ehiFilePath)
end

-- Fecha o arquivo de saída
outputFile:close()
end

-- Sem choro
function x9l()

-- Função para decodificar uma string hexadecimal em formato estendido
function hdxExtended(hex)
    -- Verifica se hex é uma string válida
    if hex == nil or type(hex) ~= "string" then
        print("Erro: Dados de entrada inválidos para a função hdxExtended.")
        return
    end
    
    -- Adiciona ""}" no final da string hexadecimal
    hex = hex .. '"}'

    -- A função `gsub` percorre a string hexadecimal e a converte em caracteres UTF-8
    return (string.gsub(hex, "(%x%x)", function(digits)
        -- A função `tonumber` converte os dígitos hexadecimais em números inteiros
        local decimalValue = tonumber(digits, 16)

        -- Verifica se o valor está na faixa imprimível de caracteres UTF-8
        if decimalValue and ((decimalValue >= 32 and decimalValue <= 126) or (decimalValue >= 128 and decimalValue <= 65535)) then
            return string.char(decimalValue)
        else
            -- Se estiver fora da faixa, retorna o caractere Unicode correspondente
            return utf8.char(decimalValue)
        end
    end))
end

-- A função para decodificar uma string hexadecimal em ASCII
function hd(hex)
    -- Verifica se hex é uma string válida
    if hex == nil or type(hex) ~= "string" then
        print("Erro: Dados de entrada inválidos para a função hd.")
        return
    end

hex = hex .. "D"
    -- A função `gsub` percorre a string hexadecimal e a converte em caracteres ASCII
    return (string.gsub(hex, "%x%x", function(digits)
        -- A função `tonumber` converte os dígitos hexadecimais em números inteiros
        -- E então, a função `string.char` converte o número em um caractere ASCII correspondente
        return string.char(tonumber(digits, 16))
    end))
end

-- A função para codificar uma string em sua representação hexadecimal
function he(str)
    -- A função `gsub` percorre cada caractere da string de entrada
    return (str:gsub(".", function(char)
        -- A função `char:byte()` obtém o valor numérico do caractere na tabela ASCII
        -- E então, `string.format` converte esse valor em uma representação hexadecimal com 2 dígitos
        return string.format("%2x", char:byte())
    end))
end

-- Função para converter uma sequência hexadecimal em UTF-8
function hexToUtf8(hex)
    local result = ""  -- Inicializa a string de resultado

    -- Itera sobre a sequência hexadecimal de dois em dois caracteres
    for i = 1, #hex, 2 do
        local byte = tonumber(hex:sub(i, i + 1), 16)  -- Converte dois caracteres hexadecimais em um número
        result = result .. string.char(byte)  -- Converte o número em um caractere UTF-8 e adiciona à string de resultado
    end

    return result  -- Retorna a sequência UTF-8 resultante
end

-- Função para decodificar uma string hexadecimal em ASCII
function hexToAscii(hex)
    if hex == nil or type(hex) ~= "string" then
        print("Erro: Dados de entrada inválidos para a função hexToAscii.")
        return
    end

    return (string.gsub(hex, "%x%x", function(digits)
        return string.char(tonumber(digits, 16))
    end))
end

-- Função para codificar uma string em sua representação hexadecimal
function asciiToHex(str)
    return (str:gsub(".", function(char)
        return string.format("%02x", char:byte())
    end))
end

-- Função para decodificar uma string hexadecimal para texto
function hexToString(hex)
    local result = ""
    for i = 1, #hex, 2 do
        local byte = tonumber(hex:sub(i, i + 1), 16)
        result = result .. string.char(byte)
    end
    return result
end

-- Função para verificar se um elemento está presente em uma tabela
function contains(table, element)
    for _, value in ipairs(table) do
        if value == element then
           return true
        end
    end
    return false
end

-- Função para ler a memória
function rwmem(Address, SizeOrBuffer, Mod)
    -- Verifica se o endereço fornecido não é nulo
    assert(Address ~= nil, "[rwmem]: erro, o endereço fornecido é nulo.")

    -- Inicializa variáveis locais
    local result = ""
    local rw = {}
    local ly = {}
    local ly_v2 = {}

    -- Verifica se SizeOrBuffer é um número
    if type(SizeOrBuffer) == "number" then
        -- Cria uma tabela rw com endereços consecutivos a partir do Address
        for i = 1, SizeOrBuffer do
            rw[i] = {address = Address + i - 1, flags = gg.TYPE_BYTE}
        end

        -- Itera sobre os valores obtidos da memória
        for _, value in ipairs(gg.getValues(rw)) do
            -- Modo 1: busca por padrão específico
            if Mod == 1 and value.value == 93 then
                -- Obtém valores em torno do ponto de interesse
                for ap = 1, 3 do
                    ly[ap] = {address = value.address + ap, flags = gg.TYPE_BYTE}
                end
                local res = gg.getValues(ly)
                
                -- Verifica padrões para determinar o início e fim de um bloco JSON
                if res[1].value == 10 and res[2].value == 125 or
                   res[1].value == 125 or
                   res[1].value == 32 and res[2].value == 125 or
                   res[2].value == 10 and res[3].value == 125 then
                    return "7B" .. result .. "5D7D"
                end
            end

            -- Modo 2: busca por outro padrão específico
            if Mod == 2 and value.value == 125 then
                -- Obtém valores em torno do ponto de interesse
                for ap2 = 1, 3 do
                    ly_v2[ap2] = {address = value.address + ap2, flags = gg.TYPE_BYTE}
                end
                local res = gg.getValues(ly_v2)
                
                -- Verifica padrões para determinar o início e fim de um bloco JSON
                if res[1].value == 93 or
                   res[1].value == 10 and res[2].value == 93 or
                   res[1].value == 32 and res[2].value == 93 or
                   res[2].value == 10 and res[3].value == 93 then
                    return result .. "5D7D"
                end
            end

            -- Converte o valor para hexadecimal e adiciona ao resultado
            result = result .. string.format("%02X", value.value & 0xFF)
        end

        return result
    end

    -- Se SizeOrBuffer não for um número, presume-se que seja uma string
    local Byte = {}
    SizeOrBuffer:gsub("..", function(x)
        -- Cria uma tabela Byte com os valores da string
        Byte[#Byte + 1] = x
        rw[#Byte] = {address = Address + #Byte - 1, flags = gg.TYPE_BYTE, value = x .. "h"}
    end)

    -- Define valores na memória com base na string fornecida
    gg.setValues(rw)
end

-- Função para decodificar uma string hexadecimal em ASCII preservando caracteres originais
function hdxPreserveOriginal(hex)
    -- Verifica se hex é uma string válida
    if hex == nil or type(hex) ~= "string" then
        print("Erro: Dados de entrada inválidos para a função hdxPreserveOriginal.")
        return
    end

    -- A função `gsub` percorre a string hexadecimal e a converte em caracteres ASCII
    return (string.gsub(hex, "(%x%x)", function(digits)
        -- A função `tonumber` converte os dígitos hexadecimais em números inteiros
        local decimalValue = tonumber(digits, 16)

        -- Verifica se o valor está na faixa imprimível de caracteres ASCII (32 a 126)
        if decimalValue and decimalValue >= 32 and decimalValue <= 126 then
            return string.char(decimalValue)
        else
            -- Se estiver fora da faixa, retorna a sequência original
            return digits
        end
    end))
end

-- Função para salvar conteúdo em um arquivo com fallback para conteúdo hexadecimal
function saveToFile(filename, content)
    local file = io.open(filename, "w", "utf-8")

    if file then
        -- Usa a função hdxPreserveOriginal para converter o conteúdo hexadecimal para texto UTF-8
        local decodedContent = hdxPreserveOriginal(content)

        -- Verifica se a conversão foi bem-sucedida, senão usa o conteúdo hexadecimal original
        if decodedContent then
            file:write(decodedContent)
        else
            file:write(content)
        end

        file:close()
        return true
    else
        return false
    end
end

-- Função para salvar conteúdo JSON em um arquivo
function saveJsonToFile(filename, jsonContent)
    local file = io.open(filename, "w", "utf-8")

    if file then
        file:write(jsonContent)
        file:close()
        return true
    else
        print("Erro ao abrir o arquivo JSON para escrita.")
        return false
    end
end

-- Função para ler o conteúdo de um arquivo
function readFromFile(filename)
    local file = io.open(filename, "r")
    if file then
        local content = file:read("*a")
        file:close()
        return content
    else
        return nil
    end
end

-- Função para adicionar um atraso em segundos
function sleep(seconds)
    local start = os.time()  -- Registra o tempo inicial
    repeat until os.time() > start + seconds  -- Aguarda até o tempo atual ultrapassar o tempo inicial mais os segundos desejados
end

-- Função para capturar e salvar dados da payload
function captureAndSavePayloadData(filename, pattern)
    -- Lista para armazenar os resultados de busca
    local searchResults = {}

    -- Torna o GameGuardian invisível
    gg.setVisible(false)
    
    gg.clearResults()  -- Limpa os resultados antigos antes de cada busca
    
    gg.setRanges(gg.REGION_C_ALLOC) -- Define as faixas de pesquisa antes de cada busca

    local success = gg.searchNumber(pattern, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

    if not success then
        gg.alert("Pai não encontrado")
        hentai()
        return
    end

    searchResults = gg.getResults(1000) -- Captura mais resultados se necessário
    
    -- Limpa os resultados de pesquisa existentes
    gg.clearResults()

    if #searchResults > 0 and searchResults[1].address then -- Verifica se o número de resultados da pesquisa é maior que zero e se existe um endereço disponível no primeiro resultado da pesquisa
       local startAddress = searchResults[1].address -- Armazena o endereço inicial na variável "startAddress"
       local endAddress = searchResults[1].address -- Armazena o endereço final na variável "endAddress"

        -- Percorre para trás até encontrar o início real do texto
        while rwmem(startAddress - 1, 1, 1) ~= "00" do
            startAddress = startAddress - 1
        end

        local textStart = startAddress

        -- Percorre para frente até encontrar o final do texto
        while rwmem(endAddress + 1, 1, 1) ~= "00" do
            endAddress = endAddress + 1
        end

        local textEnd = endAddress

        local memoryBlock = rwmem(textStart, textEnd - textStart + 1, 1)
        local capturedText = string.sub(memoryBlock, 1, -2)  -- Remove o último byte nulo

        -- Salva o texto decodificado em UTF-8 em um arquivo
        saveToFile(filename, hd(capturedText))

        -- Exibe uma mensagem de toast com a captura realizada
        gg.toast("Conteúdo bruto capturado e salvo em " .. filename)

        -- Extrai o JSON do conteúdo
        local jsonContent = extractJsonFromPayload(capturedText)
        gg.toast(hd(jsonContent))

        -- Salva o JSON em um arquivo separado
        local jsonFilename = "/storage/emulated/0/json.txt"
        saveJsonToFile(jsonFilename, hd(jsonContent))
        
        -- Atraso de um segundo e meio
     sleep(1.5)
        
        -- Chamada para decodificar json supostamente limpo
        x9d()
        
        -- Aplica novos valores aos resultados
        applyNewValues(searchResults)
    else
        print("Erro: Resultados vazios ou falta chave 'address'.")
        gg.alert(hdh("63616C6D612C20626172626F6C65746120F09FA68B0A696D706F727465206F206172717569766F206E6F76616D656E746520650A65786563757465206F2073637269707420646120736F72746520656D203320736567756E646F73"))
    print(hdh("5245494E4943494152203D20726561627265206120646976657273C3A36FF09F909D0A434F50494152203D207065727665727469646F20F09F988FF09F949E0A4F4B203D2066696E616C697A6172E298A0EFB88F"))
    print("Palavra chave " .. hdh(pattern) .. " não encontrada. Então eu não preciso capturar o JSON.")
        hentai()
    end
end

-- Aplica novos valores aos resultados (adaptar conforme necessário)
-- Itera sobre os resultados e define seus valores como 1000 (flags: TYPE_FLOAT)
function applyNewValues(results)
    for _, result in ipairs(results) do
        gg.setValues({[1] = {address = result.address, flags = gg.TYPE_FLOAT, value = 1000}})
    end
end

-- Função para extrair JSON do conteúdo
function extractJsonFromPayload(payloadContent)
    -- Implemente aqui a lógica para extrair o JSON do conteúdo
    -- Use as regras fornecidas para lidar com emojis, símbolos, etc.
    -- Retorne o JSON extraído
    return payloadContent
end

-- Local saída para salvar
local filename = "/storage/emulated/0/f.txt"

-- Substitua "h 6C 6F 63 6B 4D" pelo padrão desejado em hexadecimal
local pattern = "h 6C 6F 63 6B 4D"

-- Chama a função para capturar e salvar os dados
captureAndSavePayloadData(filename, pattern)
end

-- Chamada para função de capturar JSON da memória e salvar em pontos estratégicos
x9l()
os.exit()
pcall(load(HttpInjectorX9))
prima()
end

function rwmem(Address, SizeOrBuffer)
  assert(Address ~= nil, "[rwmem]: error, endereço fornecido é nulo.")
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
  return math.floor(tonumber(number) or error("Não foi possível transmitir '" .. tostring(number) .. "' enumerar.'"))
end

function save(data)
  io.open(gg.EXT_STORAGE .. "/hc.txt", "w"):write(data)
end 


function HTTPCustom()
  function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: erro, endereço fornecido é nulo.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
        for _ = 1, SizeOrBuffer do
            _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE}
        end
        local result = ""
        local foundCRLF = false
        for v, __ in ipairs(gg.getValues(_rw)) do
            if __.value == 0 then
                -- Ignorar caracteres nulos
            else
                result = result .. string.format("%02X", __.value & 0xFF)
                if __.value == 13 then
                    foundCRLF = true
                end
            end
        end
        return foundCRLF and result or ""
    end
    Byte = {}
    _rw = {}
    local foundCRLF = false
    SizeOrBuffer:gsub("..", function(x)
        Byte[#Byte + 1] = x
        _rw[#Byte] = {address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"}
        if tonumber(x, 16) == 13 then
            foundCRLF = true
        end
    end)
    gg.setValues(_rw)
    return foundCRLF and table.concat(Byte) or ""
end


    local function hexdecode(hex)
        return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
    end

    local function hexencode(str)
        return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
    end

    function Dec2Hex(nValue)
        nHexVal = string.format("%X", nValue);
        sHexVal = nHexVal.."";
        return sHexVal;
    end

    function ToInteger(number)
        return math.floor(tonumber(number) or error("Não Foi Possível Transmitir '" .. tostring(number) .. "' enumerar.'"))
    end

function payload(data)
    print(data)
end



    gg.clearResults()
    gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_OTHER)
    gg.setVisible(true)
    
    gg.searchNumber("h5B63726C665D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    
    if #r < 1 then
        gg.toast("❌ Configuração Não Encontrada")
        return
    end

    local r = gg.getResults(1000)
    
    if not limit then
        r[1].address = r[1].address - 1000    
    end

    local readedMem = rwmem(r[1].address, 20000)
    payload(hexdecode(readedMem))

    gg.clearResults()
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
	pcall(load(crlf))
end

function hc_ssc()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 22 61 62 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: ab")
    ssc_2 = true
  end
  if ssc_2 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      ssc_3 = true
    end
  end
  if ssc_3 then
    gg.searchNumber("h 3A 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 80")
      ssc_4 = true
    end
  end
  if ssc_4 then
    gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      ssc_5 = true
    end
  end
  if ssc_5 then
    gg.searchNumber("h 7B 0A 20 20 22 64 6E 73 22 3A 20 7B 0A 20 20 20 20 22 68 6F 73 74 73 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: dns hosts")
      ssc_6 = true
    end
  end
  if ssc_6 then
    gg.searchNumber("::443@", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 443")
      ssc_7 = true
    end
  end
  if ssc_7 then
    gg.searchNumber(":[crlf][crlf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: crlf")
      ssc_8 = true
    end
  end
  if ssc_8 then
    gg.searchNumber("h 48 6f 73 74 3a 5b 72 6f 74 61 74 65 3d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: rotate")
      ssc_9 = true
    end
  end
  if ssc_9 then
    gg.toast("❌Configuração Não Encontrada")
    print("Clique em Update e Inicie o Script Rápido!!!\n")
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 40000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function TLSTunnel()
  limit = false
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 3A 30 3A 30 3A 74 72 75 65 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: versi")
    tls_2 = true
  end
  if tls_2 then
    limit = false
    gg.searchNumber("h 33 35 39 3A 30 3A 30", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 359 h")
      tls_3 = true
    end
  end
  if tls_3 then
    gg.searchNumber("h 00 00 7b 00 22 00 41 00 22 00 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: A")
      tls_4 = true
    end
  end
  if tls_4 then
    limit = false
    gg.searchNumber(":357:0:0:", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("357")
      tls_5 = true
    end
  end
  if tls_5 then
    gg.searchNumber("h 63 69 70 68 65 72 31 2e 64 6f 46 69 6e 61 6c 28 63 72 79 70 74 6f 29", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: cipher1 doFinal crypto")
      tls_6 = true
    end
  end
  if tls_6 then
    limit = false
    gg.searchNumber("h 75 00 70 00 77 00 73 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: upws")
      tls_7 = true
    end
  end
  if tls_7 then
    limit = false
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      tls_8 = true
    end
  end
  if tls_8 then
    limit = false
    gg.searchNumber("h 47 45 54 20 77 73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: GET ws")
      tls_9 = true
    end
  end
  if tls_9 then
    limit = false
    gg.searchNumber("h 47 45 54 20 73 68 69", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: GET shi")
      tls_10 = true
    end
  end
  if tls_10 then
    limit = false
    gg.searchNumber("h 5b 68 6f 73 74 5d 5b 63 72 6c 66 5d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: host crlf")
      tls_11 = true
    end
  end
  if tls_11 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 5000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function eV2ray()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 0A 20 20 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: inbound")
    epro_2 = true
  end
  if epro_2 then
    gg.searchNumber("h 64 6e 73 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: dns")
      epro_3 = true
    end
  end
  if epro_3 then
    gg.searchNumber("h 6f 75 74 62 6f 75 6e 64 73 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: aspas outbounds")
      epro_4 = true
    end
  end
  if epro_4 then
    gg.searchNumber("h 22 69 6e 62 6f 75 6e 64 73 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: apsas inbounds")
      epro_5 = true
    end
  end
  if epro_5 then
    gg.toast("❌Configuração Não Encontrada")
    print("\nimporte o arquivo novamente ou inicie a VPN se quiser")
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 0x400
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function NapsternetV()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 22 76 65 72 73 69 6f 6e 69 6e 67 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: versioning")
    npv_2 = true
  end
  if npv_2 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      npv_3 = true
    end
  end
  if npv_3 then
    gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      npv_4 = true
    end
  end
  if npv_4 then
    gg.searchNumber("h 70 73 69 70 68 6f 6e 43 6f 6e 66 69 67 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: psiphonConfig")
      npv_5 = true
    end
  end
  if npv_5 then
    limit = false
    gg.searchNumber("h 22 76 65 72 73 69 6f 6e 69 6e 67 22 65 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: versioning e")
      npv_6 = true
    end
  end
  if npv_6 then
    limit = false
    gg.searchNumber("h 7b 22 76 65 72 73 69 6f 6e 69 6e 67 22 3a 7b 22 63 6f 6e 66 69 67 54 79 70 65 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: versioning configType")
      npv_7 = true
    end
  end
  if npv_7 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function HATunnel()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7b 22 75 73 65 72 5f 69 64 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: user id")
    hat_2 = true
  end
  if hat_2 then
    gg.searchNumber("h 7b 5c 22 63 6f 6e 6e 65 63 74 69 6f 6e 5f 6d 6f 64 65 5c 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: connecion mode")
      hat_3 = true
    end
  end
  if hat_3 then
    limit = false
    gg.searchNumber("h7b22757365725f696422", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: id")
      hat_4 = true
    end
  end
  if hat_4 then
    limit = false
    gg.searchNumber("h 5c 22 6f 76 65 72 72 69 64 65 5f 70 72 69 6d 61 72 79 5f 68 6f 73 74 5c", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: override primary host")
      hat_5 = true
    end
  end
  if hat_5 then
    limit = false
    gg.searchNumber("h 61 63 63 65 73 73 5f 63 6f 64 65 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: acess code")
      hat_6 = true
    end
  end
  if hat_6 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function SocksHttpPlus()
  limit = true
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber("h 7b 22 69 64 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
  end
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function DarkTunnel()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h537368436F6E6669674C6F636B6564C3A9537368436F6E666967", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: SshConfigLockedeSshConfig")
    dark_2 = true
  end
  if dark_2 then
    gg.searchNumber(":SshConfigLockedéSshConfig", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SshConfigLockedÃ©SshConfig")
      dark_3 = true
    end
  end
  if dark_3 then
    gg.searchNumber(":SshConfigLocked", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SshConfigLocked")
      dark_4 = true
    end
  end
  if dark_4 then
    gg.searchNumber("h 53 73 68 43 6F 6E 66 69 67 4C 6F 63 6B 65 64 C3 A9 53 73 68 43 6F 6E 66 69 67", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SshConfigLockedÃ©SshConfig")
      dark_5 = true
    end
  end
  if dark_5 then
    gg.searchNumber("h 53 73 68 43 6F 6E 66 69 67 4C 6F 63 6B 65 64 C3 A9 53 73 68 43 6F 6E 66 69 67", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SshConfigLockedÃ©SshConfig")
      dark_6 = true
    end
  end
  if dark_6 then
    gg.searchNumber("h 53 73 68 43 6F 6E 66 69 67 4C 6F 63 6B 65 64 C3 A9 53 73 68 43 6F 6E 66 69 67", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SshConfigLockedÃ©SshConfig")
      dark_7 = true
    end
  end
  if dark_7 then
    gg.searchNumber("h 4d 65 73 73 61 67 65 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Message")
      dark_8 = true
    end
  end
  if dark_8 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      dark_9 = true
    end
  end
  if dark_9 then
    gg.searchNumber("h 7b 22 48 6f 73 74 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Host")
      dark_10 = true
    end
  end
  if dark_10 then
    gg.searchNumber("h 69 6e 62 6f 75 6e 64 73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      dark_11 = true
    end
  end
  if dark_11 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 0x400
  end
  readedMem = rwmem(r[1].address, 40000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function SocksHttp()
  limit = true
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber("h 7b 22 73 73 68 53 65 72 76 65 72 22 3a 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 0x
    end
  readedMem = rwmem(r[1].address, 40000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function NetModSyna()
  limit = true
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber("h 7B 22 50 61 79 6C 6F 61 64 22 3A 7B 22 56 61 6C 75 65 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  gg.searchNumber("7Bh", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function RezTunnel()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 5C 22 50 53 49 6E 73 74 61 6C 6C 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: install")
    rez_2 = true
  end
  if rez_2 then
    gg.searchNumber("h 7b 22 50 53 49 6e 73 74 61 6c 6c 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: PSInstall 1")
      rez_3 = true
    end
  end
  if rez_3 then
    gg.searchNumber("h 50 53 49 6e 73 74 61 6c 6c 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: PSInstall 2")
      rez_4 = true
    end
  end
  if rez_4 then
    gg.searchNumber("h 48 6f 73 74 3a 5b 72 6f 74 61 74 65 3d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada:  rotate")
      rez_5 = true
    end
  end
  if rez_5 then
    gg.searchNumber("h 7B 0A 20 20 20 20 22 56 65 72 73 69 6F 6E 22 3A 20", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version Config full")
      rez_6 = true
    end
  end
  if rez_6 then
    gg.searchNumber("h 53 53 48 48 6f 73 74 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SSHHost")
      rez_7 = true
    end
  end
  if rez_7 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version Upgrade")
      rez_8 = true
    end
  end
  if rez_8 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1)
  if limit == true then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function ApkCustom()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 3A 34 34 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: 443")
    acm_2 = true
  end
  if acm_2 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      acm_3 = true
    end
  end
  if acm_3 then
    gg.searchNumber("h 3A 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 80")
      acm_4 = true
    end
  end
  if acm_4 then
    limit = true
    gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      acm_5 = true
    end
  end
  if acm_5 then
    limit = false
    gg.searchNumber("h 7B 0A 20 20 22 64 6E 73 22 3A 20 7B 0A 20 20 20 20 22 68 6F 73 74 73 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: dns hosts")
      acm_6 = true
    end
  end
  if acm_6 then
    limit = false
    gg.searchNumber("h 3A 35 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 53")
      acm_7 = true
    end
  end
  if acm_7 then
    limit = false
    gg.searchNumber("h 5B 73 70 6C 69 74 50 73 69 70 68 6F 6E 5D 5B 73 70 6C 69 74 50 73 69 70 68 6F 6E 5D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: splitPsiphon")
      acm_8 = true
    end
  end
  if acm_8 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function SocksIP()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h6E6577746F6F6C73776F726B732E636F6D2E736F636B7369702E7574696C732E536572536F636B73495068", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: network sip")
    sip_2 = true
  end
  if sip_2 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      sip_3 = true
    end
  end
  if sip_3 then
    gg.searchNumber("h 73 73 68 6f 63 65 61 6e", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: sshocean")
      sip_4 = true
    end
  end
  if sip_4 then
    gg.searchNumber("h 3A 38 30 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 80")
      sip_5 = true
    end
  end
  if sip_5 then
    limit = false
    gg.searchNumber("h 7B 0A 09 09 22 69 6E 62 6F 75 6E 64", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      sip_6 = true
    end
  end
  if sip_6 then
    limit = false
    gg.searchNumber("h 73 70 65 65 64 79 73 73 68 2e", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: dns hosts")
      sip_7 = true
    end
  end
  if sip_7 then
    limit = false
    gg.searchNumber("h 3A 35 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 53")
      sip_8 = true
    end
  end
  if sip_8 then
    limit = false
    gg.searchNumber("h 47 45 54 20 77", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: GET w")
      sip_9 = true
    end
  end
  if sip_9 then
    limit = false
    gg.searchNumber("h 5b 63 72 6c 66 5d 48 6f 73 74 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: crlf host")
      sip_10 = true
    end
  end
  if sip_10 then
    limit = false
    gg.searchNumber("h 48 6f 73 74 3a 5b 72 6f 74 61 74 65 3d", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: rotate")
      sip_11 = true
    end
  end
  if sip_11 then
    limit = false
    gg.searchNumber("h 3A 34 34 33 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: 443")
      sip_12 = true
    end
  end
  if sip_12 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 20000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function StarkVPN()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 5C 22 63 6F 6E 66 69 67 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: config barra")
    stk_2 = true
  end
  if stk_2 then
    gg.searchNumber("h 63 6f 6e 66 69 67 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: config aspas")
      stk_3 = true
    end
  end
  if stk_3 then
    limit = false
    gg.searchNumber("h 63 6f 6e 6e 65 63 74 69 6f 6e 5f 6d 6f 64 65 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: connection mode")
      stk_4 = true
    end
  end
  if stk_4 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function configjson()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7b a 22 56 65 72 73 69 6f 6e 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: Version")
    json_2 = true
  end
  if json_2 then
    gg.searchNumber("h 7b a 9 22 56 65 72 73 69 6f 6e 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version")
      json_3 = true
    end
  end
  if json_3 then
    gg.searchNumber("h 7b a 20 20 22 56 65 72 73 69 6f 6e 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version")
      json_4 = true
    end
  end
  if json_4 then
    gg.searchNumber("h 7b a 20 20 20 22 56 65 72 73 69 6f 6e 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version")
      json_5 = true
    end
  end
  if json_5 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      json_6 = true
    end
  end
  if json_6 then
    gg.searchNumber("h 7B 5C 22 56 65 72 73 69 6F 6E 5C 22 3A 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      json_7 = true
    end
  end
  if json_7 then
    gg.searchNumber("h 22 2c 22 52 65 6c 65 61 73 65 4e 6f 74 65 73 22 3a 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: ReleaseNotes")
      json_8 = true
    end
  end
  if json_8 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 70000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function TunnelCat()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 5C 22 65 78 70 6F 72 74 44 65 74 61 69 6C 73 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: export D")
    cat_2 = true
  end
  if cat_2 then
    gg.searchNumber("h 7b 5c 22 65 78 70 6f 72 74 44 65 74 61 69 6c 73 5c 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: exportDetails")
      cat_3 = true
    end
  end
  if cat_3 then
    gg.searchNumber(";exportDetails", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: exportDe")
      cat_4 = true
    end
  end
  if cat_4 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      cat_5 = true
    end
  end
  if cat_5 then
    gg.searchNumber("h 69 6e 62 6f 75 6e 64 73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      cat_6 = true
    end
  end
  if cat_6 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 20000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function v2rayHybrid()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 5C 22 61 64 64 65 64 54 69 6D 65 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: addedtime")
    hy_2 = true
  end
  if hy_2 then
    gg.searchNumber("h 7b 5c 22 61 64 64 65 64 54 69 6d 65 5c 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: added Time")
      hy_3 = true
    end
  end
  if hy_3 then
    gg.searchNumber(";addedTime", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: addedTime")
      hy_4 = true
    end
  end
  if hy_4 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      cat_5 = true
    end
  end
  if hy_5 then
    gg.searchNumber("h 69 6e 62 6f 75 6e 64 73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      hy_6 = true
    end
  end
  if hy_6 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 20000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function ARMod()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber(":[{\"AlterID\"", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: alter id")
    armo_2 = true
  end
  if armo_2 then
    gg.searchNumber("h 5b 7b 5c 22 41 6c 74 65 72 49 44 5c 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: alter")
      armo_3 = true
    end
  end
  if armo_3 then
    gg.searchNumber(";AlterID", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: addedTime")
      armo_4 = true
    end
  end
  if armo_4 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      armo_5 = true
    end
  end
  if armo_5 then
    gg.searchNumber("h 69 6e 62 6f 75 6e 64 73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: inbound")
      armo_6 = true
    end
  end
  if armo_6 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 20000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function WeTunnel()
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 7B 5C 22 50 53 49 6E 73 74 61 6C 6C 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: install")
    we_2 = true
  end
  if we_2 then
    gg.searchNumber("h 7b 22 50 53 49 6e 73 74 61 6c 6c 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: PSInstall 1")
      we_3 = true
    end
  end
  if we_3 then
    gg.searchNumber("h 50 53 49 6e 73 74 61 6c 6c 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: PSInstall 2")
      we_4 = true
    end
  end
  if we_4 then
    gg.searchNumber("h 7B 5C 22 50 53 49 6E 73 74 61 6C 6C 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada:  install 2")
      we_5 = true
    end
  end
  if we_5 then
    gg.searchNumber("h 7B 0A 20 20 20 20 22 56 65 72 73 69 6F 6E 22 3A 20", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version Config full")
      we_6 = true
    end
  end
  if we_6 then
    gg.searchNumber("h 53 53 48 48 6f 73 74 22 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: SSHHost")
      we_7 = true
    end
  end
  if we_7 then
    gg.searchNumber("h 55 70 67 72 61 64 65 3a", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Version Upgrade")
      we_8 = true
    end
  end
  if we_8 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1)
  if limit == true then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function XrayPB()
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber(";{\"addedTime\"", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: addedTime")
    pb_2 = true
  end
  if pb_2 then
    gg.searchNumber("h 7B 5C 22 61 64 64 65 64 54 69 6D 65 5C 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: added")
      pb_3 = true
    end
  end
  if pb_3 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == true then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 20000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function OpenTunnel()
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber("h 3C 2F 65 6E 74 72 79 3E 0A 3C 65 6E 74 72 79 20 6B 65 79 3D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: addedTime")
    tnl_2 = true
  end
  if tnl_2 then
    gg.searchNumber("h 3C 2F 65 6E 74 72 79 3E 0A 3C 65 6E 74 72 79 20 6B 65 79 3D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: added")
      tnl_3 = true
    end
  end
  if tnl_3 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == true then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 20000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function sopass()
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber(";{\"Password\"", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: pass")
    efbd_2 = true
  end
  if efbd_2 then
    gg.searchNumber("h 7b 5c 22 50 61 73 73 77 6f 72 64 5c 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Password barra")
      efbd_3 = true
    end
  end
  if efbd_3 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == true then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 40000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end

function kobra()
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber(":Servidores", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada: servidores")
    kobras_2 = true
  end
  if kobras_2 then
    gg.searchNumber(":Upgrade:", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada: Upgrade")
      kobras_3 = true
    end
  end
  if kobras_3 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 8192
  end
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
  end

function kobras()
  limit = true
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.searchNumber("h 7B 0A 20 20 20 20 22 53 65 72 76 69 64 6F 72 65 73 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada")
    print("❌Configuração Não Encontrada")
    os.exit()
  end
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  gg.toast("Aplicativo Desbloqueado")
  print("Configuração Encontrada!\n\no arquivo está em: /sdcard/Config Aqui.txt")
  gg.clearResults()
end
  
  
if app == "com.evozi.injector" then
  HttpInjectorX9()  
elseif app == "xyz.easypro.httpcustom" then
  HTTPCustom()
elseif app == "com.tlsvpn.tlstunnel" then
  TLSTunnel()
elseif app == "dev.epro.ssc" then
  hc_ssc()
elseif app == "dev.epro.e_v2ray" then
  eV2ray()
elseif app == "com.napsternetlabs.napsternetv" then
  NapsternetV()
elseif app == "com.newtoolsworks.sockstunnel" then
  SocksIP()
elseif app == "com.slipkprojects.sockshttp" then
  SocksHttp()
elseif app == "com.slipkprojects.sksplus" then
  SocksHttpPlus()
elseif app == "com.hatunnel.plus" then
  HATunnel()
elseif app == "team.dev.epro.apkcustom" then
  ApkCustom()
elseif app == "com.techoragontcptun" then
  RezTunnel()
elseif app == "net.darktunnel.app" then
  DarkTunnel()
elseif app == "com.tunnelcatvpn.android" then
  TunnelCat()
elseif app == "com.v2ray.hybrid" then
  v2rayHybrid()
elseif app == "com.one.vpnapp" then
  configjson()
  elseif app == "mau.miracle.mau" then
  configjson()
  elseif app == "onnet.miracle" then
  configjson()
elseif app == "com.hybrid.tunnel" then
  configjson()
elseif app == "com.gdmnetpro.vpn" then
  configjson()
elseif app == "com.trrorcloud.br" then
  configjson()
elseif app == "com.lockproig.vpn" then
  configjson()
elseif app == "app.hackkcah.xyz" then
  configjson()
elseif app == "com.handy.vpn" then
  configjson()
elseif app == "com.socketclay.http" then
  configjson()
elseif app == "com.internetinfinito.http" then
  configjson()
elseif app == "com.socketconexion.vps" then
  configjson()
elseif app == "com.fenix.vpn" then
  configjson()
elseif app == "com.turbovpn.app" then
  configjson()
elseif app == "com.mastercloudvpn.http" then
  configjson()
elseif app == "com.godiesan.vpn" then
  configjson()
elseif app == "com.cloud.focus" then
  configjson()
  elseif app == "com.upnet4gbr.telecom" then
  configjson()
  elseif app == "com.internetvpn.vpnff" then
  configjson()
elseif app == "com.doriaxvpn.http" then
  configjson()
elseif app == "com.sockslitepro.net" then
  configjson()
elseif app == "com.mnjnet.rev" then
  configjson()
elseif app == "br.com.litesshbrasil" then
  configjson()
elseif app == "istark.vpn.starkreloaded" then
  StarkVPN()
elseif app == "com.Internetshub.socks" then
  WeTunnel()
elseif app == "com.sihiver.xraypb" then
  XrayPB()
elseif app == "com.opentunnel.app" then
  OpenTunnel()
elseif app == "com.artunnel57" then
  ARMod()
elseif app == "com.ar.dev.bdvpninject" then
  sopass()
elseif app == "com.ef.dev.eftunnel" then
  sopass()
  elseif app == "kobras.vpn.ultra.max.miguel.pro" then
  kobras()
elseif app == "com.netmod.syna" then
  NetModSyna()
else
  gg.toast("@netfree080")
  print("\n❌O Aplicativo Não Está Na Lista\n\n")
end
gg.clearResults()
os.exit()
pcall(load(x9C))
prima()
end

function Payload()

limit = false

function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: erro, endereço fornecido é nulo.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
        for _ = 1, SizeOrBuffer do
            _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE}
        end
        local result = ""
        local foundCRLF = false
        for v, __ in ipairs(gg.getValues(_rw)) do
            if __.value == 0 then
                -- Ignorar caracteres nulos
            else
                result = result .. string.format("%02X", __.value & 0xFF)
                if __.value == 13 then
                    foundCRLF = true
                end
            end
        end
        return foundCRLF and result or ""
    end
    Byte = {}
    _rw = {}
    local foundCRLF = false
    SizeOrBuffer:gsub("..", function(x)
        Byte[#Byte + 1] = x
        _rw[#Byte] = {address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"}
        if tonumber(x, 16) == 13 then
            foundCRLF = true
        end
    end)
    gg.setValues(_rw)
    return foundCRLF and table.concat(Byte) or ""
end


    local function hexdecode(hex)
        return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
    end

    local function hexencode(str)
        return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
    end

    function Dec2Hex(nValue)
        nHexVal = string.format("%X", nValue);
        sHexVal = nHexVal.."";
        return sHexVal;
    end

    function ToInteger(number)
        return math.floor(tonumber(number) or error("Não Foi Possível Transmitir '" .. tostring(number) .. "' enumerar.'"))
    end


function payload(data)

        print(data)
end


  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_OTHER)
  gg.setVisible(true)
    gg.searchNumber("h224E6574776F726B73223A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_2 = true
  end
  if hc_2 then
    gg.searchNumber("h2256657273696F6E223A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_3 = true
    end
  end
  if hc_3 then
    gg.searchNumber("h2241707056657273696F6E223A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_4 = true
    end
  end
    if hc_4 then
    gg.searchNumber("h2256657273696F6E223A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_5 = true
    end
  end
    if hc_5 then
    gg.searchNumber("h225061796C6F616422", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_6 = true
    end
  end
      if hc_6 then
    gg.searchNumber("h22696422", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_7 = true
    end
  end
      if hc_7 then
    gg.searchNumber("h224E616D6522", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_8 = true
    end
  end
  if hc_8 then
    gg.toast("❌Configuração Não Encontrada")
    print("Clique em Update e Inicie o Script Rápido!!!\n")
    return
  end
    local r = gg.getResults(1000)
    
    if not limit then
        r[1].address = r[1].address - 1000    
    end

    local readedMem = rwmem(r[1].address, 100000)
    payload(hexdecode(readedMem))

    gg.clearResults()
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
	pcall(load(payload))
end
 
function link()
limit = false

function rwmem(Address, SizeOrBuffer)
  assert(Address ~= nil, "[rwmem]: error, endereço fornecido é nulo.")
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
  return math.floor(tonumber(number) or error("Não foi possível transmitir '" .. tostring(number) .. "' enumerar.'"))
end


function payload(data)
    print(data)
end

limit = false

  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC)
  gg.setVisible(true)
  gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 70 61 73 74 65 2E 61 6E 61 73 6F 72 2E 63 6F 6D 2F 70 61 73 74 65 2E 70 68 70 3F 72 61 77 26 69 64 3D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("❌Configuração Não Encontrada")
    hc_2 = true
  end
  if hc_2 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 70 61 73 74 65 62 69 6E 2E 63 6F 6D 2F 72 61 77 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_3 = true
    end
end
if hc_3 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 70 74 2E 74 65 78 74 62 69 6E 2E 6E 65 74 2F 72 61 77 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_4 = true
    end
  end
  if hc_4 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 62 69 74 62 69 6E 2E 69 74 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_5 = true
    end
  end
  if hc_5 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 77 77 77 2E 64 72 6F 70 62 6F 78 2E 63 6F 6D 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_6 = true
    end
  end
    if hc_6 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 72 61 77 2E 67 69 74 68 75 62 75 73 65 72 63 6F 6E 74 65 6E 74 2E 63 6F 6D 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_7 = true
    end
  end
      if hc_7 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 70 61 69 6E 65 6C 63 6F 6E 65 63 74 61 35 67 2E 63 6F 6D 2F 75 70 64 61 74 65 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_7 = true
    end
  end
if hc_7 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 77 77 77 2E 63 6D 6D 74 75 6E 65 6C 2E 67 61 2F 75 70 64 61 74 65 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_8 = true
    end
  end
  if hc_8 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 61 74 6C 61 6E 74 75 73 2E 63 6F 6D 2E 62 72 2F 6D 69 72 61 63 6C 65 2F 75 70 64 61 74 65 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_9 = true
    end
  end
    if hc_9 then
    gg.searchNumber("h 68 74 74 70 73 3A 2F 2F 77 77 77 2E 70 61 69 6E 65 6C 63 6F 6E 65 63 74 61 35 67 2E 63 6F 6D 2F 75 70 64 61 74 65 2F", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("❌Configuração Não Encontrada")
      hc_10 = true
    end
  end
  if hc_10 then
    gg.toast("❌Configuração Não Encontrada")
    print("Clique em Update e Inicie o Script Rápido!!!\n")
    os.exit()
  end
  local r = gg.getResults(1000)
  if limit == false then
    r[1].address = r[1].address - 1000    
  end
  readedMem = rwmem(r[1].address, 10000)
  payload(hexdecode(readedMem))
  gg.toast("✅ Configuração Encontrado")
  gg.clearResults()
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
gg.clearResults()
os.exit()
pcall(load(link))
prima()

end

function login()
gg.setVisible(true)

function hd(hex)
	return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
end

function he(str)
	return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
end

function dec2hex(str)
	nHexVal = string.format("%X", str)
	sHexVal = nHexVal .. ""
	return sHexVal
end

function getstr(v1, v2, v3, i)
    str = string.split(v1, v2)
    if #str < 2 then
        return nil
    end
    str = string.split(str[i], v3)
    return str[1]
end

preferences = gg.FILES_DIR:gsub('files', "shared_prefs/" .. gg.PACKAGE .. "_preferences.xml")
api = gg.command("cat " .. preferences)
DEBUG_DIR = getstr(api, hd("7363726970742D64656275675C223E"), hd("3C2F737472696E673E"), 2)

Package = gg.getTargetPackage()

TAG = hd("343034433639363736383734353933343637363136443331")
dataPath = gg.EXT_STORAGE .. "/Download/"
dataFile = dataPath .. Package .. ".txt"
dataPassword = dataPath .. "password-" .. Package .. ".txt"

file.mkdir(dataPath)

function Dec2Hex(nValue)
	return string.format("%X", nValue) .. ""
end

function mToast(str)
    return string[hd("656E63")](str, string.sub(TAG, 4, 19), hd("656E63"))
end

local first_pattern_start = "32000000"
local first_pattern_end = "0000000E"
local second_pattern_start = "70617373776F726400000000"

local function find_pattern(str, pattern)
    return string.find(str, pattern, 1, true)
end

local function extract_between(str, start_pattern, end_pattern)
    local start_idx, end_idx = find_pattern(str, start_pattern)
    if start_idx and end_idx then
        local next_start_idx = find_pattern(str, end_pattern, end_idx + 1)
        if next_start_idx then
            return string.sub(str, end_idx + 1, next_start_idx - 1)
        end
    end
    return ""
end

local function extract_second_group(str, start_pattern)
    local start_idx, end_idx = find_pattern(str, start_pattern)
    if start_idx and end_idx then
        local next_zero_idx = string.find(str, "00", end_idx + 1, true)
        if next_zero_idx then
            return string.sub(str, end_idx + 1, next_zero_idx - 2)
        end
    end
    return ""
end

local function remove_first_byte(str)
    return string.sub(str, 3)
end

local function fix_dump(str)
    if str == nil then
        -- Adicione a lógica necessária caso a string seja nula
        return ""
    end
    
    if (#str % 2 == 1) then
        return str .. "0"
    end
    return str
end

function logins(data)
  io.open(gg.EXT_STORAGE .. "/login.txt", "w"):write(data)
end

function dump(data)
  io.open(gg.EXT_STORAGE .. "/dump.txt", "w"):write(data)
end

rwmem = function (Address, SizeOrBuffer, Mod)
	local ly_v1 = 0
	assert(Address ~= nil, "[rwmem]: erro, o endereço fornecido é nulo.")
	_rw = {}
	_ly = {}
	_ly_v2 = {}
	if type(SizeOrBuffer) == "number" then
		_ = ""
		for _ = 1, SizeOrBuffer do _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE} end
		for v, __ in ipairs(gg.getValues(_rw)) do
			if Mod == 1 and __.value == 93 then
				for ap = 1, 3 do
					_ly[ap] = {address = __.address + ap, flags = gg.TYPE_BYTE}
				end
				local res = gg.getValues(_ly)
				if res[1].value == 10 and res[2].value == 125 then
					return "7B" .. _ .. "5D7D"
				elseif res[1].value == 125 then
					return "7B" .. _ .. "5D7D"
				elseif res[1].value == 32 and res[2].value == 125 then
					return "7B" .. _ .. "5D7D"
				elseif res[2].value == 10 and res[3].value == 125 then
					return "7B" .. _ .. "5D7D"
				end
			end
			if Mod == 2 and __.value == 125 then
				for ap2 = 1, 3 do
					_ly_v2[ap2] = {address = __.address + ap2, flags = gg.TYPE_BYTE}
				end
				local res = gg.getValues(_ly_v2)
				if res[1].value == 93 then
					return _ .. "5D7D"
				elseif res[1].value == 10 and res[2].value == 93 then
					return _ .. "5D7D"
				elseif res[1].value == 32 and res[2].value == 93 then
					return _ .. "5D7D"
				elseif res[2].value == 10 and res[3].value == 93 then
					return _ .. "5D7D"
				end
			end
		  _ = _ .. string.format("%02X", __.value & 0xFF)
        end
		return _
	end
	Byte = {} SizeOrBuffer:gsub("..", function(x) 
		Byte[#Byte + 1] = x _rw[#Byte] = {address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"} 
	end)
	gg.setValues(_rw)
end


    updateTryAgain = hd("54656E7465204E6F76616D656E74652121210D0A4573706572652061206D656E736167656D2046696E676572205072696E743A")

    m = {}
    m[1] = string[hd("414553")]("D12361DA268C4C8D4E2BD36576333132262C9BFCF9DB8C06E319420856160586A04608ED2AD961612FC99B68D7E60CFF0D06A17440F4846DBC7B49EA846E845A", string.sub(TAG, 4, 19), hd("646563"))
    m[2] = string[hd("414553")]("FFF92437B133091CACAE105AE51726CC323E309E019906ACC6256E44B23E4CD8", string.sub(TAG, 4, 19), hd("646563")) .. dataFile .. hd("3C2F666F6E743E")


	
	    
	    gg.clearResults()
		gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_OTHER)
		gg.setVisible(false)
		gg.processPause()
		gg.searchNumber(hd("68203733203733203638203244203633203646203645203645203635203633203734203639203646203645203030203030203030203038203730203631203733203733203737203646203732203634"), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
		local r = gg.getResults(1000)
		if #r < 53 then

		print("❌ Login não Encontrada, Clique em reiniciar e tente novamente")
	
		
		end
		
		gg.refineNumber(hd("68203038"), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
		local r = gg.getResults(10)
		if #r < 3 then
		end

				
		for loop=1, #r do
		    for v=1, 100 do
		    local t = {}
            t[1] = { address = r[loop].address - v, flags = gg.TYPE_BYTE }
            t[2] = { address = r[loop].address - v - 1, flags = gg.TYPE_BYTE }
            t[3] = { address = r[loop].address - v - 2, flags = gg.TYPE_BYTE }
            t[4] = { address = r[loop].address + v, flags = gg.TYPE_BYTE }
		    local g = gg.getValues(t)
		    if g[1].value == 0 and g[2].value == 0 and g[3].value == 0 and g[4].value ~= 104 then
		
		        local rangeMemory = rwmem(g[1].address -100, 1500)
		        io.open(dataPassword .. loop, "w"):write(hd(rangeMemory))
		        io.open(dataFile, "w"):write(hd(rangeMemory))
		
		        local username = hd(remove_first_byte(fix_dump(getstr(rangeMemory, "32000000", "0000000E", 2))))
		        local password = hd(remove_first_byte(fix_dump(getstr(rangeMemory, "70617373776F726400000000", "00", 2))))
		
		         local alert = gg.colorAlert(hd("3C666F6E7420636F6C6F723D2723306561356539273EF09F9493205465207065677565692C204C696F6E656C20526963686965213C2F666F6E743E"), "" .. hd("3C62723E3C623EF09F91A420557375C3A172696F3A203C666F6E7420636F6C6F723D2723313462386136273E") .. "🐝" .. username .. "🐝" .. "\n\n" .. hd("3C2F666F6E743E3C62723E3C62723EF09F94912053656E68613A203C666F6E7420636F6C6F723D2723663433663565273E") .. "🐝" .. password .. "🐝" .. "\n\n" .. hd("3C2F666F6E743E3C62723E3C62723EF09F8EAE2041706C6963617469766F2046756C6569726F3A203C666F6E7420636F6C6F723D2723323536336562273E") .. gg.getTargetInfo().label .. hd("3C2F666F6E743E3C62723E3C62723EF09FA4BA205061636F74653A203C666F6E7420636F6C6F723D2723623666663131273E") .. Package .. hd("3C2F666F6E743E3C2F623E3C62723E3C62723EF09F909D203C666F6E7420636F6C6F723D2723306561356539273E3C753E68747470733A2F2F742E6D652F6E65746672656530383020652068747470733A2F2F742E6D652F4F4D656E74616C697374613C2F753E3C2F666F6E743E"))
		        gg.copyText(hd("5465207065677565692C204C696F6E656C20526963686965210A557375C3A172696F20652053656E6861206E6F206D65696F20646173206162656C6861733A") .. "\n\n" .. hd("557375C3A172696F3A20") .. "🐝" .. username .. "🐝" .. "\n\n" .. hd("53656E68613A20") .. "🐝" .. password .. "🐝" .. "\n\n" .. hd("41706C6963617469766F2046756C6569726F3A20") .. gg.getTargetInfo().label .. "\n\n" .. hd("5061636F74653A20") .. Package .. "\n\n" .. hd("68747470733A2F2F742E6D652F6E657466726565303830202068747470733A2F2F742E6D652F4F4D656E74616C69737461") .. "", false)
		        logins('Usuário: ' .. username .. '\n\n' .. 'Senha: ' .. password .. '\n\n' .. 'Aplicativo Fuleiro: ' .. gg.getTargetInfo().label .. '\n\n' .. 'Pacote: ' .. Package, "w")
		        dump(hd(rangeMemory))
		        gg.processResume()
		        return
		        end
		        end
		        
		        end
				    os.exit()
while true do
    if gg.isVisible(true) then
        x900 = 1
        gg.setVisible(false)
        gg.clearResults()
        gg.processPause()
    end
end	


    pcall(load(login))
end


function crlf()
    local limit = false

function rwmem(Address, SizeOrBuffer)
    assert(Address ~= nil, "[rwmem]: erro, endereço fornecido é nulo.")
    _rw = {}
    if type(SizeOrBuffer) == "number" then
        for _ = 1, SizeOrBuffer do
            _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE}
        end
        local result = ""
        local foundCRLF = false
        for v, __ in ipairs(gg.getValues(_rw)) do
            if __.value == 0 then
                -- Ignorar caracteres nulos
            else
                result = result .. string.format("%02X", __.value & 0xFF)
                if __.value == 13 then
                    foundCRLF = true
                end
            end
        end
        return foundCRLF and result or ""
    end
    Byte = {}
    _rw = {}
    local foundCRLF = false
    SizeOrBuffer:gsub("..", function(x)
        Byte[#Byte + 1] = x
        _rw[#Byte] = {address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"}
        if tonumber(x, 16) == 13 then
            foundCRLF = true
        end
    end)
    gg.setValues(_rw)
    return foundCRLF and table.concat(Byte) or ""
end


    local function hexdecode(hex)
        return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
    end

    local function hexencode(str)
        return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
    end

    function Dec2Hex(nValue)
        nHexVal = string.format("%X", nValue);
        sHexVal = nHexVal.."";
        return sHexVal;
    end

    function ToInteger(number)
        return math.floor(tonumber(number) or error("Não Foi Possível Transmitir '" .. tostring(number) .. "' enumerar.'"))
    end

function payload(data)
    print(data)
end



    gg.clearResults()
    gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_OTHER)
    gg.setVisible(true)
    
    gg.searchNumber("h5B63726C665D", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    
    if #r < 1 then
        gg.toast("❌ Configuração Não Encontrada")
        return
    end

    local r = gg.getResults(1000)
    
    if not limit then
        r[1].address = r[1].address - 1000    
    end

    local readedMem = rwmem(r[1].address, 20000)
    payload(hexdecode(readedMem))

    gg.clearResults()
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
	pcall(load(crlf))
end


function Dump()
function rwmem(addr, size, write, buffer)
    local i
    local __

    buffer = buffer or {}
    write = write or false

    local p = addr
    for i = 0, size - 1 do
        __ = gg.getValues({{address = p, flags = gg.TYPE_BYTE}})
        if #__ ~= 0 then
            __ = __[1]
            local validValue = math.max(0, math.min(255, __.value))
            if write then
                table.insert(buffer, string.char(validValue))
            else
                table.insert(buffer, string.char(validValue & 0xFF))
            end
        else
            break
        end
        p = p + 1
    end

    if #buffer > 0 then
        if write then
            gg.setValues(buffer)
        else
            return table.concat(buffer)
        end
    end
    return nil
end

function payload(data)
    print(data)
end

    local function hexdecode(hex)
        return (hex:gsub("%x%x", function(digits) return string.char(tonumber(digits, 16)) end))
    end

    local function hexencode(str)
        return (str:gsub(".", function(char) return string.format("%2x", char:byte()) end))
    end

    function Dec2Hex(nValue)
        nHexVal = string.format("%X", nValue);
        sHexVal = nHexVal.."";
        return sHexVal;
    end

    function ToInteger(number)
        return math.floor(tonumber(number) or error("Não Foi Possível Transmitir '" .. tostring(number) .. "' enumerar.'"))
    end

    gg.clearResults()
    options = gg.prompt({ "Cole o Endereço Aqui:" }, {[1]=""}, {[1]='text'})
    if options and options[1] then -- verifica se options e options[1] não são nulos
        gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_OTHER)
        readedMem = rwmem("0x" .. options[1], 60000)
        payload(hexdecode(readedMem))
        io.open(gg.EXT_STORAGE .. "/Dump Aqui.txt", "w"):write(hexdecode(readedMem))
        gg.toast("✅ Aplicativo Desbloqueado")
        print("✅ Configuração Encontrada!\n\no arquivo está em: /sdcard/Dump Aqui.txt")
		print("✅ Grupo netfree080 Canal netfree081")
	    print("✅ By @p2pmaster e @TheMentalistSay")
        gg.clearResults()
        os.exit()
    end
    pcall(load(Dump))
    prima()
end

function EXIT()
    gg.copyText("https://t.me/netfree080")
gg.alert("Grupo NetFree080", "Ok", "Copiar")
if gg.getResultCount() == 2 then -- Verifica se o botão "Copiar" foi pressionado
    gg.copyText("O script foi encerrado")
end
    gg.setVisible(false)
    print("✅ Grupo netfree080 Canal netfree081")
	print("✅ By @p2pmaster e @TheMentalistSay")
    os.exit()
end



function x9P()
gg.toast("Tente De Novo")
end

function prima()
end

if x9A == 1 then x9B() end
end
end
if x9ok == 1 then x9on() end