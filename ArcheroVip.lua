
-- Load lib từ GitHub
local libUrl = "https://raw.githubusercontent.com/Hoang-namhai/MENU-HACK/refs/heads/main/KingModVN.lua"
local libCode = gg.makeRequest(libUrl).content
if libCode then
    pcall(load(libCode))
    gg.toast("❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀")
else
    gg.alert("⚠⚠Bạn Đang Ngoại Tuyến⚠⚠️\n\n⚠⚠Vui Lòng Bật Internet Để Sử Dụng⚠⚠")
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
        H4.." OneHit GodMod 💥",
        "[EXIT]"
  }, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮ɢᴀᴍᴇ: ᴀʀᴄʜᴇʀ ᴠɪᴘ\n💭ᴠᴇʀꜱɪᴏɴ: 7.7.0 \n------------------------------------------------")
    
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

function OnOff1()
    if H1 == on then
        hook(L, 0x2C0DAA4, true, "bool")
        hook(L, 0x2C0DB44, true, "bool")
        gg.toast('✅ Free Ads ✅')
    else
        unhook(L, 0x2C0DAA4); unhook(L, 0x2C0DB44)
        gg.toast('❌ Free Ads ❌')
    end
end

function OnOff2() 
    if H2 == on then
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2ACF5D8+0
iTzMe[1].value='52800000h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2ACF5D8+4
iTzMe[2].value='72A80800h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2ACF5D8+8
iTzMe[3].value='1E270000h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2ACF5D8+12
iTzMe[4].value='D65F03C0h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('✅ Speed Battle ✅')
    else
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2ACF5D8+0
iTzMe[1].value='FC1D0FE8h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2ACF5D8+4
iTzMe[2].value='A90157FEh'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2ACF5D8+8
iTzMe[3].value='A9024FF4h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2ACF5D8+12
iTzMe[4].value='9001BF33h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('❌ Speed Battle ❌')
    end
end

function OnOff3()
    if H3 == on then
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2AC8E44+0
iTzMe[1].value='1287FFE0h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2AC8E44+4
iTzMe[2].value='72A8BB40h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2AC8E44+8
iTzMe[3].value='1E270000h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2AC8E44+12
iTzMe[4].value='D65F03C0h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('✅ Buff Exp Level ✅')
    else
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2AC8E44+0
iTzMe[1].value='F81F0FFEh'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2AC8E44+4
iTzMe[2].value='F9401C00h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2AC8E44+8
iTzMe[3].value='B4000080h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2AC8E44+12
iTzMe[4].value='AA1F03E1h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('❌ Buff Exp Level ❌')
    end
end

function OnOff4() 
    if H4 == on then
        hook(L, 0x2C1CA48, 999999999, "int")
        hook(L, 0x2C1D65C, 999999999, "int")
        gg.toast('✅ OneHit GodMod ✅')
    else
        unhook(L, 0x2C1CA48); unhook(L, 0x2C1D65C)
        gg.toast('❌ OneHit GodMod ❌')
    end
end




while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
    end
    gg.clearResults()
end
