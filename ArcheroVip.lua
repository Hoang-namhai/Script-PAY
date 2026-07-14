local gg = gg

-- ================== MENU ==================
on = '[✔]'; off = '[✖]'
H1, H2, H3, H4 = off, off, off, off
local L = "libil2cpp.so"

-- ============================================
-- TÌM LIB
-- ============================================
local bases, index, status = {}, 0, 0
local ranges = gg.getRangesList(L)
if #ranges == 0 then status = 2 goto SPLIT end

for _, r in ipairs(ranges) do
    if r.state == "Xa" then
        index = index + 1
        bases[index] = r.start
        status = 1
    end
end

::SPLIT::
if status == 2 then
    local found, sizes, count = false, {}, 0
    ranges = gg.getRangesList()
    for _, r in ipairs(ranges) do
        if r.state == "Xa" and r.name:match("split_config") then found = true end
    end
    if not found then print("No split lib."); gg.setVisible(true); os.exit() end
    for _, r in ipairs(ranges) do
        if r.state == "Xa" then
            count = count + 1
            sizes[count] = r["end"] - r.start
        end
    end
    if count > 0 then
        local max = math.max(table.unpack(sizes))
        for _, r in ipairs(ranges) do
            if r.state == "Xa" and (r["end"] - r.start) == max then
                index = index + 1
                bases[index] = r.start
                status = 1
            end
        end
    end
end

if status ~= 1 then print("Lib not found."); gg.setVisible(true); os.exit() end

-- ============================================
-- BACKUP & PATCH
-- ============================================
local orig = {}

function reset(off)
    if orig[off] then
        gg.setValues(orig[off])
     --   gg.toast("[✓] Restored")
     --   gg.sleep(1000)
    else
        gg.alert("ERR - Không có backup!")
    end
end

function setHex(offset, hex)
    local base = bases[index]
    if not base then
        gg.alert("❌ Không tìm thấy base!")
        return false
    end
    
    if not orig[offset] then
        local backup, patch, total = {}, {}, 0
        for h in string.gmatch(hex, "%S%S") do
            local addr = base + offset + total
            table.insert(backup, {address = addr, flags = gg.TYPE_BYTE})
            table.insert(patch, {address = addr, flags = gg.TYPE_BYTE, value = h .. "r"})
            total = total + 1
        end
        orig[offset] = gg.getValues(backup)
        gg.setValues(patch)
    else
        local patch, total = {}, 0
        for h in string.gmatch(hex, "%S%S") do
            table.insert(patch, {address = base + offset + total, flags = gg.TYPE_BYTE, value = h .. "r"})
            total = total + 1
        end
        gg.setValues(patch)
    end
    return true
end

-- ============================================
-- HACK 1: FREE ADS
-- ============================================
function OnOff1()
    if H1 == on then
        -- BẬT FREE ADS
        setHex(0x2C24BF8, "20 00 80 D2 C0 03 5F D6")
        setHex(0x2C24C98, "20 00 80 D2 C0 03 5F D6")
        gg.toast('✅Free Ads✅')
    else
        -- TẮT FREE ADS
        reset(0x2C24BF8)
        reset(0x2C24C98)
        gg.toast('❌Free Ads❌')
    end
end

-- ============================================
-- HACK 2: SPEED BATTLE
-- ============================================
function OnOff2()
    if H2 == on then
        -- BẬT SPEED 5.0
        setHex(0x2A35C74, "00 00 80 52 00 14 A8 72 00 00 27 1E C0 03 5F D6")
        gg.toast('✅ Speed ✅')
    else
        -- TẮT SPEED
        reset(0x2A35C74)
        gg.toast('❌ Speed ❌')
    end
end

-- ============================================
-- HACK 3: BUFF EXP LEVEL
-- ============================================
function OnOff3()
    if H3 == on then
        -- BẬT BUFF EXP
        setHex(0x20CC144, "00 00 98 52 40 BB A8 72 00 00 27 1E C0 03 5F D6") --7000
        gg.toast('✅Buff Exp✅')
    else
        -- TẮT BUFF EXP
        reset(0x20CC144)
        gg.toast('❌Buff Exp❌')
    end
end

-- ============================================
-- HACK 4: ONEHIT GOD MOD
-- ============================================
function OnOff4()
    if H4 == on then
        -- BẬT ONEHIT
        setHex(0X2536A4C, "00 40 9A 52 20 69 AD 72 C0 03 5F D6")
        setHex(0x2536D20, "00 40 9A 52 20 69 AD 72 C0 03 5F D6")
        
        -- HEADSHOT 
        setHex(0x1D96998, "20 00 80 D2 C0 03 5F D6")
        gg.toast('✅Hack OK✅')
    else
        -- TẮT ONEHIT
        reset(0X2536A4C)
        reset(0x2536D20)
        reset(0x1D96998)
        gg.toast('❌Hack OFF❌')
    end
end

-- ============================================
-- MAIN MENU (Giao diện như cũ)
-- ============================================
function Main()
    local m = gg.choice({
        H1.." Free Ads 🚫",
        H2.." Speed Battle 💨", 
        H3.." Buff Exp Level 🗯️",
        H4.." OneHit God Mod 💥",
        "[EXIT]"
    }, nil, "❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮Gᴀᴍᴇ: Archero Vip\n💭Vᴇʀꜱɪᴏɴ: 8.0.1 \n------------------------------------------------")
    
    if m == 1 then 
        H1 = (H1 == on) and off or on
        OnOff1()
    elseif m == 2 then 
        H2 = (H2 == on) and off or on
        OnOff2()
    elseif m == 3 then 
        H3 = (H3 == on) and off or on
        OnOff3()
    elseif m == 4 then 
        H4 = (H4 == on) and off or on
        OnOff4()
    elseif m == 5 then 
        gg.toast('♥ᴍᴏᴅ ʙʏ ʜᴀ̉ɪ sᴄʀɪᴘᴛ♥')
        gg.alert("❤️Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀")
        print('☞♥Zᴀʟᴏ: 0375574755♥☜')
        os.exit() 
    end
end

-- ============================================
-- VÒNG LẶP CHÍNH
-- ============================================
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
    end
    gg.sleep(100)
    gg.clearResults()
end
