local targetInfo = gg.getTargetInfo()
local requiredVersion = "1.78.1"
if not targetInfo or not targetInfo.versionName then
  os.exit()
end
if targetInfo.versionName ~= requiredVersion then
  os.exit(print("♥𝑯𝒂̉𝒊 𝑺𝒄𝒓𝒊𝒑𝒕☠️\n \n➤ᴘʜɪᴇ̂ɴ ʙᴀ̉ɴ ꜱᴄʀɪᴘᴛ ᴆᴀ̃ ᴄᴜ̃...\n➤ᴋʜᴏ̂ɴɢ ᴛʜᴇ̂̉ ᴄʜᴀ̣ʏ ᴛʀᴇ̂ɴ ᴘʜɪᴇ̂ɴ ʙᴀ̉ɴ ᴍᴏ̛́ɪ ᴄᴜ̉ᴀ ɢᴀᴍᴇ...\n➤ʜᴀ̃ʏ ᴄᴀ̣̂ᴘ ɴʜᴀ̣̂ᴛ ɴʜᴀ̣̂ᴛ ꜱᴄʀɪᴘᴛ ʙᴀ̉ɴ ᴜᴘᴅᴀᴛᴇ ᴍᴏ̛́ɪ ɴʜᴀ̂́ᴛ ᴆᴇ̂̉ ꜱᴜ̛̉ ᴅᴜ̣ɴɢ...\n\n • Liên Hệ Zalo: 0375574755📱 •"))
end  






local keyFile = "/storage/emulated/0/.my_script_key.txt" --
local Passwords = {
  "0609",
  "ThanhDo123"
  
  
  
  
  

  

  
  
  
  
  
}
function isValidKey(inputKey)
  for _, v in ipairs(Passwords) do
    if inputKey == v then
      return true
    end
  end
  return false
end
function readSavedKey()
  local file = io.open(keyFile, "r")
  if file then
    local savedKey = file:read("*a")
    file:close()
    return savedKey
  end
  return nil
end
function saveKey(k)
  local file = io.open(keyFile, "w")
  if file then
    file:write(k)
    file:close()
  end
end
local savedKey = readSavedKey()
if savedKey and isValidKey(savedKey) then
gg.alert("🎉Lᴏɢɪɴ Tʜᴀ̀ɴʜ Cᴏ̂ɴɢ🎉") 
  
else
  local input = gg.prompt({"🔑 Lᴏᴀᴅ Kᴇʏ:"}, nil, {"text"})
  if not input or not isValidKey(input[1]) then
    gg.alert("❌ Kᴇʏ Sᴀɪ. Hᴏᴀ̣̆ᴄ Đᴀ̃ Qᴜᴀ́ Tʜɪᴇ̂́ᴛ Bɪ̣ Sᴜ̛̉ Dᴜ̣ɴɢ!")
    gg.copyText("0375574755")
    gg.alert("📲 Đã copy SĐT Admin!\nVào Zalo → Dán → Tìm kiếm để liên hệ Admin cấp key mới.")
    os.exit()
  else
    saveKey(input[1])
    gg.alert("🎉Kᴇʏ ᴆᴜ́ɴɢ. Lᴏɢɪɴ Tʜᴀ̀ɴʜ Cᴏ̂ɴɢ🎉") end
end





gg.sleep(100) 
gg.getTargetInfo()
gg.setVisible(false)
KingModVN = os.date ("\
۞•──────✧❅✦❅✧──────•۞\
📆Dᴀᴛᴇ📆 : %d/%m/%Y\
\
🕛Tɪᴍᴇ🕛 : %H:%M:%S\
\
💢Dᴠɪᴄᴇ Oɴʟɪɴᴇ💢 : 𝟣 ᴛʜɪᴇ̂́ᴛ ʙɪ̣\
\
⏳Lᴀꜱᴛ Uᴘᴅᴀᴛᴇ⏳ : 24/07/2025\
\
🔥Mᴀᴅᴇ Bʏ Hᴏᴀ̀ɴɢ Nᴀᴍ Hᴀ̉ɪ🔥\
۞•──────✧❅✦❅✧──────•۞")
gg.alert(KingModVN)
gg.setVisible(true)

gg.sleep(50)
gg.sleep(50)


HDR = "❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝚁𝙰𝙸𝙳𝚃𝙷𝙴𝙳𝚄𝙽𝙶𝙴𝙾𝙽\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 1.78.1 \n-------------------------------------------"







function Menu()
local menu=gg.choice({
"༒Activated All༒",
"༒List Hack༒",
"[Exit]",
},nil,HDR)
if menu==nil then else
if menu==1 then F1() end
if menu==2 then F2() end
if menu==3 then os.exit() end
--❏━━━━━━━━━━━━━━❒
end
SMZ=-1
end
--❏━━━━━━━━━━━━━━❒
--gg.TYPE_DWORD = 4
--gg.TYPE_FLOAT = 16
--gg.TYPE_DOUBLE = 64
--gg.TYPE_BYTE = 1
--gg.TYPE_WORD = 2
--gg.TYPE_QWORD = 32
--❏━━━━━━━━━━━━━━❒
function F1()
  clear()
  X = "MonDB"
  T = 4 -- gg.TYPE_DWORD
  -- Gán O là 0 để tránh lỗi khi gọi class
  O = 0 -- giá trị tạm để tránh lỗi (chưa dùng thật)
  class()
  check()
  if E == 0 then error() return end
  -- Danh sách offset và giá trị
  local offsets = {
    [0x28] = 1,
    [0x2C] = 1,
    [0x48] = 1175117824,
    [0x4C] = 0
  }
  -- Lấy địa chỉ gốc sau khi load class
  local base = gg.getResults(gg.getResultsCount())
  local edits = {}

  for i, v in ipairs(base) do
    for off, val in pairs(offsets) do
      table.insert(edits, {
        address = v.address + off,
        flags = T,
        value = val,
        freeze = false,
        freezeType = gg.FREEZE_NORMAL
      })
    end
  end

  
  clear()
  X = "HeroSkillDB"
  T = 16 -- gg.TYPE_DWORD
  -- Gán O là 0 để tránh lỗi khi gọi class
  O = 0 -- giá trị tạm để tránh lỗi (chưa dùng thật)
  class()
  check()
  if E == 0 then error() return end
  -- Danh sách offset và giá trị
  local offsets = {
    [0x70] = 0,
  }
    -- Lấy địa chỉ gốc sau khi load class
  local base = gg.getResults(gg.getResultsCount())
  local edits = {}

  for i, v in ipairs(base) do
    for off, val in pairs(offsets) do
      table.insert(edits, {
        address = v.address + off,
        flags = T,
        value = val,
        freeze = false,
        freezeType = gg.FREEZE_NORMAL
      })
    end
  end



  gg.setValues(edits)
  gg.alert("✅Activated All✅")
  clear()
end






function F2()
gg.alert("༒List Hack:༒\n1. One Hit💥\n2. God Mod💓\n3. Dumb Enemy🌊\n4. No CoolDown💢\n\nCần Thêm Chức Năng Gì Thì Liên Hệ Zalo Cho Mình")
end














--❏━━━━━━━━━━━━━━❒
function clear()
gg.getResults(gg.getResultsCount())
gg.clearResults()
end
function get()
gg.getResults(gg.getResultsCount())
end 
function search()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.searchNumber(X,T) 
end 
function refine()
gg.refineNumber(X,T) 
end  
function refinenot()
gg.refineNumber(X,T,false,gg.SIGN_NOT_EQUAL) 
end 
function edit()
gg.getResults(gg.getResultsCount())
gg.editAll(X,T) 
end 
function check()
E=nil E=gg.getResultsCount()
end 
function offset()
O=tonumber(O) addoff=nil 
addoff=gg.getResults(gg.getResultsCount())
for i, v in ipairs(addoff) do
addoff[i].address=addoff[i].address+O
addoff[i].flags=T
end
gg.loadResults(addoff) 
end 
function error()
gg.toast("🚫")
end
--❏━━━━━━━━━━━━━━❒
function class()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) 
gg.searchNumber(":"..X,1)
if gg.getResultsCount()==0 then E=0 return end 
ItzMeu=nil ItzMeu=gg.getResults(1)
gg.getResults(gg.getResultsCount())
gg.refineNumber(tonumber(ItzMeu[1].value),1)
ItzMeu=nil ItzMeu=gg.getResults(gg.getResultsCount())
gg.clearResults()
for i, v in ipairs(ItzMeu) do ItzMeu[i].address=ItzMeu[i].address-1 ItzMeu[i].flags=1 end
ItzMeu=gg.getValues(ItzMeu) ItzMea={} ItzMeaa=1 
for i, v in pairs(ItzMeu) do
if ItzMeu[i].value==0 then
ItzMea[ItzMeaa]={} ItzMea[ItzMeaa].address=ItzMeu[i].address ItzMea[ItzMeaa].flags=1 ItzMeaa=ItzMeaa+1 end end   
if #(ItzMea)==0 then gg.clearResults() E=0 return end 
u=nil
for i, v in ipairs(ItzMea) do ItzMea[i].address=ItzMea[i].address+#(X)+1 ItzMea[i].flags=1 end  
ItzMea=gg.getValues(ItzMea) ItzMes=nil ItzMes={} ItzMebb=1
for i, v in ipairs(ItzMea) do
if ItzMea[i].value==0 then ItzMes[ItzMebb]={} ItzMes[ItzMebb].address=ItzMea[i].address ItzMes[ItzMebb].flags=1 ItzMebb=ItzMebb+1 end end
if #(ItzMes)==0 then gg.clearResults() E=0 return end 
ItzMea=nil
for i, v in ipairs(ItzMes) do ItzMes[i].address=ItzMes[i].address-#(X) ItzMes[i].flags=1 end
gg.loadResults(ItzMes) 
ItzMerange=nil ItzMerange=gg.getResults(gg.getResultsCount())
ItzMerca=nil ItzMerca=0 ItzMero=nil ItzMero=0 ItzMera=nil 
for i, v in ipairs(ItzMerange) do
ItzMera=gg.getValuesRange(ItzMerange[i])
if ItzMera.address=="Ca" then ItzMerca=1 end
if ItzMera.address=="O" then ItzMero=1 end
ItzMera=nil end 
if ItzMerca==1 and ItzMero==0 then gg.setRanges(gg.REGION_C_ALLOC) end
if ItzMerca==0 and ItzMero==1 then gg.setRanges(gg.REGION_OTHER) end 
ItzMerca=nil ItzMero=nil ItzMera=nil 
gg.searchPointer(0)
if gg.getResultsCount()==0 then E=0 return end   
ItzMeu=gg.getResults(gg.getResultsCount())
gg.clearResults() 
if gg.getTargetInfo().x64 then ItzMeo1=48 ItzMeo2=56 ItzMevt=32 else ItzMeo1=24 ItzMeo2=28 ItzMevt=4 end
ERROR=0 
::TRYAGAIN:: 
ItzMey=nil ItzMey={} ItzMez=nil ItzMez={} 
for i, v in ipairs(ItzMeu) do
ItzMey[i]={} ItzMey[i].address=ItzMeu[i].address+ItzMeo1 ItzMey[i].flags=ItzMevt
ItzMez[i]={} ItzMez[i].address=ItzMeu[i].address+ItzMeo2 ItzMez[i].flags=ItzMevt end 
ItzMey=gg.getValues(ItzMey) ItzMez=gg.getValues(ItzMez) ItzMep=nil ItzMep={} ItzMexx=1
for i, v in ipairs(ItzMey) do
if ItzMey[i].value==ItzMez[i].value and #(tostring(ItzMey[i].value))>=8 then
ItzMep[ItzMexx]=ItzMey[i].value
ItzMexx=ItzMexx+1 end end
ItzMexx=nil ItzMey=nil ItzMez=nil if #(ItzMep)==0 and ERROR==0 then 
if gg.getTargetInfo().x64 then ItzMeo1=32 ItzMeo2=40 else ItzMeo1=16 ItzMeo2=20 end 
ERROR=2 
goto TRYAGAIN end    
if #(ItzMep)==0 and ERROR==2 then E=0 return end
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.clearResults() ItzMexxx=1
for i, v in ipairs(ItzMep) do
gg.toast("[🔎]") 
gg.searchNumber(tonumber(ItzMep[i]),ItzMevt)
if gg.getResultsCount()~=0 then
ItzMexx=nil ItzMexx=gg.getResults(gg.getResultsCount()) gg.clearResults()
for ItzMeq=1,#(ItzMexx) do ItzMexx[ItzMeq].name="ITzMe" end
gg.addListItems(ItzMexx) ItzMexxx=ItzMexxx+1
end gg.clearResults() end 
ItzMeu=nil ItzMep=nil ItzMexx=nil ItzMeq=nil 
if ItzMexxx==1 then gg.clearResults() E=0 return end
ItzMexxx=nil ItzMeload={} ItzMeremove={} ItzMexx=1
ItzMeu=gg.getListItems()
for i, v in ipairs(ItzMeu) do
if ItzMeu[i].name=="ITzMe" then 
ItzMeload[ItzMexx]={} ItzMeload[ItzMexx].address=ItzMeu[i].address+O ItzMeload[ItzMexx].flags=T
ItzMeremove[ItzMexx]={} ItzMeremove[ItzMexx]=ItzMeu[i] ItzMexx=ItzMexx+1 end end 
ItzMeload=gg.getValues(ItzMeload) gg.loadResults(ItzMeload) gg.removeListItems(ItzMeremove) end

--❏━━━━━━━━━━━━━━❒
while true do
  if gg.isVisible(true)then
    gg.setVisible(false)SMZ=1
  end
  if SMZ==1 then Menu()end
end
--❏━━━━━━━━━━━━━━❒


