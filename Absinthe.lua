--[[
    ABSINTHE BY OLEXON (https://aimware.net/forum/user/346412)
]]--

local lua_ver = "1.1"
local tab = gui.Tab(gui.Reference("RAGEBOT"), "ABSINTHE_TAB", "ABSINTHE V" .. lua_ver)
local semi_group = gui.Groupbox(tab, "SEMI-RAGE", 15, 15, 200, 500)
local aa_group = gui.Groupbox(tab, "ANTI-AIM", 230, 15, 200, 500)
local misc_group = gui.Groupbox(tab, "MISC", 445, 15, 180, 500)

local screen_x, screen_y = draw.GetScreenSize()

local weapon_categories = { --for awall toggle
    [1] = "shared",
    [2] = "zeus",
    [3] = "pistol",
    [4] = "hpistol",
    [5] = "smg",
    [6] = "rifle",
    [7] = "shotgun",
    [8] = "scout",
    [9] = "asniper",
    [10] = "sniper",
    [11] = "lmg",
}

-- SWITCHES ETC ETC --

-- SEMI --
local dynamicfov_sw = gui.Checkbox(semi_group, "ABSINTHE_DYNAMICFOV", "DYNAMIC FOV", false); dynamicfov_sw:SetDescription("High FOV can get your ass banned!")
local dynamicfov_min = gui.Slider(semi_group, "ABSINTHE_DYNAMICFOVMIN", "DYNAMIC FOV MIN", 1, 1, 180)
local dynamicfov_max = gui.Slider(semi_group, "ABSINTHE_DYNAMICFOVMAX", "DYNAMIC FOV MAX", 1, 1, 180)

local awol_sw = gui.Checkbox(semi_group, "ABSINTHE_AUTOWALL", "AUTOWALL TOGGLE", false)

local fl_randomizer_sw = gui.Checkbox(semi_group, "ABSINTHE_FL_RANDOMIZER", "FAKELAG RANDOMIZER", false)
local fl_randomizer_min = gui.Slider(semi_group, "ABSINTHE_FL_RANDOMIZER_MIN", "FAKELAG MIN", 3, 3, 8)
local fl_randomizer_max = gui.Slider(semi_group, "ABSINTHE_FL_RANDOMIZER_MAX", "FAKELAG MAX", 3, 3, 8)

-- AA --
local fs_sw = gui.Checkbox(aa_group, "ABSINTHE_FREESTANDING", "FREESTANDING", false); fs_sw:SetDescription("Unsafe")

local desync_left = gui.Slider(aa_group, "ABSINTHE_DESYNC_LEFT", "DESYNC [LEFT]", 0, 0, 58, 2)
local desync_right = gui.Slider(aa_group, "ABSINTHE_DESYNC_right", "DESYNC [RIGHT]", 0, 0, 58, 2)
local roll_slider = gui.Slider(aa_group, "ABSINTHE_ROLL", "ROLL", 0, 0, 90, 1); roll_slider:SetDescription("VERY UNSAFE ESPECIALLY ABOVE 45°")

local inverter_kb = gui.Keybox(aa_group, "ABSINTHE_INVERTER_KEY", "INVERTER", 0)

gui.Text(aa_group, " ------- SLOWWALKING ------ ")

local slowwalking_desync_mods = gui.Combobox(aa_group, "ABSINTHE_SLOWWALKING_DESYNC_MODS", "DESYNC MODIFICATORS", "STATIC", "JITTER", "JITTER SIDE", "3-WAY JITTER")

gui.Text(aa_group, " --------- STANDING --------- ")

local standing_desync_mods = gui.Combobox(aa_group, "ABSINTHE_STANDING_DESYNC_MODS", "DESYNC MODIFICATORS", "STATIC", "JITTER", "JITTER SIDE", "3-WAY JITTER")

gui.Text(aa_group, " ---------- MOVING ---------- ")

local moving_desync_mods = gui.Combobox(aa_group, "ABSINTHE_MOVING_DESYNC_MODS", "DESYNC MODIFICATORS", "STATIC", "JITTER", "JITTER SIDE", "3-WAY JITTER")


-- MISC/VIS --
local watermark_sw = gui.Checkbox(misc_group, "ABSINTHE_WATERMARK", "WATERMARK", true)
local watermark_col = gui.ColorPicker(watermark_sw, "ABSINTHE_WATERMARK_COLOR", "", 75, 230, 145, 200)

local aa_arrows_sw = gui.Checkbox(misc_group, "ABSINTHE_AAARROWS", "AA ARROWS", false)
local aa_arrows_col = gui.ColorPicker(aa_arrows_sw, "ABSINTHE_AAARROWS_COLOR", "", 75, 230, 145, 200)

local undercross_indicators_sw = gui.Checkbox(misc_group, "ABSINTHE_UNDERCROSS_INDICATORS", "INDICATORS", false)
local undercross_indicators_color = gui.ColorPicker(undercross_indicators_sw, "ABSINTHE_UNDERCROSS_COLOR", "", 75, 230, 145, 200)

local killsay_sw = gui.Checkbox(misc_group, "ABSINTHE_KILLSAY", "KILLSAY", false)
local viewmodel_sw = gui.Checkbox(misc_group, "ABSINTHE_OVERRIDE_VIEWMODEL", "OVERRIDE VIEWMODEL", false)

local viewmodel_x_slider = gui.Slider(misc_group, "ABSINTHE_OVERRIDE_VIEWMODEL_X", "VIEWMODEL X", 0, -20, 20, 0.1)
local viewmodel_y_slider = gui.Slider(misc_group, "ABSINTHE_OVERRIDE_VIEWMODEL_Y", "VIEWMODEL Y", 0, -20, 20, 0.1)
local viewmodel_z_slider = gui.Slider(misc_group, "ABSINTHE_OVERRIDE_VIEWMODEL_Z", "VIEWMODEL Z", 0, -20, 20, 0.1)

local aspect_sw = gui.Checkbox(misc_group, "ABSINTHE_ASPECTRATIO", "ASPECT RATIO", false)
local aspect_slider = gui.Slider(misc_group, "ABSINTHE_ASPECTRATIO_VALUE", "ASPECT RATIO VALUE", 0, 0, 10, 0.1)

local xy_reset = gui.Button(misc_group, "X/Y RESET", function() --isabel v2
    screen_x, screen_y = draw.GetScreenSize()
end); xy_reset:SetWidth(148)

-- VISUAL STUFF --

--[[local function sineout(time, start, add, dur)
    return add * math.sin(time/dur * (math.pi/2)) + start
end
]]
local font_main = draw.CreateFont("Verdana", 13, 25)
local font_watermark = draw.CreateFont("Verdana", 13, 1200)
local font_undecross = draw.CreateFont("Verdana", 16, 800)
local font_undecross_items = draw.CreateFont("Verdana", 12, 800)

local function watermark()
    local wm_text = "Absinthe | Ver: " .. lua_ver .. " | User: " .. cheat.GetUserName()
    local r, g, b = watermark_col:GetValue()

    if watermark_sw:GetValue() then
        draw.Color(30, 30, 30, 180)
        draw.FilledRect((screen_x - 12) - draw.GetTextSize(wm_text), 5, screen_x - 4, 29)

        draw.Color(r, g, b, 255)
        draw.ShadowRect((screen_x - 12) - draw.GetTextSize(wm_text), 29, screen_x - 4, 26, -4)

        draw.SetFont(font_watermark); draw.Color(210, 210, 210, 255)
        draw.TextShadow((screen_x - 7) - draw.GetTextSize(wm_text), 12, wm_text)
    end
end

local function viewmodel_override()
    if viewmodel_sw:GetValue() then
        if client.GetConVar("viewmodel_offset_x") ~= viewmodel_x_slider:GetValue() then
            client.SetConVar("viewmodel_offset_x", viewmodel_x_slider:GetValue(), true)
        end

        if client.GetConVar("viewmodel_offset_y") ~= viewmodel_y_slider:GetValue() then
            client.SetConVar("viewmodel_offset_y", viewmodel_y_slider:GetValue(), true)
        end

        if client.GetConVar("viewmodel_offset_z") ~= viewmodel_z_slider:GetValue() then
            client.SetConVar("viewmodel_offset_z", viewmodel_z_slider:GetValue(), true)
        end
    end
end

local function aspect_ratio()
    if aspect_sw:GetValue() then
        if client.GetConVar("r_aspectratio") ~= aspect_slider:GetValue() then
            client.SetConVar("r_aspectratio", aspect_slider:GetValue(), true)
        end
    end
end

local killsay_phrases = {
    [1] = "Visit www.EZfrags.co.uk for the finest public & private CS:GO cheats",
    [2] = "Stop being a noob! Get good with www.EZfrags.co.uk",
    [3] = "I'm not using www.EZfrags.co.uk, you're just bad",
    [4] = "If I was cheating, I'd use www.EZfrags.co.uk",
    [5] = "Think you could do better? Not without www.EZfrags.co.uk",
    [6] = "You just got pwned by EZfrags, the #1 CS:GO cheat",
}

local function killsay(e)
    if killsay_sw:GetValue() then
        if e:GetName() == "player_death" then
            local localplayer = client.GetLocalPlayerIndex();
            local victim = client.GetPlayerIndexByUserID(e:GetInt("userid"));
            local attacker = client.GetPlayerIndexByUserID(e:GetInt("attacker"));

            if (attacker == localplayer and victim ~= localplayer) then
                client.ChatSay(killsay_phrases[math.random(1, #killsay_phrases)]);
            end
        end
    end
end

local function aa_arrows()
    if aa_arrows_sw:GetValue() then
        if not entities.GetLocalPlayer() or not entities.GetLocalPlayer():IsAlive() then return end

        if not gui.GetValue( "rbot.master" ) then return end
        local r, g, b, a = aa_arrows_col:GetValue()
        
        if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
            draw.Color(r, g, b, a)
            draw.Triangle(screen_x / 2 + 50, screen_y / 2 - 4 , screen_x / 2 + 69, screen_y / 2, screen_x / 2 + 50, screen_y / 2 + 4)
        elseif gui.GetValue("rbot.antiaim.base.rotation") > 0 then
            draw.Color(r, g, b, a)
            draw.Triangle(screen_x / 2 - 50, screen_y / 2 + 4, screen_x / 2 - 50, screen_y / 2 - 4,  screen_x / 2 - 69, screen_y / 2)
        end
    end
end

local undercross_pos = {
    [1] = 40,
    [2] = 55,
    [3] = 70,
    [4] = 85,
    [5] = 100,
}

local function undercross_indicators()
    local pos_items = function(string)
        return screen_x / 2 - draw.GetTextSize(string) / 2
    end

    if undercross_indicators_sw:GetValue() then
        local localplayer = entities.GetLocalPlayer()

        if localplayer == nil or not localplayer:IsAlive() then return end

        local r, g, b, a = undercross_indicators_color:GetValue()
        local itemsc = 1

        draw.SetFont(font_undecross); draw.Color(r, g, b, a)
        draw.TextShadow(pos_items("Absinthe"), screen_y/2 + 25, "Absinthe")

        draw.SetFont(font_undecross_items)

        if awol_sw:GetValue() then
            draw.TextShadow(pos_items("autowall"), screen_y/2 + undercross_pos[itemsc], "autowall")

            itemsc = itemsc + 1
        end

        draw.TextShadow(pos_items("fov: " .. gui.GetValue("rbot.aim.target.fov") .. "°"), screen_y/2 + undercross_pos[itemsc],
        "fov: " .. gui.GetValue("rbot.aim.target.fov") .. "°")

        itemsc = itemsc + 1
    end
end

-- POO POO --

local function clamp() -- this won't allow user to set some things to minimize the chance of getting banned
    gui.SetValue("rbot.antiaim.base", 0)
    gui.SetValue("rbot.antiaim.condition.autodir.targets", 0)
    --gui.SetValue("rbot.antiaim.condition.autodir.edges", 0)
    gui.SetValue("rbot.antiaim.advanced.pitch", 0)
    gui.SetValue("rbot.antiaim.advanced.antiresolver", 0)
    gui.SetValue("rbot.antiaim.extra.exposefake", 0)
    gui.SetValue("rbot.antiaim.advanced.roll", 0)
end

local function dynamicfov()
    if dynamicfov_sw:GetValue() then
        if dynamicfov_min:GetValue() > dynamicfov_max:GetValue() then return end

        local localplayer = entities.GetLocalPlayer()

        if localplayer == nil or not localplayer:IsAlive() then return end

        local players = entities.FindByClass("CCSPlayer")
        local localplayer_head = localplayer:GetHitboxPosition(0)
        local distance_to_enemy = nil

        for i = 1, #players do
            local player = players[i]
            if player:IsAlive() then
                if player:GetTeamNumber() ~= localplayer:GetTeamNumber() then
                    local player_head = player:GetHitboxPosition(0)
                    distance_to_enemy = math.sqrt(math.pow((player_head.x - localplayer_head.x), 2) + 
                    math.pow((player_head.y - localplayer_head.y), 2) +
                    math.pow((player_head.z - localplayer_head.z), 2))
                end
            end
        end

        local fov = nil

        if distance_to_enemy == nil or distance_to_enemy > 1200 then 
            fov = dynamicfov_min:GetValue() 
        else
            fov = math.floor(math.min(dynamicfov_max:GetValue(), math.max(dynamicfov_min:GetValue(), 5000 / distance_to_enemy)))
        end

        gui.SetValue("rbot.aim.target.fov", fov)
    end
end

local function autowall()
    for i = 1, #weapon_categories do
        if awol_sw:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy." .. weapon_categories[i] .. ".autowall", true)
        else
            gui.SetValue("rbot.hitscan.accuracy." .. weapon_categories[i] .. ".autowall", false)
        end
    end
end

local function fl_randomizer()
    if fl_randomizer_sw:GetValue() then
        if fl_randomizer_min:GetValue() > fl_randomizer_max:GetValue() then return end
        gui.SetValue("misc.fakelag.factor", math.random(fl_randomizer_min:GetValue(), fl_randomizer_max:GetValue()))
    end
end


local function freestanding()
    if fs_sw:GetValue() then
        if not gui.GetValue("rbot.antiaim.condition.autodir.edges") then
            gui.SetValue("rbot.antiaim.condition.autodir.edges", true)
        end

        gui.SetValue("rbot.antiaim.left", 90)
        gui.SetValue("rbot.antiaim.right", -90)
    else
        if gui.GetValue("rbot.antiaim.condition.autodir.edges") then
            gui.SetValue("rbot.antiaim.condition.autodir.edges", false)
        end
    end
end

local desync_side = "left"; local override_desync = false
local function desync()
    if not override_desync then
        if desync_side == "left" then
            gui.SetValue("rbot.antiaim.base.rotation", -desync_left:GetValue())
        elseif desync_side == "right" then
            gui.SetValue("rbot.antiaim.base.rotation", desync_right:GetValue())
        elseif desync_side == "center" then
            gui.SetValue("rbot.antiaim.base.rotation", 0)
        end
    end
end

local function inverter()
    if inverter_kb:GetValue() == nil or inverter_kb:GetValue() == 0 then return end

    if input.IsButtonPressed(inverter_kb:GetValue()) then
        if desync_side == "left" then
            desync_side = "right"
        else
            desync_side = "left"
        end
    end
end

local function roll(UserCmd)
    if UserCmd.viewangles.z ~= roll_slider:GetValue() and not cheat.IsFakeDucking() then
        if desync_side == "left" then
            UserCmd.viewangles = EulerAngles(UserCmd.viewangles.x, UserCmd.viewangles.y, roll_slider:GetValue())
        elseif desync_side == "center" then
            UserCmd.viewangles = EulerAngles(UserCmd.viewangles.x, UserCmd.viewangles.y, UserCmd.viewangles.z)
        elseif desync_side == "right" then
            UserCmd.viewangles = EulerAngles(UserCmd.viewangles.x, UserCmd.viewangles.y, -roll_slider:GetValue())
        end
    end
end

local function desync_mods()
    local localplayer = entities.GetLocalPlayer()
    if localplayer == nil or not localplayer:IsAlive() then return end

    local localplayer_velocity = localplayer:GetPropVector("localdata", "m_vecVelocity[0]"):Length()
    local is_slowwalking = false

    if gui.GetValue("rbot.accuracy.movement.slowkey") == nil or gui.GetValue("rbot.accuracy.movement.slowkey") == 0 then
        is_slowwalking = false
    else
        is_slowwalking = input.IsButtonDown(gui.GetValue("rbot.accuracy.movement.slowkey"))
    end

    if standing_desync_mods:GetValue() == 1 and localplayer_velocity < 3 and not is_slowwalking or
       moving_desync_mods:GetValue() == 1 and localplayer_velocity >= 3 and not is_slowwalking or 
       slowwalking_desync_mods:GetValue() == 1 and is_slowwalking then

        if desync_side == "left" then
            gui.SetValue("rbot.antiaim.base.rotation", math.random(-desync_left:GetValue(), -2))
        else
            gui.SetValue("rbot.antiaim.base.rotation", math.random(2, desync_right:GetValue()))
        end

        override_desync = true

    elseif standing_desync_mods:GetValue() == 2 and localplayer_velocity < 3 and not is_slowwalking or
           moving_desync_mods:GetValue() == 2 and localplayer_velocity >= 3 and not is_slowwalking or 
           slowwalking_desync_mods:GetValue() == 2 and is_slowwalking then

        if desync_side == "left" then
            desync_side = "right"
        else
            desync_side = "left"
        end

        override_desync = false

    elseif standing_desync_mods:GetValue() == 3 and localplayer_velocity < 3 and not is_slowwalking or
           moving_desync_mods:GetValue() == 3 and localplayer_velocity >= 3 and not is_slowwalking or 
           slowwalking_desync_mods:GetValue() == 3 and is_slowwalking then

        if desync_side == "left" then
            desync_side = "center"
        elseif desync_side == "center" then
            desync_side = "right"
        else
            desync_side = "left"
        end

        override_desync = false
    else
        override_desync = false
    end
end

-- ALL OF THAT GARBAGE EXECUTES HERE --

client.AllowListener("player_death")
callbacks.Register("FireGameEvent", killsay)

callbacks.Register("CreateMove", roll)

callbacks.Register("Draw", function()
    -- VISUAL --
    watermark()
    aa_arrows()
    undercross_indicators()
    viewmodel_override()
    aspect_ratio()

    -- SEMI-RAGE --
    clamp()
    dynamicfov()
    autowall()
    fl_randomizer()

    -- ANTI-AIM --
    freestanding()
    desync()
    inverter()
    desync_mods()
end);
