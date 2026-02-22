
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
        H1.." 𝑭𝒓𝒆𝒆 𝑨𝒅𝒔 🚫",
        H2.." 𝑺𝒑𝒆𝒆𝒅 𝑩𝒂𝒕𝒕𝒍𝒆 💨", 
        H3.." 𝑩𝒖𝒇𝒇 𝑬𝒙𝒑 𝑳𝒆𝒗𝒆𝒍 🗯️",
        H4.." 𝑶𝒏𝒆𝑯𝒊𝒕 𝑮𝒐𝒅𝑴𝒐𝒅 💥",
        "[𝐄𝐗𝐈𝐓]"
  }, nil,"❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮G𝙰𝙼𝙴: 𝙰𝚁𝙲𝙷𝙴𝚁𝙾 𝚅𝙸𝙿\n💭V𝙴𝚁𝚂𝙸𝙾𝙽: 7.7.0 \n------------------------------------------------")
    
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
        hook(L, 0x2C0DC50, true, "bool")
        hook(L, 0x2C0DCF0, true, "bool")
        gg.toast('✅ 𝑭𝒓𝒆𝒆 𝑨𝒅𝒔 ✅')
    else
        unhook(L, 0x2C0DC50); unhook(L, 0x2C0DCF0)
        gg.toast('❌ 𝑭𝒓𝒆𝒆 𝑨𝒅𝒔 ❌')
    end
end

function OnOff2() 
    if H2 == on then
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2ACF784+0
iTzMe[1].value='52800000h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2ACF784+4
iTzMe[2].value='72A80800h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2ACF784+8
iTzMe[3].value='1E270000h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2ACF784+12
iTzMe[4].value='D65F03C0h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('✅ 𝑺𝒑𝒆𝒆𝒅 𝑩𝒂𝒕𝒕𝒍𝒆 ✅')
    else
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2ACF784+0
iTzMe[1].value='FC1D0FE8h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2ACF784+4
iTzMe[2].value='A90157FEh'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2ACF784+8
iTzMe[3].value='A9024FF4h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2ACF784+12
iTzMe[4].value='9001BF33h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('❌ 𝑺𝒑𝒆𝒆𝒅 𝑩𝒂𝒕𝒕𝒍𝒆 ❌')
    end
end

function OnOff3()
    if H3 == on then
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2AC8FF0+0
iTzMe[1].value='1287FFE0h'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2AC8FF0+4
iTzMe[2].value='72A8BB40h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2AC8FF0+8
iTzMe[3].value='1E270000h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2AC8FF0+12
iTzMe[4].value='D65F03C0h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('✅ 𝑩𝒖𝒇𝒇 𝑬𝒙𝒑 𝑳𝒆𝒗𝒆𝒍 ✅')
    else
iTzMeCoder=gg.getRangesList('libil2cpp.so')[3].start
iTzMe=nil  iTzMe={}
iTzMe[1]={}
iTzMe[1].address=iTzMeCoder+0x2AC8FF0+0
iTzMe[1].value='F81F0FFEh'
iTzMe[1].flags=4
iTzMe[2]={}
iTzMe[2].address=iTzMeCoder+0x2AC8FF0+4
iTzMe[2].value='F9401C00h'
iTzMe[2].flags=4
iTzMe[3]={}
iTzMe[3].address=iTzMeCoder+0x2AC8FF0+8
iTzMe[3].value='B4000080h'
iTzMe[3].flags=4
iTzMe[4]={}
iTzMe[4].address=iTzMeCoder+0x2AC8FF0+12
iTzMe[4].value='AA1F03E1h'
iTzMe[4].flags=4
gg.setValues(iTzMe)
        gg.toast('❌ 𝑩𝒖𝒇𝒇 𝑬𝒙𝒑 𝑳𝒆𝒗𝒆𝒍 ❌')
    end
end

function OnOff4() 
    if H4 == on then
        hook(L, 0x2C1CBF4, 999999999, "int")
        hook(L, 0x2C1D808, 999999999, "int")
        gg.toast('✅ 𝑶𝒏𝒆𝑯𝒊𝒕 𝑮𝒐𝒅𝑴𝒐𝒅 ✅')
    else
        unhook(L, 0x2C1CBF4); unhook(L, 0x2C1D808)
        gg.toast('❌ 𝑶𝒏𝒆𝑯𝒊𝒕 𝑮𝒐𝒅𝑴𝒐𝒅 ❌')
    end
end




while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
    end
    gg.clearResults()
end