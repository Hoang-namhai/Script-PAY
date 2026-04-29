-- ================== LOAD HÀM TỪ LINK ==================
local url = "https://raw.githubusercontent.com/Hoang-namhai/MENU-HACK/refs/heads/main/Load1sCN.lua"
local content = gg.makeRequest(url).content

if content then
    pcall(load(content))
else
    gg.alert("⚠️Vui lòng kiểm tra kết nối.")
    os.exit()
end

-- ================== MENU ==================
on = '[✔]'; off = '[✖]'
H1 = off
local L = "libil2cpp.so"

function Main()
    local m = gg.choice({
        H1.." ᴏɴᴇʜɪᴛ test💥",        
        "[𝐄𝐗𝐈𝐓]"
  }, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝙰𝚁𝙲𝙷𝙴𝚁𝙾 𝚅𝙸𝙿\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 7.9.1 \n------------------------------------------------")
    
    if m == 1 then H1=(H1==on) and off or on; OnOff1()
    elseif m == 2 then 
    gg.toast('♥ᴍᴏᴅ ʙʏ ʜᴀ̉ɪ sᴄʀɪᴘᴛ♥')
    os.exit() end
end

--➤ ==================================== 
function OnOff1()
    if H1 == on then
        local r = searchValue({
            "1179403647",
            {706675681, 0x4f6a42c}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x4f6a42c, gg.TYPE_DWORD, 310820864)
            applyEdit(r, 0x4F6A430, gg.TYPE_DWORD, 1923576640)
            applyEdit(r, 0x4F6A434, gg.TYPE_DWORD, -698416192)

            gg.toast('✅ Teast✅')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
         --   H1 = off  -- Tự động tắt nút nếu không tìm thấy
        end        
        
    else

        local r = searchValue({
            "1179403647",
            {310820864, 0x4f6a42c}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x4f6a42c, gg.TYPE_DWORD, 706675681)
            applyEdit(r, 0x4F6A430, gg.TYPE_DWORD, -1440807966)
            applyEdit(r, 0x4F6A434, gg.TYPE_DWORD, 335546990)
            
            gg.toast('❌ Teast❌')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
        --    H1 = on
        end
        end
        end


    
    
    
-- ================== VÒNG LẶP CHÍNH ==================
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
    end
    gg.sleep(100)  -- Thêm sleep để tránh tốn CPU
    gg.clearResults()
end
