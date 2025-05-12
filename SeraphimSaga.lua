

-- ====== CODE HEXPATH ====

gg.clearResults()
gg.clearList()

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
"➣ Speed Game 🎮",
"➣ Reward Resources✨",
"➣ One Hit 💥",
"➣ God Mod ❤",
"[𝙴𝚇𝙸𝚃]"
}, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝚂𝙴𝚁𝙰𝙿𝙷𝙸𝙼 𝚂𝙰𝙶𝙰: 𝙸𝙳𝙻𝙴 𝚁𝙿𝙶\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 1.8.1 \n------------------------------------------------")
    if HNHH == nil then
    else
if HNHH[1] == true then SpeedGame() end
if HNHH[2] == true then Reward() end
if HNHH[3] == true then OneHit() end
if HNHH[4] == true then GodMod() end
if HNHH[5] == true then EXITALL() end
end
XGCK = -1
end

function SpeedGame()
local HNH = gg.alert('❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝚂𝙴𝚁𝙰𝙿𝙷𝙸𝙼 𝚂𝙰𝙶𝙰\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 1.8.1\n➣ Speed Game 🎮\n------------------------------------------------','[𝙾𝙽𝚂𝙿𝙴𝙴𝙳]','[𝙾𝙵𝙵𝚂𝙿𝙴𝙴𝙳]')
if HNH == nil then return 
else
if HNH == 1 then OnSP() end
if HNH == 2 then OffSP() end
end
::ni::
end


function OnSP()
function searchValue(t,hai1,hai2)
gg.clearResults()
gg.clearList()
rt={}
gg.setRanges(hai1)
gg.setVisible(false)
gg.searchNumber(t[1], hai2)
local r = gg.getResults(9)
if #r==0 then goto HoangNamHai end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto HoangNamHai end
r=gg.getValues(tt)
if it==#t then rt=r goto HoangNamHai end
end
::HoangNamHai::
return rt
end
function searchEdit(hnh1,hnh2,hnh3)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address +hnh1
tt[ii].flags=hnh2
tt[ii].value=hnh3
end
gg.setValues(tt)
end end
r=searchValue({"4392630932057270955",{"4392630932057270955",0*4}},32,32)
if #r == 0 then else
searchEdit(-1*4,16, 2)
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
gg.clearResults()
end
end



function OffSP()
function searchValue(t,hai1,hai2)
gg.clearResults()
gg.clearList()
rt={}
gg.setRanges(hai1)
gg.setVisible(false)
gg.searchNumber(t[1], hai2)
local r = gg.getResults(9)
if #r==0 then goto HoangNamHai end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto HoangNamHai end
r=gg.getValues(tt)
if it==#t then rt=r goto HoangNamHai end
end
::HoangNamHai::
return rt
end
function searchEdit(hnh1,hnh2,hnh3)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address +hnh1
tt[ii].flags=hnh2
tt[ii].value=hnh3
end
gg.setValues(tt)
end end
r=searchValue({"4392630932057270955",{"4392630932057270955",0*4}},32,32)
if #r == 0 then else
searchEdit(-1*4,16, 1)
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
gg.clearResults()
end
end



function Reward()
function searchValue(t,hai1,hai2)
rt={}
gg.setRanges(hai1)
gg.clearResults()
gg.clearList()
gg.setVisible(false)
gg.searchNumber(t[1], hai2)
local r = gg.getResults(99999999)
if #r==0 then goto HoangNamHai end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto HoangNamHai end
r=gg.getValues(tt)
if it==#t then rt=r goto HoangNamHai end
end
::HoangNamHai::
return rt
end

function searchEdit(hnh1,hnh2,hnh3)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address +hnh1
tt[ii].flags=hnh2
tt[ii].value=hnh3
end
gg.setValues(tt)
end end

r=searchValue({"257698037800",{"4295299936",8*4}},32,32)
if #r == 0 then else
searchEdit(8*4,4, 2147483647)
gg.clearResults()
end




function searchValue(t,hai1,hai2)
rt={}
gg.setRanges(hai1)
gg.clearResults()
gg.clearList()
gg.setVisible(false)
gg.searchNumber(t[1], hai2)
local r = gg.getResults(99999999)
if #r==0 then goto HoangNamHai end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto HoangNamHai end
r=gg.getValues(tt)
if it==#t then rt=r goto HoangNamHai end
end
::HoangNamHai::
return rt
end

function searchEdit(hnh1,hnh2,hnh3)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address +hnh1
tt[ii].flags=hnh2
tt[ii].value=hnh3
end
gg.setValues(tt)
end end

r=searchValue({"257698037800",{"4294967989",8*4}},32,32)
if #r == 0 then else
searchEdit(8*4,4, 88888888)
gg.clearResults()
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end
end


function OneHit()
setHexMemory("libil2cpp.so", 0x13C83A8, "E0 03 27 1E C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13C85A8, "E0 03 27 1E C0 03 5F D6")
gg.toast('✅𝙰𝙲𝚃𝙸𝚅𝙰𝚃𝙴𝙳✅')
end


function GodMod()
setHexMemory("libil2cpp.so", 0x13C8A3C, "C0 03 5F D6")
-- setHexMemory("libil2cpp.so", 0x13C8AF8, "E0 03 27 1E C0 03 5F D6")
-- setHexMemory("libil2cpp.so", 0x13C8CF8, "E0 03 27 1E C0 03 5F D6")
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