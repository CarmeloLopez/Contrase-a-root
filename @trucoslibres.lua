function jsonum()
targetInfo = gg.getTargetInfo()
app = targetInfo.packageName
local utf8 = {}
local bit = {
  data32 = {}
}
do
  do
    for SRD1_5_ = 1, 32 do
      bit.data32[SRD1_5_] = 2 ^ (32 - SRD1_5_)
    end
  end
end
local toby = string.byte
function utf8.charbytes(s, i)
  i = i or 1
  local c = string.byte(s, i)
  if c > 0 and c <= 127 then
    do return 1 end
    return
  end
  if c >= 194 and c <= 223 then
    do return 2 end
    return
  end
  if c >= 224 and c <= 239 then
    do return 3 end
    return
  end
  if c >= 240 and c <= 244 then
    return 4
  end
  return 1
end

local ded
function bit:d2b(arg)
  if arg == nil then
    return
  end
  local tr, c = {}, arg < 0
  if c then
    arg = 0 - arg
  end
  do
    do
      for SRD1_7_ = 1, 32 do
        if arg >= self.data32[SRD1_7_] then
          tr[SRD1_7_] = 1
          arg = arg - self.data32[SRD1_7_]
        else
          tr[SRD1_7_] = 0
        end
      end
    end
  end
  if c then
    tr = self:_bnot(tr)
    tr = self:b2d(tr) + 1
    tr = self:d2b(tr)
  end
  return tr
end

function bit:b2d(arg, neg)
  local nr = 0
  if arg[1] == 1 and neg == true then
    arg = self:_bnot(arg)
    nr = self:b2d(arg) + 1
    nr = 0 - nr
  else
    do
      for SRD1_7_ = 1, 32 do
        if arg[SRD1_7_] == 1 then
          nr = nr + 2 ^ (32 - SRD1_7_)
        end
      end
    end
  end
  return nr
end

function bit:_and(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 and op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_or(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 or op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_xor(a, b)
  local op1 = self:d2b(a)
  if op1 == nil then
    return nil
  end
  local op2 = self:d2b(b)
  if op2 == nil then
    return nil
  end
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == op2[SRD1_9_] then
          r[SRD1_9_] = 0
        else
          r[SRD1_9_] = 1
        end
      end
    end
  end
  return self:b2d(r, true)
end

local switch = {
  [1] = function(s, pos)
    local c1 = toby(s, pos)
    return c1
  end
  ,
  [2] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local int1 = bit:_and(31, c1)
    local int2 = bit:_and(63, c2)
    return bit:_or(bit:_lshift(int1, 6), int2)
  end
  ,
  [3] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local o2 = bit:_or(bit:_lshift(int1, 12), bit:_lshift(int2, 6))
    local dt = bit:_or(o2, int3)
    return dt
  end
  ,
  [4] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local c4 = toby(s, pos + 3)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local int4 = bit:_and(63, c4)
    local o2 = bit:_or(bit:_lshift(int1, 18), bit:_lshift(int2, 12))
    local o3 = bit:_or(o2, bit:_lshift(int3, 6))
    local o4 = bit:_or(o3, int4)
    return o4
  end
  
}
function bit:_bnot(op1)
  local r = {}
  do
    do
      for SRD1_6_ = 1, 32 do
        if op1[SRD1_6_] == 1 then
          r[SRD1_6_] = 0
        else
          r[SRD1_6_] = 1
        end
      end
    end
  end
  return r
end

function bit:_not(a)
  local op1 = self:d2b(a)
  local r = self:_bnot(op1)
  return self:b2d(r, true)
end

function bit:charCodeAt(s)
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
end

function bit:_rshift(a, n)
  local r = 0
  if a < 0 then
    r = 0 - self:_frshift(0 - a, n)
  elseif a >= 0 then
    r = self:_frshift(a, n)
  end
  return r
end

function bit:_frshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  local left = 32 - n
  if n < 32 and n > 0 then
    do
      for SRD1_9_ = left, 1, -1 do
        r[SRD1_9_ + n] = op1[SRD1_9_]
      end
    end
  end
  return self:b2d(r)
end

function bit:_lshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  if n < 32 and n > 0 then
    do
      for SRD1_8_ = n, 31 do
        r[SRD1_8_ - n + 1] = op1[SRD1_8_ + 1]
      end
    end
  end
  return self:b2d(r, true)
end

function trim(s)
  return s:match("^%s*(.*)"):match("(.-)%s*$")
end

local json = {}
local kind_of = function(obj)
  if type(obj) ~= "table" then
    return type(obj)
  end
  local i = 1
  do
    do
      for SRD1_5_ in pairs(obj) do
        if obj[i] ~= nil then
          i = i + 1
        else
          return "table"
        end
      end
    end
  end
  if i == 1 then
    do return "table" end
    return
  end
  return "array"
end

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
  do
    do
      for SRD1_6_, SRD1_7_ in ipairs(in_char) do
        s = s:gsub(SRD1_7_, "\\" .. out_char[SRD1_6_])
      end
    end
  end
  return s
end

local skip_delim = function(str, pos, delim, err_if_missing)
  pos = pos + #str:match("^%s*", pos)
  if str:sub(pos, pos) ~= delim then
    if err_if_missing then
      error("Expected " .. delim .. " close position " .. pos)
    end
    return pos, false
  end
  return pos + 1, true
end

local function parse_str_val(str, pos, val)
  val = val or ""
  local early_end_error = "End of input encountered during string parsing."
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
  local nextc = str:sub(pos + 1, pos + 1)
  if not nextc then
    error(early_end_error)
  end
  return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

local parse_num_val = function(str, pos)
  local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
  local val = tonumber(num_str)
  if not val then
    error("Error parsing number at position " .. pos .. ".")
  end
  return val, pos + #num_str
end

function json.stringify(obj, as_key)
  local s = {}
  local kind = kind_of(obj)
  if kind == "array" then
    if as_key then
      error("Unable to encode array as key.")
    end
    s[#s + 1] = "["
    do
      do
        for SRD1_7_, SRD1_8_ in ipairs(obj) do
          if SRD1_7_ > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "]"
  elseif kind == "table" then
    if as_key then
      error("Unable to key encode table.")
    end
    s[#s + 1] = "{"
    do
      do
        for SRD1_7_, SRD1_8_ in pairs(obj) do
          if #s > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_7_, true)
          s[#s + 1] = ":"
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "}"
  else
    if kind == "string" then
      do return "\"" .. escape_str(obj) .. "\"" end
      return
    end
    if kind == "number" then
      if as_key then
        return "\"" .. tostring(obj) .. "\""
      end
      do return tostring(obj) end
      return
    end
    if kind == "boolean" then
      do return tostring(obj) end
      return
    end
    if kind == "nil" then
      do return "null" end
      return
    end
    error("unjsonifiable type,: " .. kind .. ".")
  end
  return table.concat(s)
end

json.null = {}
function json.parse(str, pos, end_delim)
  pos = pos or 1
  if pos > #str then
    error("Reached unexpected end of input ")
  end
  local pos = pos + #str:match("^%s*", pos)
  local first = str:sub(pos, pos)
  if first == "{" then
    do
      local obj, key, delim_found = {}, true, true
      pos = pos + 1
      while true do
        key, pos = json.parse(str, pos, "}")
        if key == nil then
          return obj, pos
        end
        if not delim_found then
          error("Missing comma between object items.")
        end
        pos = skip_delim(str, pos, ":", true)
        obj[key], pos = json.parse(str, pos)
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "[" then
    do
      local arr, val, delim_found = {}, true, true
      pos = pos + 1
      while true do
        val, pos = json.parse(str, pos, "]")
        if val == nil then
          return arr, pos
        end
        if not delim_found then
          error("Missing comma between array items.")
        end
        arr[#arr + 1] = val
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "\"" then
    do return parse_str_val(str, pos + 1) end
    return
  end
  if first == "-" or first:match("%d") then
    do return parse_num_val(str, pos) end
    return
  end
  if first == end_delim then
    do return nil, pos + 1 end
    return
  end
  do
    local literals = {
      ["true"] = true,
      ["false"] = false,
      null = json.null
    }
    do
      do
        for SRD1_9_, SRD1_10_ in pairs(literals) do
          local lit_end = pos + #SRD1_9_ - 1
          if str:sub(pos, lit_end) == SRD1_9_ then
            return SRD1_10_, lit_end + 1
          end
        end
      end
    end
    local pos_info_str = "position " .. pos .. ": " .. str:sub(pos, pos + 10)
    error("Invalid json syntax starting at " .. pos_info_str)
  end
end

function enc(data, b)
  return (data:gsub(".", function(x)
    local r, b = "", x:byte()
    do
      do
        for SRD1_6_ = 8, 1, -1 do
          r = r .. (b % 2 ^ SRD1_6_ - b % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
    if #x < 6 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 6 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (6 - SRD1_5_) or 0)
        end
      end
    end
    return b:sub(c + 1, c + 1)
  end
  ) .. ({
    "",
    "??",
    "?"
  })[#data % 3 + 1]
end

function dec(data, b)
  data = string.gsub(data, "[^" .. b .. "=]", "")
  return (data:gsub(".", function(x)
    if x == "?" then
      return ""
    end
    local r, f = "", b:find(x) - 1
    do
      do
        for SRD1_6_ = 6, 1, -1 do
          r = r .. (f % 2 ^ SRD1_6_ - f % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
    if #x ~= 8 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 8 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (8 - SRD1_5_) or 0)
        end
      end
    end
    return string.char(c)
  end
  ))
end
function rwmem(Address, SizeOrBuffer)
assert(Address ~= nil, "[rwmem]: error, given address is null.")
_rw = {}
if type(SizeOrBuffer) == "number" then
_ = ""
for _ = 1, SizeOrBuffer do _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE} end
for v, __ in ipairs(gg.getValues(_rw)) do
 if __.value == 00 and limit == true then
 return _
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
return math.floor(tonumber(number) or error("It was not possible transmitir '" .. tostring(number) .. "' enumerate.'"))
end

function save(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(data)
  gg.toast("I got you Lionel Richie!")
end

function save2(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(json.stringify(data))
  gg.toast("I got you Lionel Richie!")
end

function configjson(data)
  io.open(gg.EXT_STORAGE .. "/config.txt", "w"):write(data)
  gg.toast(data .. [[

𝙘𝙤𝙥𝙞𝙤𝙪, 𝙛𝙖𝙧𝙞𝙣𝙝𝙖?]])
  print(data, false)
  gg.clearResults()

end

  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_DATA)
  gg.setVisible(false)
  gg.searchNumber("h 7B 0A 20 22 56 65 72 73 69", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("File Not Found ❌")
    json_2 = true
  end
  if json_2 then
    gg.searchNumber("h 7B 0A 20 22 56 65 72 73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("File Not Found ❌")
      print([[

calma barboleta]])
      print("\nsink or swim?\n\n")
      os.exit()
    end
  end
  limit = true
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  readedMem = rwmem(r[1].address, 200000)
  configjson(hexdecode(readedMem))
  do
    do
      for SRD1_5_, SRD1_6_ in ipairs(r) do
        r[SRD1_5_].flags = gg.TYPE_FLOAT
        r[SRD1_5_].value = "1000"
      end
    end
  end
gg.setValues(r)
  gg.clearResults()
  gg.toast("File Found ✓")
  print("I got you Lionel Richie!\n\nThe file is at: /sdcard/config.txt")
  gg.clearResults()
os.exit()
end
function revhunter()
targetInfo = gg.getTargetInfo()
app = targetInfo.packageName
local utf8 = {}
local bit = {
  data32 = {}
}
do
  do
    for SRD1_5_ = 1, 32 do
      bit.data32[SRD1_5_] = 2 ^ (32 - SRD1_5_)
    end
  end
end
local toby = string.byte
function utf8.charbytes(s, i)
  i = i or 1
  local c = string.byte(s, i)
  if c > 0 and c <= 127 then
    do return 1 end
    return
  end
  if c >= 194 and c <= 223 then
    do return 2 end
    return
  end
  if c >= 224 and c <= 239 then
    do return 3 end
    return
  end
  if c >= 240 and c <= 244 then
    return 4
  end
  return 1
end

local ded
function bit:d2b(arg)
  if arg == nil then
    return
  end
  local tr, c = {}, arg < 0
  if c then
    arg = 0 - arg
  end
  do
    do
      for SRD1_7_ = 1, 32 do
        if arg >= self.data32[SRD1_7_] then
          tr[SRD1_7_] = 1
          arg = arg - self.data32[SRD1_7_]
        else
          tr[SRD1_7_] = 0
        end
      end
    end
  end
  if c then
    tr = self:_bnot(tr)
    tr = self:b2d(tr) + 1
    tr = self:d2b(tr)
  end
  return tr
end

function bit:b2d(arg, neg)
  local nr = 0
  if arg[1] == 1 and neg == true then
    arg = self:_bnot(arg)
    nr = self:b2d(arg) + 1
    nr = 0 - nr
  else
    do
      for SRD1_7_ = 1, 32 do
        if arg[SRD1_7_] == 1 then
          nr = nr + 2 ^ (32 - SRD1_7_)
        end
      end
    end
  end
  return nr
end

function bit:_and(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 and op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_or(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 or op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_xor(a, b)
  local op1 = self:d2b(a)
  if op1 == nil then
    return nil
  end
  local op2 = self:d2b(b)
  if op2 == nil then
    return nil
  end
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == op2[SRD1_9_] then
          r[SRD1_9_] = 0
        else
          r[SRD1_9_] = 1
        end
      end
    end
  end
  return self:b2d(r, true)
end

local switch = {
  [1] = function(s, pos)
    local c1 = toby(s, pos)
    return c1
  end
  ,
  [2] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local int1 = bit:_and(31, c1)
    local int2 = bit:_and(63, c2)
    return bit:_or(bit:_lshift(int1, 6), int2)
  end
  ,
  [3] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local o2 = bit:_or(bit:_lshift(int1, 12), bit:_lshift(int2, 6))
    local dt = bit:_or(o2, int3)
    return dt
  end
  ,
  [4] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local c4 = toby(s, pos + 3)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local int4 = bit:_and(63, c4)
    local o2 = bit:_or(bit:_lshift(int1, 18), bit:_lshift(int2, 12))
    local o3 = bit:_or(o2, bit:_lshift(int3, 6))
    local o4 = bit:_or(o3, int4)
    return o4
  end
  
}
function bit:_bnot(op1)
  local r = {}
  do
    do
      for SRD1_6_ = 1, 32 do
        if op1[SRD1_6_] == 1 then
          r[SRD1_6_] = 0
        else
          r[SRD1_6_] = 1
        end
      end
    end
  end
  return r
end

function bit:_not(a)
  local op1 = self:d2b(a)
  local r = self:_bnot(op1)
  return self:b2d(r, true)
end

function bit:charCodeAt(s)
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
end

function bit:_rshift(a, n)
  local r = 0
  if a < 0 then
    r = 0 - self:_frshift(0 - a, n)
  elseif a >= 0 then
    r = self:_frshift(a, n)
  end
  return r
end

function bit:_frshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  local left = 32 - n
  if n < 32 and n > 0 then
    do
      for SRD1_9_ = left, 1, -1 do
        r[SRD1_9_ + n] = op1[SRD1_9_]
      end
    end
  end
  return self:b2d(r)
end

function bit:_lshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  if n < 32 and n > 0 then
    do
      for SRD1_8_ = n, 31 do
        r[SRD1_8_ - n + 1] = op1[SRD1_8_ + 1]
      end
    end
  end
  return self:b2d(r, true)
end

function trim(s)
  return s:match("^%s*(.*)"):match("(.-)%s*$")
end

local json = {}
local kind_of = function(obj)
  if type(obj) ~= "table" then
    return type(obj)
  end
  local i = 1
  do
    do
      for SRD1_5_ in pairs(obj) do
        if obj[i] ~= nil then
          i = i + 1
        else
          return "table"
        end
      end
    end
  end
  if i == 1 then
    do return "table" end
    return
  end
  return "array"
end

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
  do
    do
      for SRD1_6_, SRD1_7_ in ipairs(in_char) do
        s = s:gsub(SRD1_7_, "\\" .. out_char[SRD1_6_])
      end
    end
  end
  return s
end

local skip_delim = function(str, pos, delim, err_if_missing)
  pos = pos + #str:match("^%s*", pos)
  if str:sub(pos, pos) ~= delim then
    if err_if_missing then
      error("Expected " .. delim .. " close position " .. pos)
    end
    return pos, false
  end
  return pos + 1, true
end

local function parse_str_val(str, pos, val)
  val = val or ""
  local early_end_error = "End of input encountered during string parsing."
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
  local nextc = str:sub(pos + 1, pos + 1)
  if not nextc then
    error(early_end_error)
  end
  return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

local parse_num_val = function(str, pos)
  local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
  local val = tonumber(num_str)
  if not val then
    error("Error parsing number at position " .. pos .. ".")
  end
  return val, pos + #num_str
end

function json.stringify(obj, as_key)
  local s = {}
  local kind = kind_of(obj)
  if kind == "array" then
    if as_key then
      error("Unable to encode array as key.")
    end
    s[#s + 1] = "["
    do
      do
        for SRD1_7_, SRD1_8_ in ipairs(obj) do
          if SRD1_7_ > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "]"
  elseif kind == "table" then
    if as_key then
      error("Unable to key encode table.")
    end
    s[#s + 1] = "{"
    do
      do
        for SRD1_7_, SRD1_8_ in pairs(obj) do
          if #s > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_7_, true)
          s[#s + 1] = ":"
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "}"
  else
    if kind == "string" then
      do return "\"" .. escape_str(obj) .. "\"" end
      return
    end
    if kind == "number" then
      if as_key then
        return "\"" .. tostring(obj) .. "\""
      end
      do return tostring(obj) end
      return
    end
    if kind == "boolean" then
      do return tostring(obj) end
      return
    end
    if kind == "nil" then
      do return "null" end
      return
    end
    error("unjsonifiable type,: " .. kind .. ".")
  end
  return table.concat(s)
end

json.null = {}
function json.parse(str, pos, end_delim)
  pos = pos or 1
  if pos > #str then
    error("Reached unexpected end of input ")
  end
  local pos = pos + #str:match("^%s*", pos)
  local first = str:sub(pos, pos)
  if first == "{" then
    do
      local obj, key, delim_found = {}, true, true
      pos = pos + 1
      while true do
        key, pos = json.parse(str, pos, "}")
        if key == nil then
          return obj, pos
        end
        if not delim_found then
          error("Missing comma between object items.")
        end
        pos = skip_delim(str, pos, ":", true)
        obj[key], pos = json.parse(str, pos)
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "[" then
    do
      local arr, val, delim_found = {}, true, true
      pos = pos + 1
      while true do
        val, pos = json.parse(str, pos, "]")
        if val == nil then
          return arr, pos
        end
        if not delim_found then
          error("Missing comma between array items.")
        end
        arr[#arr + 1] = val
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "\"" then
    do return parse_str_val(str, pos + 1) end
    return
  end
  if first == "-" or first:match("%d") then
    do return parse_num_val(str, pos) end
    return
  end
  if first == end_delim then
    do return nil, pos + 1 end
    return
  end
  do
    local literals = {
      ["true"] = true,
      ["false"] = false,
      null = json.null
    }
    do
      do
        for SRD1_9_, SRD1_10_ in pairs(literals) do
          local lit_end = pos + #SRD1_9_ - 1
          if str:sub(pos, lit_end) == SRD1_9_ then
            return SRD1_10_, lit_end + 1
          end
        end
      end
    end
    local pos_info_str = "position " .. pos .. ": " .. str:sub(pos, pos + 10)
    error("Invalid json syntax starting at " .. pos_info_str)
  end
end

function enc(data, b)
  return (data:gsub(".", function(x)
    local r, b = "", x:byte()
    do
      do
        for SRD1_6_ = 8, 1, -1 do
          r = r .. (b % 2 ^ SRD1_6_ - b % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
    if #x < 6 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 6 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (6 - SRD1_5_) or 0)
        end
      end
    end
    return b:sub(c + 1, c + 1)
  end
  ) .. ({
    "",
    "??",
    "?"
  })[#data % 3 + 1]
end

function dec(data, b)
  data = string.gsub(data, "[^" .. b .. "=]", "")
  return (data:gsub(".", function(x)
    if x == "?" then
      return ""
    end
    local r, f = "", b:find(x) - 1
    do
      do
        for SRD1_6_ = 6, 1, -1 do
          r = r .. (f % 2 ^ SRD1_6_ - f % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
    if #x ~= 8 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 8 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (8 - SRD1_5_) or 0)
        end
      end
    end
    return string.char(c)
  end
  ))
end
function rwmem(Address, SizeOrBuffer)
assert(Address ~= nil, "[rwmem]: error, given address is null.")
_rw = {}
if type(SizeOrBuffer) == "number" then
_ = ""
for _ = 1, SizeOrBuffer do _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE} end
for v, __ in ipairs(gg.getValues(_rw)) do
 if __.value == 00 and limit == true then
 return _
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
return math.floor(tonumber(number) or error("It was not possible transmitir '" .. tostring(number) .. "' enumerate.'"))
end

function save(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(data)
  gg.toast("I got you Lionel Richie!")
end

function save2(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(json.stringify(data))
  gg.toast("I got you Lionel Richie!")
end

function configjson(data)
  io.open(gg.EXT_STORAGE .. "/config.txt", "w"):write(data)
  gg.toast(data .. [[

𝙘𝙤𝙥𝙞𝙤𝙪, 𝙛𝙖𝙧𝙞𝙣𝙝𝙖?]])
  print(data, false)
  gg.clearResults()

end

  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_DATA)
  gg.setVisible(false)
  gg.searchNumber("h 7B 0A 20 20 20 20 22 56 65 72 73 69 6F 6E", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("File Not Found ❌")
    json_2 = true
  end
  if json_2 then
    gg.searchNumber("h 7B 0A 20 20 20 20 22 56 65 72 73 69", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("File Not Found ❌")
      print([[

calma barboleta]])
      print("\nsink or swim?\n\n")
      os.exit()
    end
  end
  limit = true
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  readedMem = rwmem(r[1].address, 200000)
  configjson(hexdecode(readedMem))
  do
    do
      for SRD1_5_, SRD1_6_ in ipairs(r) do
        r[SRD1_5_].flags = gg.TYPE_FLOAT
        r[SRD1_5_].value = "1000"
      end
    end
  end
gg.setValues(r)
  gg.clearResults()
  gg.toast("File Found ✓")
  print("I got you Lionel Richie!\n\nThe file is at: /sdcard/config.txt")
  gg.clearResults()
os.exit()
end
function socksliteP()
targetInfo = gg.getTargetInfo()
app = targetInfo.packageName
local utf8 = {}
local bit = {
  data32 = {}
}
do
  do
    for SRD1_5_ = 1, 32 do
      bit.data32[SRD1_5_] = 2 ^ (32 - SRD1_5_)
    end
  end
end
local toby = string.byte
function utf8.charbytes(s, i)
  i = i or 1
  local c = string.byte(s, i)
  if c > 0 and c <= 127 then
    do return 1 end
    return
  end
  if c >= 194 and c <= 223 then
    do return 2 end
    return
  end
  if c >= 224 and c <= 239 then
    do return 3 end
    return
  end
  if c >= 240 and c <= 244 then
    return 4
  end
  return 1
end

local ded
function bit:d2b(arg)
  if arg == nil then
    return
  end
  local tr, c = {}, arg < 0
  if c then
    arg = 0 - arg
  end
  do
    do
      for SRD1_7_ = 1, 32 do
        if arg >= self.data32[SRD1_7_] then
          tr[SRD1_7_] = 1
          arg = arg - self.data32[SRD1_7_]
        else
          tr[SRD1_7_] = 0
        end
      end
    end
  end
  if c then
    tr = self:_bnot(tr)
    tr = self:b2d(tr) + 1
    tr = self:d2b(tr)
  end
  return tr
end

function bit:b2d(arg, neg)
  local nr = 0
  if arg[1] == 1 and neg == true then
    arg = self:_bnot(arg)
    nr = self:b2d(arg) + 1
    nr = 0 - nr
  else
    do
      for SRD1_7_ = 1, 32 do
        if arg[SRD1_7_] == 1 then
          nr = nr + 2 ^ (32 - SRD1_7_)
        end
      end
    end
  end
  return nr
end

function bit:_and(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 and op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_or(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 or op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_xor(a, b)
  local op1 = self:d2b(a)
  if op1 == nil then
    return nil
  end
  local op2 = self:d2b(b)
  if op2 == nil then
    return nil
  end
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == op2[SRD1_9_] then
          r[SRD1_9_] = 0
        else
          r[SRD1_9_] = 1
        end
      end
    end
  end
  return self:b2d(r, true)
end

local switch = {
  [1] = function(s, pos)
    local c1 = toby(s, pos)
    return c1
  end
  ,
  [2] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local int1 = bit:_and(31, c1)
    local int2 = bit:_and(63, c2)
    return bit:_or(bit:_lshift(int1, 6), int2)
  end
  ,
  [3] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local o2 = bit:_or(bit:_lshift(int1, 12), bit:_lshift(int2, 6))
    local dt = bit:_or(o2, int3)
    return dt
  end
  ,
  [4] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local c4 = toby(s, pos + 3)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local int4 = bit:_and(63, c4)
    local o2 = bit:_or(bit:_lshift(int1, 18), bit:_lshift(int2, 12))
    local o3 = bit:_or(o2, bit:_lshift(int3, 6))
    local o4 = bit:_or(o3, int4)
    return o4
  end
  
}
function bit:_bnot(op1)
  local r = {}
  do
    do
      for SRD1_6_ = 1, 32 do
        if op1[SRD1_6_] == 1 then
          r[SRD1_6_] = 0
        else
          r[SRD1_6_] = 1
        end
      end
    end
  end
  return r
end

function bit:_not(a)
  local op1 = self:d2b(a)
  local r = self:_bnot(op1)
  return self:b2d(r, true)
end

function bit:charCodeAt(s)
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
end

function bit:_rshift(a, n)
  local r = 0
  if a < 0 then
    r = 0 - self:_frshift(0 - a, n)
  elseif a >= 0 then
    r = self:_frshift(a, n)
  end
  return r
end

function bit:_frshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  local left = 32 - n
  if n < 32 and n > 0 then
    do
      for SRD1_9_ = left, 1, -1 do
        r[SRD1_9_ + n] = op1[SRD1_9_]
      end
    end
  end
  return self:b2d(r)
end

function bit:_lshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  if n < 32 and n > 0 then
    do
      for SRD1_8_ = n, 31 do
        r[SRD1_8_ - n + 1] = op1[SRD1_8_ + 1]
      end
    end
  end
  return self:b2d(r, true)
end

function trim(s)
  return s:match("^%s*(.*)"):match("(.-)%s*$")
end

local json = {}
local kind_of = function(obj)
  if type(obj) ~= "table" then
    return type(obj)
  end
  local i = 1
  do
    do
      for SRD1_5_ in pairs(obj) do
        if obj[i] ~= nil then
          i = i + 1
        else
          return "table"
        end
      end
    end
  end
  if i == 1 then
    do return "table" end
    return
  end
  return "array"
end

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
  do
    do
      for SRD1_6_, SRD1_7_ in ipairs(in_char) do
        s = s:gsub(SRD1_7_, "\\" .. out_char[SRD1_6_])
      end
    end
  end
  return s
end

local skip_delim = function(str, pos, delim, err_if_missing)
  pos = pos + #str:match("^%s*", pos)
  if str:sub(pos, pos) ~= delim then
    if err_if_missing then
      error("Expected " .. delim .. " close position " .. pos)
    end
    return pos, false
  end
  return pos + 1, true
end

local function parse_str_val(str, pos, val)
  val = val or ""
  local early_end_error = "End of input encountered during string parsing."
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
  local nextc = str:sub(pos + 1, pos + 1)
  if not nextc then
    error(early_end_error)
  end
  return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

local parse_num_val = function(str, pos)
  local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
  local val = tonumber(num_str)
  if not val then
    error("Error parsing number at position " .. pos .. ".")
  end
  return val, pos + #num_str
end

function json.stringify(obj, as_key)
  local s = {}
  local kind = kind_of(obj)
  if kind == "array" then
    if as_key then
      error("Unable to encode array as key.")
    end
    s[#s + 1] = "["
    do
      do
        for SRD1_7_, SRD1_8_ in ipairs(obj) do
          if SRD1_7_ > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "]"
  elseif kind == "table" then
    if as_key then
      error("Unable to key encode table.")
    end
    s[#s + 1] = "{"
    do
      do
        for SRD1_7_, SRD1_8_ in pairs(obj) do
          if #s > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_7_, true)
          s[#s + 1] = ":"
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "}"
  else
    if kind == "string" then
      do return "\"" .. escape_str(obj) .. "\"" end
      return
    end
    if kind == "number" then
      if as_key then
        return "\"" .. tostring(obj) .. "\""
      end
      do return tostring(obj) end
      return
    end
    if kind == "boolean" then
      do return tostring(obj) end
      return
    end
    if kind == "nil" then
      do return "null" end
      return
    end
    error("unjsonifiable type,: " .. kind .. ".")
  end
  return table.concat(s)
end

json.null = {}
function json.parse(str, pos, end_delim)
  pos = pos or 1
  if pos > #str then
    error("Reached unexpected end of input ")
  end
  local pos = pos + #str:match("^%s*", pos)
  local first = str:sub(pos, pos)
  if first == "{" then
    do
      local obj, key, delim_found = {}, true, true
      pos = pos + 1
      while true do
        key, pos = json.parse(str, pos, "}")
        if key == nil then
          return obj, pos
        end
        if not delim_found then
          error("Missing comma between object items.")
        end
        pos = skip_delim(str, pos, ":", true)
        obj[key], pos = json.parse(str, pos)
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "[" then
    do
      local arr, val, delim_found = {}, true, true
      pos = pos + 1
      while true do
        val, pos = json.parse(str, pos, "]")
        if val == nil then
          return arr, pos
        end
        if not delim_found then
          error("Missing comma between array items.")
        end
        arr[#arr + 1] = val
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "\"" then
    do return parse_str_val(str, pos + 1) end
    return
  end
  if first == "-" or first:match("%d") then
    do return parse_num_val(str, pos) end
    return
  end
  if first == end_delim then
    do return nil, pos + 1 end
    return
  end
  do
    local literals = {
      ["true"] = true,
      ["false"] = false,
      null = json.null
    }
    do
      do
        for SRD1_9_, SRD1_10_ in pairs(literals) do
          local lit_end = pos + #SRD1_9_ - 1
          if str:sub(pos, lit_end) == SRD1_9_ then
            return SRD1_10_, lit_end + 1
          end
        end
      end
    end
    local pos_info_str = "position " .. pos .. ": " .. str:sub(pos, pos + 10)
    error("Invalid json syntax starting at " .. pos_info_str)
  end
end

function enc(data, b)
  return (data:gsub(".", function(x)
    local r, b = "", x:byte()
    do
      do
        for SRD1_6_ = 8, 1, -1 do
          r = r .. (b % 2 ^ SRD1_6_ - b % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
    if #x < 6 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 6 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (6 - SRD1_5_) or 0)
        end
      end
    end
    return b:sub(c + 1, c + 1)
  end
  ) .. ({
    "",
    "??",
    "?"
  })[#data % 3 + 1]
end

function dec(data, b)
  data = string.gsub(data, "[^" .. b .. "=]", "")
  return (data:gsub(".", function(x)
    if x == "?" then
      return ""
    end
    local r, f = "", b:find(x) - 1
    do
      do
        for SRD1_6_ = 6, 1, -1 do
          r = r .. (f % 2 ^ SRD1_6_ - f % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
    if #x ~= 8 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 8 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (8 - SRD1_5_) or 0)
        end
      end
    end
    return string.char(c)
  end
  ))
end
function rwmem(Address, SizeOrBuffer)
assert(Address ~= nil, "[rwmem]: error, given address is null.")
_rw = {}
if type(SizeOrBuffer) == "number" then
_ = ""
for _ = 1, SizeOrBuffer do _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE} end
for v, __ in ipairs(gg.getValues(_rw)) do
 if __.value == 00 and limit == true then
 return _
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
return math.floor(tonumber(number) or error("It was not possible transmitir '" .. tostring(number) .. "' enumerate.'"))
end

function save(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(data)
  gg.toast("I got you Lionel Richie!")
end

function save2(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(json.stringify(data))
  gg.toast("I got you Lionel Richie!")
end

function configjson(data)
  io.open(gg.EXT_STORAGE .. "/config.txt", "w"):write(data)
  gg.toast(data .. [[

𝙘𝙤𝙥𝙞𝙤𝙪, 𝙛𝙖𝙧𝙞𝙣𝙝𝙖?]])
  print(data, false)
  gg.clearResults()

end

  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_HEAP | gg.REGION_C_DATA)
  gg.setVisible(false)
  gg.searchNumber("h 7B 09 22 56 65 72 73 69 6F 6E 22 3A 20 22", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("File Not Found ❌")
    json_2 = true
  end
  if json_2 then
  gg.searchNumber("h 7B 09 22 56 65 72 73 69", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("File Not Found ❌")
      print([[

calma barboleta]])
      print("\nsink or swim?\n\n")
      os.exit()
    end
  end
  limit = true
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  readedMem = rwmem(r[1].address, 200000)
  configjson(hexdecode(readedMem))
  do
    do
      for SRD1_5_, SRD1_6_ in ipairs(r) do
        r[SRD1_5_].flags = gg.TYPE_FLOAT
        r[SRD1_5_].value = "1000"
      end
    end
  end
gg.setValues(r)
  gg.clearResults()
  gg.toast("File Found ✓")
  print("I got you Lionel Richie!\n\nThe file is at: /sdcard/config.txt")
  gg.clearResults()
os.exit()
end
x9ok = 1
function x9on()
while (true) do
if gg.isVisible(true) then 
x9A= 1
gg.clearResults()
gg.setVisible(false) 
end

x9B = 1
function x9B()
menu = gg.choice({
" =>  HTTP CUSTOM",
" =>  HTTP INJECTOR",
" ❌  EXIT "},nil, (_G["os"]["date"]([[
THIS FILE WAS CREATED BY t.me/Idovpn1
Today %d/%m/%Y
Hours %H:%M:%S

  select one:]])))
 if menu == nil then x9P() end
 if menu == 1 then hckmkz() end
 if menu == 2 then ehi() end
 if menu == 3 then EXIT() end
 x9A = -1
end
 
 function hckmkz()
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
                  
                  table.insert(tbl,"N/A")
              end
              
              -- print()
              no = no + 1
              -- print(hexdecode(match_1):gsub("[^\x20-\x7e]+",""))
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
            ["name"] = "║   ┣► Payload",["regex"] = "[a-zA-Z]+[\x20]+.*[\x5bcrlf\x5d]+"     
        },
        [2] = {
            ["name"] = "║   ┣► Proxy",["regex"] = "[%w\x2e]+[\x3a][%d]+[a-zA-Z0-9]"
        },
        [3] = {
            ["name"] = "║   ┣► BlockRoot",["regex"] = "(.*)"
        },
        [4] = {
            ["name"] = "║   ┣► ExtraSniffer",["regex"] = "(.*)"
        },
        [5] = {
            ["name"] = "║   ┣► Expiration",["regex"] = "(.*)"
        },
--        
--        

        [8] = {
            ["name"] = "║   ┣► SSH",["regex"] = "[0-9a-zA-Zx\x2e\x2d]+:[%d]+@[%w\x2e\x2d]+:[%w]+"
        },
        [9] = {
            ["name"] = "║   ┣► ProviderLock",["regex"] = "(.*)"
        },
        [10] = {
            ["name"] = "║   ┣► ProviderID",["regex"] = "[0-9]"
        },
        [11] = {
            ["name"] = "║   ┣► OpenVPN-Cerf",["regex"] = "(.*)"
        },
        [12] = {
            ["name"] = "║   ┣► OpenVPN-User:Pass",["regex"] = "(.*)"
        },
        [13] = {
            ["name"] = "║   ┣► SNI",["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
        },

        [15] = {
            ["name"] = "║   ┣► PortUDPGW",["regex"] = "(.*)"
        },
        [17] = {
            ["name"] = "║   ┣► LockHWID",["regex"] = "(.*)"
        },
        [18] = {
            ["name"] = "║   ┣► ValueHWID",["regex"] = "(.*)"
        },
        [19] = {
            ["name"] = "║   ┣► NickPowered",["regex"] = "(.*)"
        },
        [22] = {
            ["name"] = "║   ┣► BypassPassword",["regex"] = "(.*)"
        },
        [23] = {
            ["name"] = "║   ┣► Password",["regex"] = "[a-zA-Z0-9] + (.*)"
        },
--     
        [25] = {
            ["name"] = "║   ┣► PsiphonAuthorizon",["regex"] = "[\x5b]\x22.*]"
--  
        },
        [27] = {
            ["name"] = "║   ┣► V2Ray",["regex"] = "(..*)"
        },
        [28] = {
            ["name"] = "║   ┣► VersionApp",["regex"] = "(.*)"
        },
--
--        },
        [30] = {
            ["name"] = "║   ┣► NameServer",["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
        },
        [31] = {
            ["name"] = "║   ┣► PublicKey",["regex"] = "[a-f0-9]+[32,64,50,66,61,6c,73,65]+"
        },
        [32] = {
            ["name"] = "║   ┣► DNS",["regex"] = "[%w\x2e\x2d]+[\x2e]+[%w]+"
        }
    }
      
      
      
      local message = "━━━━━━━━━━━━━━━━━━━━━┑\n  [𝐃𝐞𝐜𝐫𝐲𝐩𝐭 𝐒𝐮𝐜𝐜𝐞𝐬𝐬!](http://lnk.pw/hilo) \n━━◢𝙳𝙰𝚃𝙾𝚂 𝙳𝙴𝙻 𝚂𝙴𝚁𝚅𝙸𝙳𝙾𝚁◤━━  \n║   ┣► [ＴＯＣＡ ＡＱＵＩ](https://t.me/trucoslibres)\n━━◢𝙳𝙰𝚃𝙾𝚂 𝙳𝙴𝙻 𝚂𝙴𝚁𝚅𝙸𝙳𝙾𝚁◤━━  \n"
  
      for index, value in ipairs(tbl) do
          
          if cfgRegex[index] and value:match(cfgRegex[index]["regex"]) then
              local namaKonten = cfgRegex[index]["name"]
              local valueRegexKonten = value:match(cfgRegex[index]["regex"])
  
              message = message..namaKonten.." \n "..valueRegexKonten.."\n━━◢𝙳𝙰𝚃𝙾𝚂 𝙳𝙴𝙻 𝚂𝙴𝚁𝚅𝙸𝙳𝙾𝚁◤━━  \n"
          end
          
      end
  
      message = message.."ᴜɴʟᴏᴋᴇʀ ʙʏ: 󠀡󠀡♚𝑰'҉‌𝑨𝒎 ҉‌𝑳‌𝒒ᷫ𝒖‌𝒆𝒏‌𝒅𝒐҉‌\n┗━━━━━━━━━━━━━━━━━━━━━┙\n"
      return message
    end


    local contentToDecrypt = hexdecode(data)
    contentToDecrypt = prosesData(hexdecode(data))
    local hasil = getOutput(contentToDecrypt)
    io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(hexdecode(data))
    gg.alert(hasil)
    gg.copyText(hasil, false)
    gg.toast("✓ Decrypt Success And Result Copied To Clipboard..!!")
  end
  
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber(":GET / HTTP/", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("✖ KEY 1")
    hc_method2 = true
  end
  if hc_method2 then
    gg.searchNumber("Host: ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ KEY 2")
      hc_method3 = true
    end
  end
  if hc_method3 then
    gg.searchNumber(":inbounds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ KEY 3")
      hc_method4 = true
    end
  end
  if hc_method4 then
    gg.searchNumber(":[crlf]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ KEY 4")
      hc_method5 = true
    end
  end
  if hc_method5 then
    gg.searchNumber("Upgrade: websocket", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ KEY 5")
      hc_method6 = true
    end
  end
  if hc_method6 then
    gg.searchNumber(":GET wss:", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ KEY 6")
      hc_method7 = true
    end
  end
  if hc_method7 then
    gg.searchNumber(":[splitPsiphon]", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("✖ KEY 7")
      hc_method8 = true
    end
  end
  if hc_method8 then
    print("✖ All methods failed")
  end
       
    local r = gg.getResults(100)
    if limit == false then
        r[1].address = r[1].address - 0x5000
        end
    
    readedMem = rwmem(r[1].address, 50000)
    save(readedMem)
      gg.toast("accidentally kicked")
  print("\nwhat will be my challenge today?\n\n")
    gg.clearResults()
    end

function ehi()

limit = true
targetInfo = gg.getTargetInfo()
app = targetInfo.packageName
local utf8 = {}
local bit = {
  data32 = {}
}
do
  do
    for SRD1_5_ = 1, 32 do
      bit.data32[SRD1_5_] = 2 ^ (32 - SRD1_5_)
    end
  end
end
local toby = string.byte
function utf8.charbytes(s, i)
  i = i or 1
  local c = string.byte(s, i)
  if c > 0 and c <= 127 then
    do return 1 end
    return
  end
  if c >= 194 and c <= 223 then
    do return 2 end
    return
  end
  if c >= 224 and c <= 239 then
    do return 3 end
    return
  end
  if c >= 240 and c <= 244 then
    return 4
  end
  return 1
end

local ded
function bit:d2b(arg)
  if arg == nil then
    return
  end
  local tr, c = {}, arg < 0
  if c then
    arg = 0 - arg
  end
  do
    do
      for SRD1_7_ = 1, 32 do
        if arg >= self.data32[SRD1_7_] then
          tr[SRD1_7_] = 1
          arg = arg - self.data32[SRD1_7_]
        else
          tr[SRD1_7_] = 0
        end
      end
    end
  end
  if c then
    tr = self:_bnot(tr)
    tr = self:b2d(tr) + 1
    tr = self:d2b(tr)
  end
  return tr
end

function bit:b2d(arg, neg)
  local nr = 0
  if arg[1] == 1 and neg == true then
    arg = self:_bnot(arg)
    nr = self:b2d(arg) + 1
    nr = 0 - nr
  else
    do
      for SRD1_7_ = 1, 32 do
        if arg[SRD1_7_] == 1 then
          nr = nr + 2 ^ (32 - SRD1_7_)
        end
      end
    end
  end
  return nr
end

function bit:_and(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 and op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_or(a, b)
  local op1 = self:d2b(a)
  local op2 = self:d2b(b)
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == 1 or op2[SRD1_9_] == 1 then
          r[SRD1_9_] = 1
        else
          r[SRD1_9_] = 0
        end
      end
    end
  end
  return self:b2d(r, true)
end

function bit:_xor(a, b)
  local op1 = self:d2b(a)
  if op1 == nil then
    return nil
  end
  local op2 = self:d2b(b)
  if op2 == nil then
    return nil
  end
  local r = {}
  do
    do
      for SRD1_9_ = 1, 32 do
        if op1[SRD1_9_] == op2[SRD1_9_] then
          r[SRD1_9_] = 0
        else
          r[SRD1_9_] = 1
        end
      end
    end
  end
  return self:b2d(r, true)
end

local switch = {
  [1] = function(s, pos)
    local c1 = toby(s, pos)
    return c1
  end
  ,
  [2] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local int1 = bit:_and(31, c1)
    local int2 = bit:_and(63, c2)
    return bit:_or(bit:_lshift(int1, 6), int2)
  end
  ,
  [3] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local o2 = bit:_or(bit:_lshift(int1, 12), bit:_lshift(int2, 6))
    local dt = bit:_or(o2, int3)
    return dt
  end
  ,
  [4] = function(s, pos)
    local c1 = toby(s, pos)
    local c2 = toby(s, pos + 1)
    local c3 = toby(s, pos + 2)
    local c4 = toby(s, pos + 3)
    local int1 = bit:_and(15, c1)
    local int2 = bit:_and(63, c2)
    local int3 = bit:_and(63, c3)
    local int4 = bit:_and(63, c4)
    local o2 = bit:_or(bit:_lshift(int1, 18), bit:_lshift(int2, 12))
    local o3 = bit:_or(o2, bit:_lshift(int3, 6))
    local o4 = bit:_or(o3, int4)
    return o4
  end
  
}
function bit:_bnot(op1)
  local r = {}
  do
    do
      for SRD1_6_ = 1, 32 do
        if op1[SRD1_6_] == 1 then
          r[SRD1_6_] = 0
        else
          r[SRD1_6_] = 1
        end
      end
    end
  end
  return r
end

function bit:_not(a)
  local op1 = self:d2b(a)
  local r = self:_bnot(op1)
  return self:b2d(r, true)
end

function bit:charCodeAt(s)
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
end

function bit:_rshift(a, n)
  local r = 0
  if a < 0 then
    r = 0 - self:_frshift(0 - a, n)
  elseif a >= 0 then
    r = self:_frshift(a, n)
  end
  return r
end

function bit:_frshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  local left = 32 - n
  if n < 32 and n > 0 then
    do
      for SRD1_9_ = left, 1, -1 do
        r[SRD1_9_ + n] = op1[SRD1_9_]
      end
    end
  end
  return self:b2d(r)
end

function bit:_lshift(a, n)
  local op1 = self:d2b(a)
  local r = self:d2b(0)
  if n < 32 and n > 0 then
    do
      for SRD1_8_ = n, 31 do
        r[SRD1_8_ - n + 1] = op1[SRD1_8_ + 1]
      end
    end
  end
  return self:b2d(r, true)
end

function trim(s)
  return s:match("^%s*(.*)"):match("(.-)%s*$")
end

local json = {}
local kind_of = function(obj)
  if type(obj) ~= "table" then
    return type(obj)
  end
  local i = 1
  do
    do
      for SRD1_5_ in pairs(obj) do
        if obj[i] ~= nil then
          i = i + 1
        else
          return "table"
        end
      end
    end
  end
  if i == 1 then
    do return "table" end
    return
  end
  return "array"
end

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
  do
    do
      for SRD1_6_, SRD1_7_ in ipairs(in_char) do
        s = s:gsub(SRD1_7_, "\\" .. out_char[SRD1_6_])
      end
    end
  end
  return s
end

local skip_delim = function(str, pos, delim, err_if_missing)
  pos = pos + #str:match("^%s*", pos)
  if str:sub(pos, pos) ~= delim then
    if err_if_missing then
      error("Expected " .. delim .. " close position " .. pos)
    end
    return pos, false
  end
  return pos + 1, true
end

local function parse_str_val(str, pos, val)
  val = val or ""
  local early_end_error = "End of input encountered during string parsing."
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
  local nextc = str:sub(pos + 1, pos + 1)
  if not nextc then
    error(early_end_error)
  end
  return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

local parse_num_val = function(str, pos)
  local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
  local val = tonumber(num_str)
  if not val then
    error("Error parsing number at position " .. pos .. ".")
  end
  return val, pos + #num_str
end

function json.stringify(obj, as_key)
  local s = {}
  local kind = kind_of(obj)
  if kind == "array" then
    if as_key then
      error("Unable to encode array as key.")
    end
    s[#s + 1] = "["
    do
      do
        for SRD1_7_, SRD1_8_ in ipairs(obj) do
          if SRD1_7_ > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "]"
  elseif kind == "table" then
    if as_key then
      error("Unable to key encode table.")
    end
    s[#s + 1] = "{"
    do
      do
        for SRD1_7_, SRD1_8_ in pairs(obj) do
          if #s > 1 then
            s[#s + 1] = ", "
          end
          s[#s + 1] = json.stringify(SRD1_7_, true)
          s[#s + 1] = ":"
          s[#s + 1] = json.stringify(SRD1_8_)
        end
      end
    end
    s[#s + 1] = "}"
  else
    if kind == "string" then
      do return "\"" .. escape_str(obj) .. "\"" end
      return
    end
    if kind == "number" then
      if as_key then
        return "\"" .. tostring(obj) .. "\""
      end
      do return tostring(obj) end
      return
    end
    if kind == "boolean" then
      do return tostring(obj) end
      return
    end
    if kind == "nil" then
      do return "null" end
      return
    end
    error("unjsonifiable type,: " .. kind .. ".")
  end
  return table.concat(s)
end

json.null = {}
function json.parse(str, pos, end_delim)
  pos = pos or 1
  if pos > #str then
    error("Reached unexpected end of input ")
  end
  local pos = pos + #str:match("^%s*", pos)
  local first = str:sub(pos, pos)
  if first == "{" then
    do
      local obj, key, delim_found = {}, true, true
      pos = pos + 1
      while true do
        key, pos = json.parse(str, pos, "}")
        if key == nil then
          return obj, pos
        end
        if not delim_found then
          error("Missing comma between object items.")
        end
        pos = skip_delim(str, pos, ":", true)
        obj[key], pos = json.parse(str, pos)
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "[" then
    do
      local arr, val, delim_found = {}, true, true
      pos = pos + 1
      while true do
        val, pos = json.parse(str, pos, "]")
        if val == nil then
          return arr, pos
        end
        if not delim_found then
          error("Missing comma between array items.")
        end
        arr[#arr + 1] = val
        pos, delim_found = skip_delim(str, pos, ",")
      end
    end
    return
  end
  if first == "\"" then
    do return parse_str_val(str, pos + 1) end
    return
  end
  if first == "-" or first:match("%d") then
    do return parse_num_val(str, pos) end
    return
  end
  if first == end_delim then
    do return nil, pos + 1 end
    return
  end
  do
    local literals = {
      ["true"] = true,
      ["false"] = false,
      null = json.null
    }
    do
      do
        for SRD1_9_, SRD1_10_ in pairs(literals) do
          local lit_end = pos + #SRD1_9_ - 1
          if str:sub(pos, lit_end) == SRD1_9_ then
            return SRD1_10_, lit_end + 1
          end
        end
      end
    end
    local pos_info_str = "position " .. pos .. ": " .. str:sub(pos, pos + 10)
    error("Invalid json syntax starting at " .. pos_info_str)
  end
end

function enc(data, b)
  return (data:gsub(".", function(x)
    local r, b = "", x:byte()
    do
      do
        for SRD1_6_ = 8, 1, -1 do
          r = r .. (b % 2 ^ SRD1_6_ - b % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
    if #x < 6 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 6 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (6 - SRD1_5_) or 0)
        end
      end
    end
    return b:sub(c + 1, c + 1)
  end
  ) .. ({
    "",
    "??",
    "?"
  })[#data % 3 + 1]
end

function dec(data, b)
  data = string.gsub(data, "[^" .. b .. "=]", "")
  return (data:gsub(".", function(x)
    if x == "?" then
      return ""
    end
    local r, f = "", b:find(x) - 1
    do
      do
        for SRD1_6_ = 6, 1, -1 do
          r = r .. (f % 2 ^ SRD1_6_ - f % 2 ^ (SRD1_6_ - 1) > 0 and "1" or "0")
        end
      end
    end
    return r
  end
  ):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
    if #x ~= 8 then
      return ""
    end
    local c = 0
    do
      do
        for SRD1_5_ = 1, 8 do
          c = c + (x:sub(SRD1_5_, SRD1_5_) == "1" and 2 ^ (8 - SRD1_5_) or 0)
        end
      end
    end
    return string.char(c)
  end
  ))
end

function ehix9(key, data)
  local preData, result
  preData = ""
  result = ""
  local bit_key = bit:charCodeAt(key)
  do
    local c = 0
    local c2 = 1
    while c < #data and not (c >= #data) do
      preData = preData .. string.char(tonumber(string.sub(data, c2, c + 2), 16))
      c = c + 2
      c2 = c2 + 2
    end
  end
  local bit_data = bit:charCodeAt(preData)
  do
    local a = 0
    local b = 0
    while a < #preData do
      if b >= #key then
        b = 0
      end
      a = a + 1
      b = b + 1
      local xor = bit:_xor(bit_data[a], bit_key[b])
      if xor ~= nil and xor < 256 then
        result = result .. string.char(bit:_xor(bit_data[a], bit_key[b]))
      end
    end
  end
  return result
end

function decryptEhi(salt, data)
  data = dec(string.reverse(data), "RkLC2QaVMPYgGJW/A4f7qzDb9e+t6Hr0Zp8OlNyjuxKcTw1o5EIimhBn3UvdSFXs?")
  return ehix9(salt, string.sub(data, 1, #data))
end

function decryptEhil(salt, data)
  data = dec(string.reverse(data), "t6uxKcTwhBn3UvRkLC2QaVM1o5A4f7Hr0Zp8OyjqzDb9e+dSFXsEIimPYgGJW/lN?")
  return ehix9(salt, string.sub(data, 1, #data))
end

function rwmem(Address, SizeOrBuffer)
  assert(Address ~= nil, "[rwmem]: error, given address is null.")
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
  return math.floor(tonumber(number) or error("It was not possible transmitir '" .. tostring(number) .. "' enumerate.'"))
end

function save(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(data)
  gg.toast("I got you Lionel Richie!")
end

function save2(data)
  io.open(gg.EXT_STORAGE .. "/decrypt.txt", "w"):write(json.stringify(data))
  gg.toast("I got you Lionel Richie!")
end

function v2json(data)
  io.open(gg.EXT_STORAGE .. "/v2ray.txt", "w"):write(data)
end

function saveEhi(data)
  io.open(gg.EXT_STORAGE .. "/ehi.txt", "w"):write(data)
end

local ehi, configSalt
local Http = {}
function Http:New(data)
  ehi = data
  if data.configSalt == "" then
    configSalt = "EVZJNI"
  else
    configSalt = data.configSalt
  end
end

function Http:Dec(key)
  if ehi.configVersionCode > 10000 then
    if ehi[key] then
      do return decryptEhil(configSalt, ehi[key]) end
      return
    end
    do return "N/A" end
    return
  end
  if ehi[key] then
    do return decryptEhi(configSalt, ehi[key]) end
    return
  end
  return "N/A"
end

function Http:TunnelType()
  if ehi.tunnelType == "ssl_proxy_payload_ssh" then
    do return "𝙎𝙎𝙃 ➔ 𝙏𝙇𝙎/𝙎𝙎𝙇 + 𝙋𝙧𝙤𝙭𝙮 ➔ 𝘾𝙪𝙨𝙩𝙤𝙢 𝙋𝙖𝙮𝙡𝙤𝙖𝙙" end
    return
  end
  if ehi.tunnelType == "http_obfs_shadowsocks" then
    do return "𝙃𝙏𝙏𝙋 (𝙊𝙗𝙛𝙨) ➔ 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨" end
    return
  end
  if ehi.tunnelType == "ssl_ssh" then
    do return "𝙎𝙎𝙇/𝙏𝙇𝙎 ➔ 𝙎𝙎𝙃" end
    return
  end
  if ehi.tunnelType == "proxy_payload_ssh" then
    do return "𝙎𝙎𝙃 ➔ 𝙃𝙏𝙏𝙋 𝙋𝙧𝙤𝙭𝙮 ➔ 𝘾𝙪𝙨𝙩𝙤𝙢 𝙋𝙖𝙮𝙡𝙤��𝙙" end
    return
  end
  if ehi.tunnelType == "proxy_ssh" then
    do return "𝙎𝙎𝙃 ➔ 𝙃𝙏𝙏𝙋 𝙋𝙧𝙤𝙭𝙮" end
    return
  end
  if ehi.tunnelType == "direct_ssh" then
    do return "𝙎𝙎𝙃 (𝘿𝙞𝙧𝙚𝙘𝙩)" end
    return
  end
  if ehi.tunnelType == "direct_shadowsocks" then
    do return "𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 (𝘿𝙞𝙧𝙚𝙘𝙩)" end
    return
  end
  if ehi.tunnelType == "dnstt_ssh" then
    do return "𝘿𝙉𝙎 ➔ 𝘿𝙉𝙎𝙏𝙏 ➔ 𝙎𝙎𝙃" end
    return
  end
  if ehi.tunnelType == "ssl_proxy_ssh" then
    do return "𝙃𝙏𝙏𝙋 𝙋𝙧𝙤𝙭𝙮 ➔ 𝙎𝙎𝙇 ➔ 𝙎𝙎𝙃" end
    return
  end
  if ehi.tunnelType == "ssl_shadowsocks" then
    do return "𝙎𝙎𝙇/𝙏𝙇𝙎 (𝙎𝙩𝙪𝙣𝙣𝙚𝙡) ➔ 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨" end
    return
  end
  if ehi.tunnelType == "tls_obfs_shadowsocks" then
    do return "𝙎𝙎𝙇/𝙏𝙇𝙎 (𝙊𝙗𝙛𝙨) ➔ 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨" end
    return
  end
  if ehi.tunnelType == "proxy_shadowsocks" then
    do return "𝙃𝙏𝙏𝙋 𝙋𝙧𝙤𝙭𝙮 ➔ 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨" end
    return
  end
  if ehi.tunnelType == "proxy_payload_shadowsocks" then
    do return "𝙃𝙏𝙏𝙋 𝙋𝙧𝙤𝙭𝙮 ➔ 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 (𝘾𝙪𝙨𝙩𝙤𝙢 𝙋𝙖𝙮𝙡𝙤𝙖𝙙)" end
    return
  end
  if ehi.v2ray_all_settings == "v2ray_all_settings" then
    do return "𝙑2𝙍𝙖𝙮" end
    return
  end
  if ehi.tunnelType == "direct_dnsurgent" then
    do return "𝘿𝙞𝙧𝙚����𝙩 𝘿𝙣𝙨𝙪𝙧𝙜𝙚𝙣𝙩" end
    return
  end
  if ehi.tunnelType == "sni_host_port" then
    do return "𝙎𝙎𝙇/𝙏𝙇𝙎" end
    return
  end
  if ehi.tunnelType == "direct_v2r_vmess" then
    do return "𝙑2𝙍𝙖𝙮" end
    return
  end
  if ehi.tunnelType == "v2rRawJson" then
    do return "𝙫2𝙟𝙨𝙤𝙣 ➔ 𝙑2𝙧𝙖𝙮" end
    return
  end
  if ehi.tunnelType == "lock_all" then
    do return "𝙡𝙤𝙘𝙠 ➔ 𝙑2𝙧𝙖𝙮" end
    return
  end
  if ehi.tunnelType == "unknown" then
    do return "𝙃𝙏𝙏𝙋 𝙋𝙧𝙤𝙭𝙮 ➔ 𝙎𝙎𝙃 (𝘾𝙪𝙨𝙩𝙤𝙢 𝙋𝙖𝙮𝙡𝙤𝙖𝙙)" end
    return
  end
  if ehi.tunnelType == "http_obfs" then
    do return "𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 ➔ 𝙃𝙏𝙏𝙋 𝙊𝙗𝙛𝙨" end
    return
  end
  if ehi.tunnelType == "direct_payload_ssh" then
    do return "𝙎𝙎𝙃 ➔ 𝘿𝙞𝙧𝙚𝙘𝙩 ➔ 𝘾𝙪𝙨𝙩𝙤𝙢 𝙋𝙖𝙮𝙡𝙤𝙖𝙙" end
    return
  end
  return ehi.tunnelType
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

local ssh_mode = {
  "ssl_proxy_payload_ssh",
  "direct_payload_ssh",
  "proxy_payload_ssh",
  "proxy_ssh",
  "dnstt_ssh",
  "ssl_shadowsocks",
  "tls_obfs_shadowsocks",
  "proxy_shadowsocks",
  "proxy_payload_shadowsocks",
  "direct_dnsurgent",
  "direct_v2r_vmess",
  "unknown",
  "v2rRawJson",
  "v2ray_all_settings",
  "http_obfs_shadowsocks",
  "direct_shadowsocks",
  "ssl_proxy_ssh",
  "direct_ssh",
  "sni_host_port",
  "ssl_ssh",
  "lock_all",
  "http_obfs"
}
function parseHttpInjector(data)
  local jsonData = json.parse(hexdecode(data))
  gg.toast("it's show time")
  
  Http:New(jsonData)
  if includes(ssh_mode, ehi.tunnelType) then
    message = "\n━━◢𝙳𝙰𝚃𝙾𝚂 𝙳𝙴𝙻 𝚂𝙴𝚁𝚅𝙸𝙳𝙾𝚁◤━━  \n\nMy[ＴＯＣＡ ＡＱＵＩ](https://t.me/trucoslibres)\n\n━━◢𝙳𝙰𝚃𝙾𝚂 𝙳𝙴𝙻 𝚂𝙴𝚁𝚅𝙸𝙳𝙾𝚁◤━━  \n"
    if ehi.overwriteServerData ~= "" then
      serverData = json.parse(ehi.overwriteServerData)
      message = message .. "➔) 𝙍𝙚𝙥𝙡𝙖𝙘𝙚 𝙨𝙚𝙧𝙫𝙚𝙧 𝙙𝙖𝙩𝙖: " .. ehi.overwriteServerData .. [[


]]
      message = message .. "➔) 𝙊𝙫𝙚𝙧𝙧𝙞𝙙𝙚 𝙨𝙚𝙧𝙫𝙚𝙧 𝙥𝙧𝙤𝙭𝙮 𝙥𝙤𝙧𝙩: " .. ehi.overwriteServerProxyPort .. [[


]]
      message = message .. "➔) 𝙊𝙫𝙚𝙧𝙬𝙧𝙞𝙩𝙚 𝙎𝙚𝙧𝙫𝙚𝙧 𝙏𝙮𝙥𝙚: " .. ehi.overwriteServerType .. [[


]]
      message = message .. "➔) 𝙚𝙫𝙤𝙯𝙞 𝙨𝙚𝙧𝙫𝙚𝙧: " .. serverData.name .. " (" .. serverData.ip .. [[
)

]]
elseif ehi.tunnelType == "direct_shadowsocks" then
      message = message .. "➔) 𝙃𝙏𝙏𝙋 𝙊𝙗𝙛𝙨 𝙎𝙚𝙩𝙩𝙞𝙣𝙜𝙨:: " .. Http:Dec("httpObfsSettings") .. [[


]]
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙃𝙤𝙨𝙩: " .. Http:Dec("shadowsocksHost") .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙤𝙧𝙩: " .. ehi.shadowsocksPort .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙: " .. Http:Dec("shadowsocksPassword") .. [[


]]
      message = message .. "➔) 𝙀𝙣𝙘𝙧𝙮𝙥𝙩𝙈𝙚𝙩𝙝𝙤𝙙: " .. string.upper(ehi.shadowsocksEncryptionMethod) .. [[


]]
      message = message .. "➔) 𝙑2𝙧𝙈𝙪𝙭𝘾𝙤𝙣𝙘𝙪𝙧𝙧𝙚𝙣𝙘𝙮: " .. Http:Dec("v2rMuxConcurrency") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
elseif ehi.tunnelType == "tls_obfs_shadowsocks" then
      message = message .. "➔) 𝙃𝙏𝙏𝙋 𝙊𝙗𝙛𝙨 𝙎𝙚𝙩𝙩𝙞𝙣𝙜𝙨:: " .. Http:Dec("httpObfsSettings") .. [[


]]
message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙃𝙤𝙨𝙩: " .. Http:Dec("shadowsocksHost") .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙤𝙧𝙩: " .. ehi.shadowsocksPort .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙: " .. Http:Dec("shadowsocksPassword") .. [[


]]
      message = message .. "➔) 𝙀𝙣𝙘𝙧𝙮𝙥𝙩𝙈𝙚𝙩𝙝𝙤𝙙: " .. string.upper(ehi.shadowsocksEncryptionMethod) .. [[


]]
      message = message .. "➔) 𝙑2𝙧𝙈𝙪𝙭𝘾𝙤𝙣𝙘𝙪𝙧𝙧𝙚𝙣𝙘𝙮: " .. Http:Dec("v2rMuxConcurrency") .. [[


]]
      message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
elseif ehi.tunnelType == "http_obfs_shadowsocks" then
      message = message .. "➔) 𝙃𝙏𝙏𝙋 𝙊𝙗𝙛𝙨 𝙎𝙚𝙩𝙩𝙞𝙣𝙜𝙨:: " .. Http:Dec("httpObfsSettings") .. [[


]]
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙃𝙤𝙨𝙩: " .. Http:Dec("shadowsocksHost") .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙤𝙧𝙩: " .. ehi.shadowsocksPort .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙: " .. Http:Dec("shadowsocksPassword") .. [[


]]
      message = message .. "➔) 𝙀𝙣𝙘𝙧𝙮𝙥𝙩𝙈𝙚𝙩𝙝𝙤𝙙: " .. string.upper(ehi.shadowsocksEncryptionMethod) .. [[


]]
      message = message .. "➔) 𝙑2𝙧𝙈𝙪𝙭𝘾𝙤𝙣𝙘𝙪𝙧𝙧𝙚𝙣𝙘𝙮: " .. Http:Dec("v2rMuxConcurrency") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    else
      message = message .. "➔) 𝙎𝙎𝙃 𝙃𝙤𝙨𝙩: " .. Http:Dec("host") .. "\n"
      message = message .. "➔) 𝙋𝙤𝙧𝙩: " .. ehi.port .. "\n"
      message = message .. "➔) 𝙐𝙨𝙚𝙧𝙣𝙖𝙢𝙚: " .. Http:Dec("user") .. "\n"
      message = message .. "➔) 𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙: " .. Http:Dec("password") .. [[


]]
 end
    if ehi.remoteProxy then
      if ehi.remoteProxyUsername and ehi.remoteProxyUsername ~= "" then
        message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. "\n"
        message = message .. "➔) 𝙐𝙨𝙚𝙧𝙣𝙖𝙢𝙚 𝙚 𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙 𝙋𝙧𝙤𝙭𝙮 𝘼𝙪𝙩𝙝: " .. Http:Dec("remoteProxyUsername") .. ":" .. Http:Dec("remoteProxyPassword") .. [[


]]
      end
      elseif ehi.overwriteServerData ~= "" then
      if ehi.tunnelType == "proxy_payload_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
end
      elseif ehi.overwriteServerData ~= "" then
      if ehi.tunnelType == "ssl_proxy_payload_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
end
      elseif ehi.overwriteServerData ~= "" then
      if ehi.tunnelType == "proxy_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
      end
    elseif ehi.overwriteServerData ~= "" then
    if ehi.tunnelType == "ssl_ssh" then
      message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
end
    elseif ehi.overwriteServerData ~= "" then
    if ehi.tunnelType == "sni_host_port" then
      message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]

    end
    elseif ehi.tunnelType == "ssl_shadowsocks" then
    message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙃𝙤𝙨𝙩: " .. Http:Dec("shadowsocksHost") .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙤𝙧𝙩: " .. ehi.shadowsocksPort .. "\n"
      message = message .. "➔) 𝙎𝙝𝙖𝙙𝙤𝙬𝙨𝙤𝙘𝙠𝙨 𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙: " .. Http:Dec("shadowsocksPassword") .. [[


]]
      message = message .. "➔) 𝙀𝙣𝙘𝙧𝙮𝙥𝙩𝙈𝙚𝙩𝙝𝙤𝙙: " .. string.upper(ehi.shadowsocksEncryptionMethod) .. [[


]]
      message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "direct_payload_ssh" then
      message = message .. "╰┈[☞] 𝙋𝙖𝙮𝙡𝙤𝙖𝙙: " .. Http:Dec("payload") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "ssl_proxy_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "sni_host_port" then
    message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "ssl_proxy_payload_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
      message = message .. "╰┈[☞] 𝙋𝙖𝙮𝙡𝙤𝙖𝙙: " .. Http:Dec("payload") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "proxy_payload_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
      message = message .. "╰┈[☞] 𝙋𝙖𝙮𝙡𝙤𝙖𝙙: " .. Http:Dec("payload") .. [[


]]
      message = message .. "��� 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "proxy_ssh" then
    message = message .. "➔) 𝙋𝙧𝙤𝙭𝙮: " .. Http:Dec("remoteProxy") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "ssl_ssh" then
    message = message .. "➔) 𝙎𝙉𝙄: " .. Http:Dec("sniHostname") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "direct_ssh" then
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "direct_v2r_vmess" then
      message = "➔) 𝙫2𝙧𝙍𝙖𝙬𝙅𝙨𝙤𝙣: " .. Http:Dec("v2rRawJson") .. [[


]]
      if ehi.v2rRawJson then
        v2json = Http:Dec("v2rRawJson")
        saveEhi(v2json)
        gg.copyText(v2json, false)
        gg.toast("copied to clipboard")
        print(message)
        return
      end
      message = message .. "➔) 𝙐𝙨𝙚𝙧 𝘼𝙡𝙩𝙚𝙧 𝙄𝘿: " .. Http:Dec("v2rAlterId") .. "\n"
      message = message .. "➔) 𝙑2𝙍𝙖𝙮 𝙃𝙤𝙨𝙩: " .. Http:Dec("v2rHost") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙆𝙘𝙥𝙃𝙚𝙖𝙙𝙚𝙧𝙏𝙮𝙥𝙚: " .. Http:Dec("v2rKcpHeaderType") .. "\n"
      message = message .. "➔) 𝙑2𝙧𝙈𝙪𝙭𝘾𝙤𝙣𝙘𝙪𝙧𝙧𝙚𝙣𝙘𝙮: " .. Http:Dec("v2rMuxConcurrency") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙋𝙖𝙨𝙨𝙬𝙤𝙧𝙙: " .. Http:Dec("v2rPassword") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙉𝙚𝙩𝙬𝙤𝙧𝙠: " .. Http:Dec("v2rNetwork") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙋𝙤𝙧𝙩: " .. Http:Dec("v2rPort") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙋𝙧𝙤𝙩𝙤𝙘𝙤𝙡: " .. Http:Dec("v2rProtocol") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙃2𝙃𝙤𝙨𝙩: " .. Http:Dec("v2rH2Host") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙃2𝙋𝙖𝙩𝙝: " .. Http:Dec("v2rH2Path") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙌𝙪𝙞𝙘𝙃𝙚𝙖𝙙𝙚𝙧𝙏𝙮𝙥𝙚: " .. Http:Dec("v2rQuicHeaderType") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙏𝙘𝙥𝙃𝙚𝙖𝙙𝙚𝙧𝙏𝙮𝙥𝙚: " .. Http:Dec("v2rTcpHeaderType") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙐𝙨𝙚𝙧𝙄𝙙: " .. Http:Dec("v2rUserId") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙏𝙡𝙨𝙎𝙣𝙞: " .. Http:Dec("v2rTlsSni") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙑𝙡𝙚𝙨𝙨𝙎𝙚𝙘𝙪𝙧𝙞𝙩𝙮: " .. Http:Dec("v2rVlessSecurity") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙑𝙢𝙚𝙨𝙨𝙎𝙚𝙘𝙪𝙧𝙞𝙩𝙮: " .. Http:Dec("v2rVmessSecurity") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙎𝙨𝙎𝙚𝙘𝙪𝙧𝙞𝙩𝙮: " .. Http:Dec("v2rSsSecurity") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙌𝙪𝙞𝙘𝙎𝙚𝙘𝙪𝙧𝙞𝙩𝙮: " .. Http:Dec("v2rQuicSecurity") .. "\n"
      message = message .. "➔) 𝙃𝙚𝙖𝙙𝙚𝙧 𝙒𝙨: " .. Http:Dec("v2rWsHeader") .. "\n"
      message = message .. "➔) 𝙫2𝙧𝙒𝙨𝙋𝙖𝙩𝙝: " .. Http:Dec("v2rWsPath") .. [[


]]
      message = message .. "➔) 𝙫2𝙧𝘾𝙤𝙧𝙚𝙏𝙮𝙥𝙚: " .. Http:Dec("v2rCoreType") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]
    end
    if ehi.tunnelType == "dnstt_ssh" then
      message = message .. "➔) 𝘿𝙉𝙎 𝙩𝙮𝙥𝙚: " .. ehi.dnsType .. "\n"
      message = message .. "➔) 𝘿𝙉𝙎 𝙍𝙚𝙨𝙤𝙡𝙫𝙚𝙧 𝘼𝙙𝙙𝙧𝙚𝙨𝙨: " .. Http:Dec("dnsttDnsResolverAddr") .. "\n"
      message = message .. "➔) 𝘿𝙉𝙎𝙏𝙏 𝙉𝙖𝙢𝙚𝙨𝙚𝙧𝙫𝙚𝙧: " .. Http:Dec("dnsttNameserver") .. "\n"
      message = message .. "➔) 𝘿𝙉𝙎𝙏𝙏 𝙋𝙪𝙗𝙡𝙞𝙘 𝙆𝙚𝙮: " .. Http:Dec("dnsttPublicKey") .. [[


]]
      message = message .. "🔥 𝙏𝙪𝙣𝙣𝙚𝙡 𝙏𝙮𝙥𝙚: " .. Http:TunnelType() .. [[


]]

   end
    gg.copyText(message, false)
    gg.toast(message .. [[

sudah ke copy, pake nanya]])
    print(message)
    saveEhi(message)
  end
  os.exit()
end

function ehievozi()
  limit = true
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("h 7B 22 63 6F 6E 66 69 67 45 78 70 69 72 79 54 69 6D 65 73 74", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1)
  if #r < 1 then
    gg.toast("File Not Found ❌: configExpiryTimest")
    ehi_2 = true
  end
  gg.searchNumber("h 7B 22 63 6F 6E 66 69 67 45 78 70 69 72 79 54 69 6D 65 73 74", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
        gg.toast("File Not Found ❌")
        ehi_2 = true
    end
    
    if ehi_2 then
        gg.searchNumber("h 7B 22 56 32 72 54 6C 73 41 6C 70 6E 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        local r = gg.getResults(1)
        if #r < 1 then
        gg.toast("File Not Found ❌: V2rTlsAlpn")
      print([[

WARNING☠️☠️☠️☠️]])
        ehi_3 = true
        end
        end
  if ehi_3 then
    gg.searchNumber("h 7B 22 63 6F 6E 66 69 67 49 64 65 6E 74 69 66 69 65 72 22 3A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local r = gg.getResults(1)
    if #r < 1 then
      gg.toast("File Not Found ❌: configIdentifier")
      print([[

JANGAN LUPA SUBREK]])
      print("\nImport lagi bang nanti tunggu 3/4detik and start the fun script\n\n")
      os.exit()
    end
  end
  gg.searchNumber("h7B", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  local r = gg.getResults(1000)
  readedMem = rwmem(r[1].address, 50000)
  save(hexdecode(readedMem))
  do
    do
      for SRD1_5_, SRD1_6_ in ipairs(r) do
        r[SRD1_5_].flags = gg.TYPE_FLOAT
        r[SRD1_5_].value = "1000"
      end
    end
  end
  gg.setValues(r)
  gg.clearResults()
  parseHttpInjector(readedMem)
end
  
if app == "com.evozi.injector" then
  ehievozi()
elseif app == "com.evozi.injector.lite" then
  ehievozi()
else
  gg.toast("don't let me see")
  print("\ntoday is not your lucky day\n\n")
end
gg.clearResults()
x9B()
end

function EXIT()

gg.clearResults()
t = gg.getListItems()
gg.removeListItems(t)
gg.toast("WADUH SUHU UDAH CENIP")
os.exit()
end

function x9P()
gg.toast("👻 KALEM KONTOL 🦋")
end

function reconnect()
x9B()
end

function prima()
end

if x9A == 1 then x9B() end
end
end
if x9ok == 1 then x9on() end