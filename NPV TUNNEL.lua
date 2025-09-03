-- Function to read and write memory
function rwmem(Address, SizeOrBuffer)
  assert(Address ~= nil, "[rwmem]: error, provided address is null.")

  local _rw = {}

  if type(SizeOrBuffer) == "number" then
    local result = ""
    for i = 1, SizeOrBuffer do
      _rw[i] = {
        address = Address - 1 + i,
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

  local Byte = {}
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

-- Function to decode hexadecimal to string
function hexdecode(hex)
  return (hex:gsub("%x%x", function(digits)
    return string.char(tonumber(digits, 16))
  end))
end

-- Function to clean and filter non-printable characters
function cleanText(str)
  return (str:gsub("[\0-\31\127]", ""))
end

-- Manually format JSON with indentation
function formatJsonManually(jsonText)
  local indent = 0
  local formatted = ""
  local inString = false
  local prevChar = ""

  -- Loop through each character and add indentation
  for i = 1, #jsonText do
    local currentChar = jsonText:sub(i, i)

    if currentChar == '"' and prevChar ~= "\\" then
      inString = not inString
    end

    if inString then
      formatted = formatted .. currentChar
    else
      if currentChar == "{" or currentChar == "[" then
        formatted = formatted .. currentChar .. "\n"
        indent = indent + 1
        formatted = formatted .. string.rep("  ", indent)
      elseif currentChar == "}" or currentChar == "]" then
        formatted = formatted .. "\n"
        indent = indent - 1
        formatted = formatted .. string.rep("  ", indent) .. currentChar
      elseif currentChar == "," then
        formatted = formatted .. currentChar .. "\n"
        formatted = formatted .. string.rep("  ", indent)
      else
        formatted = formatted .. currentChar
      end
    end

    prevChar = currentChar
  end

  return formatted
end

-- Save data to a file
function save(data)
  local file = io.open("/sdcard/decrypt.txt", "w")
  file:write(data)
  file:close()
end

-- Main function that controls the decryption process
function DarkTunnel()
  limit = true
  gg.clearResults()
  gg.setVisible(true)
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_JAVA | gg.REGION_C_HEAP | gg.REGION_C_DATA)

  -- Function to search and save specific data
  local function searchAndSave(searchText)
    gg.searchNumber(searchText, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local result = gg.getResults(1)

    if #result > 0 then
      if limit == false then
        result[1].address = result[1].address - 8192
      end
      local readedMem = rwmem(result[1].address, 10000)
      save(hexdecode(readedMem))
      return true
    end

    return false
  end

  -- List of tests with specific byte patterns
  local tests = {
    'h 22 72 65 6D 61 72 6B 73 22 3A 20',
    'h 22 6E 61 6D 65 22 3A 20',
    'h 22 72 65 6D 61 72 6B 73 22 3A',
    'h 7B 53 53 48 2D 50 61 79 6C 6F 61 64 22 2C 22',
    'h 7B 22 53 53 48 2D 50 72 6F 78 79 2D 50 61 79 6C 6F 61 64',
    'h 7B 0A 20 20 22 64 6E 73 22 3A 20 7B',
    ':"inbounds":[{',
    ':"response":',
    ':"shortId":""',
    ':{"dns":',
    'h 72 65 6D 61 72 6B 73 22 3A 22',
    'h 7B 22 61 64 64 72 65 73 73 22 3A 22',
  }

  -- Attempt to search and save one of the tests
  local addressFound = false

  for _, searchText in ipairs(tests) do
    if searchAndSave(searchText) then
      addressFound = true
      break
    end
  end

  -- If no address is found, show an alert and exit
  if not addressFound then
    gg.alert("Decryption failed. Re-import the file and run the script.")
    os.exit()
  end

  -- Read the decrypted data from the file
  local file = io.open("/sdcard/decrypt.txt", "r")
  local dark = file:read("*all")
  file:close()

  -- Clean the text (remove non-printable characters)
  dark = cleanText(dark)

  -- If it's JSON-like data, format it manually
  if dark:sub(1, 1) == "{" or dark:sub(1, 1) == "[" then
    dark = formatJsonManually(dark)
  end

  -- Prepare the header
  local header = [[
#=====! NPV TUNNEL !=====#
t.me/The_Little_PsyCh0
t.me/+bK8XHh6ZVxZlYTBh
-----------------------------
𝙱𝚊𝚜𝚎 𝙲𝚘𝚍𝚎 𝙱𝚢: t.me/The_Little_PsyCh0🇬🇹
]]

  -- Prepare the footer
  local footer = [[
-----------------------------
]]

  -- Wrap the JSON data with the "Json" markers
  local jsonWrapped = "```json\n" .. dark .. "\n```"

  -- Combine header, JSON wrapped data, and footer
  local message = header .. "\n" .. jsonWrapped .. "\n" .. footer

  -- Save the combined message to the file
  save(message)

  -- Copy text including header, formatted JSON, and footer
  gg.alert(message, 'Copy and exit')
  gg.copyText(message, false)

  -- Save the message to the file
  save(message)

  -- Hide GameGuardian interface
  gg.setVisible(false)
end

DarkTunnel()
