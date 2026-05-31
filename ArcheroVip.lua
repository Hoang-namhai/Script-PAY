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
H1,H2,H3,H4 = off,off,off,off
local L = "libil2cpp.so"

function Main()
    local m = gg.choice({
        H1.." Free Ads 🚫",
        H2.." Speed Battle 💨", 
        H3.." Buff Exp Level 🗯️",
        H4.." OneHit God Mod 💥",
        "[EXIT]"
  }, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮Gᴀᴍᴇ: Archero Vip\n💭Vᴇʀꜱɪᴏɴ: 7.10.1 \n------------------------------------------------")
    
    if m == 1 then H1=(H1==on) and off or on; OnOff1()
    elseif m == 2 then H2=(H2==on) and off or on; OnOff2()
    elseif m == 3 then H3=(H3==on) and off or on; OnOff3()
    elseif m == 4 then H4=(H4==on) and off or on; OnOff4()
    elseif m == 5 then 
    gg.toast('♥ᴍᴏᴅ ʙʏ ʜᴀ̉ɪ sᴄʀɪᴘᴛ♥')
    gg.alert("❤️Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀")
    print('☞♥Zᴀʟᴏ: 0375574755♥☜')
    os.exit() end
end

--➤ ==================================== 
function OnOff1()
    if H1 == on then

        local r = searchValue({
            "1278035199",
            {-1447143426, 0x2CF3D9C}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x2CF3D9C, gg.TYPE_DWORD, -763363296)
            applyEdit(r, 0x2CF3DA0, gg.TYPE_DWORD, -698416192)
            
            applyEdit(r, 0x2CF3E3C, gg.TYPE_DWORD, -763363296)
            applyEdit(r, 0x52CF3E40, gg.TYPE_DWORD, -698416192)
            
            gg.toast('✅Free Ads✅')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
         --   H1 = off  -- Tự động tắt nút nếu không tìm thấy
        end        
        
    else

        local r = searchValue({
            "1278035199",
            {-763363296, 0x2CF3D9C}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x2CF3D9C, gg.TYPE_DWORD, -1447143426)
            applyEdit(r, 0x2CF3DA0, gg.TYPE_DWORD, -1459531788)
            
            applyEdit(r, 0x2CF3E3C, gg.TYPE_DWORD, -132247554)
            applyEdit(r, 0x2CF3E40, gg.TYPE_DWORD, -1459531788)
            
            gg.toast('❌Free Ads❌')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
        --    H1 = on
        end
        end
        end

--➤ ==================================== 
function OnOff2() 
    if H2 == on then
        local r = searchValue({
            "1278035199",
            {-65204248, 0x2A9FB04}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x2A9FB04, gg.TYPE_DWORD, 1384120320)
            applyEdit(r, 0x2A9FB08, gg.TYPE_DWORD, 1923617792)
            applyEdit(r, 0x2A9FB0C, gg.TYPE_DWORD, 505872384)
            applyEdit(r, 0x2A9FB10, gg.TYPE_DWORD, -698416192)
            
            gg.toast('✅ Speed ✅')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
         --   H1 = off  -- Tự động tắt nút nếu không tìm thấy
        end        
        
    else

        local r = searchValue({
            "1278035199",
            {1384120320, 0x2A9FB04}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x2A9FB04, gg.TYPE_DWORD, -65204248)
            applyEdit(r, 0x2A9FB08, gg.TYPE_DWORD, -1459529730)
            applyEdit(r, 0x2A9FB0C, gg.TYPE_DWORD, -1459466252)
            applyEdit(r, 0x2A9FB10, gg.TYPE_DWORD, -1342060941)

            gg.toast('❌ Speed ❌')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
        --    H1 = on
        end
        end
        end

--➤ ==================================== 
function OnOff3()
    if H3 == on then
        local r = searchValue({
            "1278035199",
            {-65204248, 0x20EE694}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x20EE694, gg.TYPE_DWORD, 310902752)
            applyEdit(r, 0x20EE698, gg.TYPE_DWORD, 1923660608)
            applyEdit(r, 0x20EE69C, gg.TYPE_DWORD, 505872384)
            applyEdit(r, 0x20EE6A0, gg.TYPE_DWORD, -698416192)

            gg.toast('✅Buff Exp✅')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
         --   H1 = off  -- Tự động tắt nút nếu không tìm thấy
        end        
        
    else

        local r = searchValue({
            "1278035199",
            {310902752, 0x20EE694}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x20EE694, gg.TYPE_DWORD, -65204248)
            applyEdit(r, 0x20EE698, gg.TYPE_DWORD, -117438466)
            applyEdit(r, 0x20EE69C, gg.TYPE_DWORD, -1459529738)
            applyEdit(r, 0x20EE6A0, gg.TYPE_DWORD, -1459466252)
            
            gg.toast('❌Buff Exp❌')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
        --    H1 = on
        end
        end
        end

--➤ ==================================== 
function OnOff4() 
    if H4 == on then
                local r = searchValue({
            "1278035199",
            {-788446209, 0x25E02AC}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x25E02AC, gg.TYPE_DWORD, 311263200)
            applyEdit(r, 0x25E02B0, gg.TYPE_DWORD, 1924064928)
            applyEdit(r, 0x25E02B4, gg.TYPE_DWORD, -698416192)
            
            applyEdit(r, 0x25E0580, gg.TYPE_DWORD, 311263200)
            applyEdit(r, 0x25E0584, gg.TYPE_DWORD, 1924064928)
            applyEdit(r, 0x25E0588, gg.TYPE_DWORD, -698416192)
            
            gg.toast('✅Hack On✅')
            gg.clearResults()
            gg.clearList()
        else
            gg.alert("❌ Không tìm thấy địa chỉ phù hợp!")
         --   H1 = off  -- Tự động tắt nút nếu không tìm thấy
        end        
        
    else

        local r = searchValue({
            "1278035199",
            {311263200, 0x25E02AC}
        }, gg.REGION_C_DATA | gg.REGION_CODE_APP, gg.TYPE_DWORD)

        if #r > 0 then
            applyEdit(r, 0x25E02AC, gg.TYPE_DWORD, -788446209)
            applyEdit(r, 0x25E02B0, gg.TYPE_DWORD, -1459525634)
            applyEdit(r, 0x25E02B4, gg.TYPE_DWORD, -1459462152)
            
            applyEdit(r, 0x25E0580, gg.TYPE_DWORD, -788446209)
            applyEdit(r, 0x25E0584, gg.TYPE_DWORD, -1459525634)
            applyEdit(r, 0x25E0588, gg.TYPE_DWORD, -1459462152)
            gg.toast('❌Hack Off❌')
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
