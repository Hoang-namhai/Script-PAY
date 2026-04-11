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
local L = "libil2cpp.so"  -- Thêm dòng này để hàm OnOff2 hoạt động

function Main()
    local m = gg.choice({
        H1.." 𝑶𝒏𝒆𝑯𝒊𝒕 𝑮𝒐𝒅𝑴𝒐𝒅 💥",
        "[𝐄𝐗𝐈𝐓]"
    }, nil, "❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝙰𝚁𝙲𝙷𝙴𝚁𝙾 𝚅𝙸𝙿\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 7.7.0 \n--------------------------------")
    
    if m == 1 then
        H1 = (H1 == on) and off or on
        OnOff1()
    elseif m == 2 then
        gg.toast('♥ᴍᴏᴅ ʙʏ ʜᴀ̉ɪ sᴄʀɪᴘᴛ♥')
        gg.alert("❤️Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀")
        print('☞♥Zᴀʟᴏ: 0375574755♥☜')
        os.exit()
    end
end


function OnOff1()
    if H1 == on then

        local r = searchValue({
            "1179403647",
            {-132313090, 0x5c4292c}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x5c4292c, gg.TYPE_DWORD, 1384404736)
            applyEdit(r, 0x5C42930, gg.TYPE_DWORD, 1923088384)
            applyEdit(r, 0x5C42934, gg.TYPE_DWORD, -698416192)
            
            applyEdit(r, 0x5E2B4E8, gg.TYPE_DWORD, 1384120352)
            applyEdit(r, 0x5E2B4EC, gg.TYPE_DWORD, 1923088384)
            applyEdit(r, 0x5E2B4F0, gg.TYPE_DWORD, -698416192)
            
            gg.toast('✅ 𝑶𝒏𝒆𝑯𝒊𝒕 𝑮𝒐𝒅𝑴𝒐𝒅 ✅')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
         --   H1 = off  -- Tự động tắt nút nếu không tìm thấy
        end        
        
    else

        local r = searchValue({
            "1179403647",
            {1384404736, 0x5c4292c}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x5c4292c, gg.TYPE_DWORD, -132313090)
            applyEdit(r, 0x5C42930, gg.TYPE_DWORD, -1459529738)
            applyEdit(r, 0x5C42934, gg.TYPE_DWORD, -1459466252)
            
            applyEdit(r, 0x5E2B4E8, gg.TYPE_DWORD, -1447143426)
            applyEdit(r, 0x5E2B4EC, gg.TYPE_DWORD, -1459531788)
            applyEdit(r, 0x5E2B4F0, gg.TYPE_DWORD, -805217420)
            gg.toast('❌ 𝑶𝒏𝒆𝑯𝒊𝒕 𝑮𝒐𝒅𝑴𝒐𝒅 ❌')
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