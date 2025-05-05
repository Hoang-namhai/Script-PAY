local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
	if n == lib then
		return startAddress, endAddress
	end
	local ranges = gg.getRangesList(lib or 'libil2cpp.so')
	for i, v in ipairs(ranges) do
		if v.state == "Xa" then
			startAddress = v.start
			endAddress = ranges[#ranges]['end']
			break
		end
	end
	return startAddress, endAddress
end

local function setHexMemory(libname, offset, hex)
	name(libname)
	local t, total = {}, 0
	for h in string.gmatch(hex, "%S%S") do
	    table.insert(t, {
	        address = startAddress + offset + total,
	        flags = gg.TYPE_BYTE,
	        value = h .. "r"
	    })
	    total = total + 1
	end
	local res = gg.setValues(t)
	if type(res) ~= 'string' then
		return true
	else
		gg.alert(res)
		return false
	end
end



















-- MENU--
-- local isHide = false
function Main()
HNHH = gg.multiChoice({
"➣ Purchase 🆓",
"➣ Unlock Pro🎋",
"[𝙴𝚇𝙸𝚃]"
}, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝚃𝙾𝚆𝙴𝚁𝙻𝙰𝙽𝙳𝚂\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 3.6.1 \n------------------------------------------------")
    if HNHH == nil then
    else
if HNHH[1] == true then Purchase() end
if HNHH[2] == true then Unlock() end
if HNHH[3] == true then EXITALL() end
end
XGCK = -1
end


function Purchase()
setHexMemory("libil2cpp.so", 0x918C1C, "20 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x918F5C, "20 00 80 D2 C0 03 5F D6")
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end


function Unlock()
setHexMemory("libil2cpp.so", 0x90F010, "20 00 80 D2 C0 03 5F D6")
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end


function EXITALL()
gg.toast('♥ᴍᴏᴅ ʙʏ ʜᴀ̉ɪ sᴄʀɪᴘᴛ♥')
gg.alert("❤️Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀")
print('☞♥Zᴀʟᴏ: 0375574755♥☜')
os.exit()
end
while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
Main()
end
end
