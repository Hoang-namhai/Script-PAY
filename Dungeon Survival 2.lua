local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
	if n == lib then
		return startAddress, endAddress
	end
	local ranges = gg.getRangesList(lib or 'libMyGame.so')
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
HNHH = gg.choice({
"➣ No CoolDown 💨",
"➣ Auto Win 🎊",
"➣ One Hit 💥",
"[𝙴𝚇𝙸𝚃]"
}, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝙳𝚄𝙽𝙶𝙴𝙾𝙽 𝚂𝚄𝚁𝚅𝙸𝚅𝙰𝙻 𝟸\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 2.2.12.1 \n------------------------------------------------")
if HNHH==1 then F1() end
if HNHH==2 then F2() end
if HNHH==3 then F3() end
if HNHH==4 then EXITALL() end
XGCK = -1
end

function F1()
setHexMemory("libMyGame.so", 0x015da990, "00 00 80 D2 C0 03 5F D6")
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end


function F2()
local HNH = gg.alert('❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝙳𝚄𝙽𝙶𝙴𝙾𝙽 𝚂𝚄𝚁𝚅𝙸𝚅𝙰𝙻 𝟸\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 2.2.12.1\n➣ Auto Win 🎊\nLưu ý:\nChức Năng Này Tới Lượt Mình Đánh Rồi Mới Bật Nhé\nWin Xong Hãy Tắt Chức Năng Này Đi Nha\nChức Năng Này Tính Win Nhưng Sẽ K Nhận Được EXP...\n------------------------------------------------','[𝙾𝙽 𝚆𝙸𝙽]','[𝙾𝙵𝙵 𝚆𝙸𝙽]')
if HNH == nil then return 
else
if HNH == 1 then OnWin() end
if HNH == 2 then OffWin() end
end
::ni::
end


function OnWin()
setHexMemory("libMyGame.so", 0x01556b2c, "20 00 80 D2 C0 03 5F D6")
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end



function OffWin()
setHexMemory("libMyGame.so", 0x01556b2c, "00 00 80 D2 C0 03 5F D6")
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end

--------------------




function F3()
local HNH = gg.alert('❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝙳𝚄𝙽𝙶𝙴𝙾𝙽 𝚂𝚄𝚁𝚅𝙸𝚅𝙰𝙻 𝟸\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 2.2.12.1\n➣ One Hit 💥\n------------------------------------------------','[✅]','[❌]')
if HNH == nil then return 
else
if HNH == 1 then A1() end
if HNH == 2 then A2() end
end
::ni::
end

function A1()
iTzMeCoder=gg.getRangesList('libMyGame.so')[1].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x0158dc04+0
iTzMe[1].value='52800020h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x0158dc04+4
iTzMe[2].value='72A00000h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x0158dc04+8
iTzMe[3].value='D65F03C0h'
iTzMe[3].flags=4
gg.setValues(iTzMe)
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end



function A2()
iTzMeCoder=gg.getRangesList('libMyGame.so')[1].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x0158dc04+0
iTzMe[1].value='A9B77BFDh'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x0158dc04+4
iTzMe[2].value='910003FDh'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x0158dc04+8
iTzMe[3].value='A9025BF5h'
iTzMe[3].flags=4
gg.setValues(iTzMe)
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
