local gg = gg

-- ================== MENU ==================
on = '[✔]'; off = '[✖]'
H1 = off
local L = "libMyGame.so"

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
-- HACK 1: BẤT TỬ
-- ============================================
function OnOff1()
    if H1 == on then
        setHex(0x01A639EC, "E0 7B 88 12 C0 97 A9 72 00 00 27 1E C0 03 5F D6")
        gg.toast('✅Bất Tử✅')
    else
        reset(0x01A639EC)
        gg.toast('❌Bất Tử❌')
    end
end

-- ============================================
-- MAIN MENU
-- ============================================
function Main()
    local m = gg.choice({
        H1.." Bất Tử 😎",
        "[Exit]"
    }, nil, "❤Yᴏᴜᴛᴜʙᴇ :: ʜᴀ̉ɪ sᴄʀɪᴘᴛ🍀\n🎮Gᴀᴍᴇ: Dungeon Survival 2\n💭Vᴇʀꜱɪᴏɴ: 2.2.16.2 \n------------------------------------------------")
    
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
