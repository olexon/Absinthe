--[[
    ABSINTHE FOR AIMWARE
    BY OLEXON

    you can +rep me if you somehow enjoy using this garbage lol

    if you want something that works and is not coded by a retard use this:
    https://aimware.net/forum/thread/158191
]]

local rb_ref = gui.Reference("RAGEBOT")
local tab = gui.Tab(rb_ref, "absinthe", "Absinthe")

local welcum_gb = gui.Groupbox(tab, "Welcome " .. cheat.GetUserName() .. "!", 10, 10, 200, 200)
gui.Text(welcum_gb, "You are currently using Absinthe")
gui.Text(welcum_gb, "Version BETA")

local rage_gb = gui.Groupbox(tab, "Rage", 10, 125, 200, 200)
local rage_sw = gui.Checkbox(rage_gb, "rage_sw", "Master Switch", false)
local roll_res_ok = gui.Keybox(rage_gb, "roll_res_ok", "Roll resolver (hold)", 0)

local dt_toggle = gui.Checkbox(rage_gb, "dt_toggle", "Global DT toggle", false)
local hs_toggle = gui.Checkbox(rage_gb, "hs_toggle", "Global HS toggle", false)

local dmg_or = gui.Checkbox(rage_gb, "dmg_or", "Min DMG Override", false)
local dmg_selector = gui.Multibox(rage_gb, "Weapons")

local shared_check = gui.Checkbox(dmg_selector, "shared_check", "Shared", false)
local zeus_check = gui.Checkbox(dmg_selector, "zeus_check", "Zeus", false)
local sniper_check = gui.Checkbox(dmg_selector, "sniper_check", "AWP", false)
local smg_check = gui.Checkbox(dmg_selector, "smg_check", "SMG", false)
local shotgun_check = gui.Checkbox(dmg_selector, "shotgun_check", "Shotgun", false)
local scout_check = gui.Checkbox(dmg_selector, "scout_check", "Scout", false)
local rifle_check = gui.Checkbox(dmg_selector, "rifle_check", "Rifle", false)
local pistol_check = gui.Checkbox(dmg_selector, "pistol_check", "Pistol", false)
local lmg_check = gui.Checkbox(dmg_selector, "lmg_check", "LMG", false)
local hpistol_check = gui.Checkbox(dmg_selector, "hpistol_check", "Heavy Pistol", false)
local asniper_check = gui.Checkbox(dmg_selector, "asniper_check", "Auto Sniper", false)

local shared_or = gui.Slider(rage_gb, "shared_or", "Shared Override", 1, 1, 130)
local zeus_or = gui.Slider(rage_gb, "zeus_or", "Zeus Override", 1, 1, 130)
local sniper_or = gui.Slider(rage_gb, "sniper_or", "AWP Override", 1, 1, 130)
local smg_or = gui.Slider(rage_gb, "smg_or", "SMG Override", 1, 1, 130)
local shotgun_or = gui.Slider(rage_gb, "shotgun_or", "Shotgun Override", 1, 1, 130)
local scout_or = gui.Slider(rage_gb, "scout_or", "Scout Override", 1, 1, 130)
local rifle_or = gui.Slider(rage_gb, "rifle_or", "Rifle Override", 1, 1, 130)
local pistol_or = gui.Slider(rage_gb, "pistol_or", "Pistol Override", 1, 1, 130)
local lmg_or = gui.Slider(rage_gb, "lmg_or", "LMG Override", 1, 1, 130)
local hpistol_or = gui.Slider(rage_gb, "hpistol_or", "Heavy pistol Override", 1, 1, 130)
local asniper_or = gui.Slider(rage_gb, "asniper_or", "Auto sniper Override", 1, 1, 130)

local rage_aa_gb = gui.Groupbox(tab, "Anti-Aim", 225, 125, 200, 200)
local inverter_kb = gui.Keybox(rage_aa_gb, "inverter_kb", "Inverter (press)", 0)
local freestand_kb = gui.Keybox(rage_aa_gb, "freestand_kb", "Freestanding (hold)", 0)
local legitaa_kb = gui.Keybox(rage_aa_gb, "legitaa_kb", "Legit Anti-Aim (hold)", 0)
local desync_cb = gui.Combobox(rage_aa_gb, "desync_cb", "Desync", unpack({"Static", "Jitter"}))

local lby_flick_sw = gui.Checkbox(rage_aa_gb, "lby_flick_sw", "LBY Flick", false)
local lby_flick_angle = gui.Slider(rage_aa_gb, "lby_flick_angle", "Flick Angle", 1, 1, 180)
local lby_flick_freq = gui.Slider(rage_aa_gb, "lby_flick_freq", "Flick Frequency (ticks)", 3, 3, 45)

local enable_conditions_sw = gui.Checkbox(rage_aa_gb, "enable_conditions_sw", "Enable Conditional Anti-Aim", false)
local cond_cb = gui.Combobox(rage_aa_gb, "rage_aa_conds", "Conditions", unpack({"Standing", "Moving", "Slowwalking", "In Air"}))

local base_yaw_stand = gui.Slider(rage_aa_gb, "base_yaw_stand", "Base Yaw", 180, -180, 180)
local base_yaw_walking = gui.Slider(rage_aa_gb, "base_yaw_walking", "Base Yaw", 180, -180, 180)
local base_yaw_slowwalking = gui.Slider(rage_aa_gb, "base_yaw_slowwalking", "Base Yaw", 180, -180, 180)
local base_yaw_inair = gui.Slider(rage_aa_gb, "base_yaw_inair", "Base Yaw", 180, -180, 180)

local aa_mode_select_stand = gui.Combobox(rage_aa_gb, "aa_mode_select_stand", "Mode", unpack({"Static", "Center", "Offset","Random", "Jitter"}))
local aa_mode_select_walk = gui.Combobox(rage_aa_gb, "aa_mode_select_walk", "Mode", unpack({"Static", "Center", "Offset","Random", "Jitter"}))
local aa_mode_select_slowwalk = gui.Combobox(rage_aa_gb, "aa_mode_select_slowwalk", "Mode", unpack({"Static", "Center", "Offset","Random", "Jitter"}))
local aa_mode_select_inair = gui.Combobox(rage_aa_gb, "aa_mode_select_inair", "Mode", unpack({"Static", "Center", "Offset","Random", "Jitter"}))

local aa_mode_angle_stand = gui.Slider(rage_aa_gb, "aa_mode_angle_stand", "Angle", 1, 1, 90)
local aa_mode_angle_walk = gui.Slider(rage_aa_gb, "aa_mode_angle_walk", "Angle", 1, 1, 90)
local aa_mode_angle_slowwalk = gui.Slider(rage_aa_gb, "aa_mode_angle_slowwalk", "Angle", 1, 1, 90)
local aa_mode_angle_inair = gui.Slider(rage_aa_gb, "aa_mode_angle_inair", "Angle", 1, 1, 90)

--[[local roll_on_stand = gui.Combobox(rage_aa_gb, "roll_on_stand", "Roll Angle", unpack({"Off", "Default", "Custom"}))
local roll_on_walk = gui.Combobox(rage_aa_gb, "roll_on_walk", "Roll Angle", unpack({"Off", "Default", "Custom"}))
local roll_on_slowwalk = gui.Combobox(rage_aa_gb, "roll_on_slowwalk", "Roll Angle", unpack({"Off", "Default", "Custom"}))
local roll_in_air = gui.Combobox(rage_aa_gb, "roll_in_air", "Roll Angle", unpack({"Off", "Default", "Custom"}))]]

local roll_on_stand = gui.Checkbox(rage_aa_gb, "roll_on_stand", "Roll Angle", 0)
local roll_on_walk = gui.Checkbox(rage_aa_gb, "roll_on_walk", "Roll Angle", 0)
local roll_on_slowwalk = gui.Checkbox(rage_aa_gb, "roll_on_slowwalk", "Roll Angle", 0)
local roll_in_air = gui.Checkbox(rage_aa_gb, "roll_in_air", "Roll Angle", 0)

local antibrute_gb = gui.Groupbox(tab, "Anti-Bruteforce", 440, 125, 185, 200)
local antibrute_mode = gui.Combobox(antibrute_gb, "antibrute_mode", "Mode", unpack({"Off", "Standard", "Stages"}))
local antibrute_stage1 = gui.Slider(antibrute_gb, "antibrute_stage1", "Stage 1", 0, -58, 58)
local antibrute_stage2 = gui.Slider(antibrute_gb, "antibrute_stage2", "Stage 2", 0, -58, 58)
local antibrute_stage3 = gui.Slider(antibrute_gb, "antibrute_stage3", "Stage 3", 0, -58, 58)
local antibrute_stage4 = gui.Slider(antibrute_gb, "antibrute_stage4", "Stage 4", 0, -58, 58)
local antibrute_stage5 = gui.Slider(antibrute_gb, "antibrute_stage5", "Stage 5", 0, -58, 58)
--[[local antibrute_stage6 = gui.Slider(antibrute_gb, "antibrute_stage5", "Stage 6", 0, -58, 58)
local antibrute_stage7 = gui.Slider(antibrute_gb, "antibrute_stage5", "Stage 7", 0, -58, 58)
local antibrute_stage8 = gui.Slider(antibrute_gb, "antibrute_stage5", "Stage 8", 0, -58, 58)
local antibrute_stage9 = gui.Slider(antibrute_gb, "antibrute_stage5", "Stage 9", 0, -58, 58)
local antibrute_stage10 = gui.Slider(antibrute_gb, "antibrute_stage5", "Stage 10", 0, -58, 58)]]

local function cond_ui()
    if enable_conditions_sw:GetValue() then
        if cond_cb:GetValue() == 0 then
            base_yaw_stand:SetInvisible(false)
            base_yaw_walking:SetInvisible(true)
            base_yaw_slowwalking:SetInvisible(true)
            base_yaw_inair:SetInvisible(true)

            aa_mode_select_stand:SetInvisible(false)
            aa_mode_select_walk:SetInvisible(true)
            aa_mode_select_slowwalk:SetInvisible(true)
            aa_mode_select_inair:SetInvisible(true)

            aa_mode_angle_stand:SetInvisible(false)
            aa_mode_angle_walk:SetInvisible(true)
            aa_mode_angle_slowwalk:SetInvisible(true)
            aa_mode_angle_inair:SetInvisible(true)

            roll_on_stand:SetInvisible(false)
            roll_on_walk:SetInvisible(true)
            roll_on_slowwalk:SetInvisible(true)
            roll_in_air:SetInvisible(true)

            if aa_mode_select_stand:GetValue() == 0 or aa_mode_select_stand:GetValue() == 4 then
                aa_mode_angle_stand:SetInvisible(true)
                aa_mode_angle_walk:SetInvisible(true)
                aa_mode_angle_slowwalk:SetInvisible(true)
                aa_mode_angle_inair:SetInvisible(true)
            end
        elseif cond_cb:GetValue() == 1 then
            base_yaw_stand:SetInvisible(true)
            base_yaw_walking:SetInvisible(false)
            base_yaw_slowwalking:SetInvisible(true)
            base_yaw_inair:SetInvisible(true)
            
            aa_mode_select_stand:SetInvisible(true)
            aa_mode_select_walk:SetInvisible(false)
            aa_mode_select_slowwalk:SetInvisible(true)
            aa_mode_select_inair:SetInvisible(true)

            aa_mode_angle_stand:SetInvisible(true)
            aa_mode_angle_walk:SetInvisible(false)
            aa_mode_angle_slowwalk:SetInvisible(true)
            aa_mode_angle_inair:SetInvisible(true)

            roll_on_stand:SetInvisible(true)
            roll_on_walk:SetInvisible(false)
            roll_on_slowwalk:SetInvisible(true)
            roll_in_air:SetInvisible(true)

            if aa_mode_select_walk:GetValue() == 0 or aa_mode_select_walk:GetValue() == 4 then
                aa_mode_angle_stand:SetInvisible(true)
                aa_mode_angle_walk:SetInvisible(true)
                aa_mode_angle_slowwalk:SetInvisible(true)
                aa_mode_angle_inair:SetInvisible(true)
            end
        elseif cond_cb:GetValue() == 2 then
            base_yaw_stand:SetInvisible(true)
            base_yaw_walking:SetInvisible(true)
            base_yaw_slowwalking:SetInvisible(false)
            base_yaw_inair:SetInvisible(true)
            
            aa_mode_select_stand:SetInvisible(true)
            aa_mode_select_walk:SetInvisible(true)
            aa_mode_select_slowwalk:SetInvisible(false)
            aa_mode_select_inair:SetInvisible(true)

            aa_mode_angle_stand:SetInvisible(true)
            aa_mode_angle_walk:SetInvisible(true)
            aa_mode_angle_slowwalk:SetInvisible(false)
            aa_mode_angle_inair:SetInvisible(true)

            roll_on_stand:SetInvisible(true)
            roll_on_walk:SetInvisible(true)
            roll_on_slowwalk:SetInvisible(false)
            roll_in_air:SetInvisible(true)

            if aa_mode_select_slowwalk:GetValue() == 0 or aa_mode_select_slowwalk:GetValue() == 4 then
                aa_mode_angle_stand:SetInvisible(true)
                aa_mode_angle_walk:SetInvisible(true)
                aa_mode_angle_slowwalk:SetInvisible(true)
                aa_mode_angle_inair:SetInvisible(true)
            end
        elseif cond_cb:GetValue() == 3 then
            base_yaw_stand:SetInvisible(true)
            base_yaw_walking:SetInvisible(true)
            base_yaw_slowwalking:SetInvisible(true)
            base_yaw_inair:SetInvisible(false)
            
            aa_mode_select_stand:SetInvisible(true)
            aa_mode_select_walk:SetInvisible(true)
            aa_mode_select_slowwalk:SetInvisible(true)
            aa_mode_select_inair:SetInvisible(false)

            aa_mode_angle_stand:SetInvisible(true)
            aa_mode_angle_walk:SetInvisible(true)
            aa_mode_angle_slowwalk:SetInvisible(true)
            aa_mode_angle_inair:SetInvisible(false)

            roll_on_stand:SetInvisible(true)
            roll_on_walk:SetInvisible(true)
            roll_on_slowwalk:SetInvisible(true)
            roll_in_air:SetInvisible(false)

            if aa_mode_select_inair:GetValue() == 0 or aa_mode_select_inair:GetValue() == 4 then
                aa_mode_angle_stand:SetInvisible(true)
                aa_mode_angle_walk:SetInvisible(true)
                aa_mode_angle_slowwalk:SetInvisible(true)
                aa_mode_angle_inair:SetInvisible(true)
            end
        end
    else
        base_yaw_stand:SetInvisible(false)
        base_yaw_walking:SetInvisible(true)
        base_yaw_slowwalking:SetInvisible(true)
        base_yaw_inair:SetInvisible(true)

        aa_mode_select_stand:SetInvisible(false)
        aa_mode_select_walk:SetInvisible(true)
        aa_mode_select_slowwalk:SetInvisible(true)
        aa_mode_select_inair:SetInvisible(true)

        aa_mode_angle_stand:SetInvisible(false)
        aa_mode_angle_walk:SetInvisible(true)
        aa_mode_angle_slowwalk:SetInvisible(true)
        aa_mode_angle_inair:SetInvisible(true)

        roll_on_stand:SetInvisible(false)
        roll_on_walk:SetInvisible(true)
        roll_on_slowwalk:SetInvisible(true)
        roll_in_air:SetInvisible(true)
    end

    -- this lua is one big sphagetti already so i will put it there
    if antibrute_mode:GetValue() ~= 2 then
        antibrute_stage1:SetInvisible(true)
        antibrute_stage2:SetInvisible(true)
        antibrute_stage3:SetInvisible(true)
        antibrute_stage4:SetInvisible(true)
        antibrute_stage5:SetInvisible(true)
    else
        antibrute_stage1:SetInvisible(false)
        antibrute_stage2:SetInvisible(false)
        antibrute_stage3:SetInvisible(false)
        antibrute_stage4:SetInvisible(false)
        antibrute_stage5:SetInvisible(false)
    end
end

local semirage_gb = gui.Groupbox(tab, "Semi-Rage", 10, 125, 200, 200)
local semirage_sw = gui.Checkbox(semirage_gb, "semirage_sw", "Master Switch", false)
local unsafe_sw = gui.Checkbox(semirage_gb, "unsafe_sw", "Allow Unsafe Features", false)
local unsafe_txt = gui.Text(semirage_gb, "Allows user to use features\n\nthat may cause untrusted bans")

local dynamicfov_sw = gui.Checkbox(semirage_gb, "dynamicfov_sw", "Dynamic FOV", false)
local dynamicfov_min = gui.Slider(semirage_gb, "dynamicfov_min", "Dynamic FOV Minimum", 1, 1, 30)
local dynamicfov_max = gui.Slider(semirage_gb, "dynamicfov_max", "Dynamic FOV Maximum", 1, 1, 30)

local legit_aa_gb = gui.Groupbox(tab, "Legit-Anti-Aim", 225, 125, 200, 200)
local legit_inverter_kb = gui.Keybox(legit_aa_gb, "legit_inverter_kb", "Inverter (press)", 0)

local misc_gb = gui.Groupbox(tab, "Misc", 10, 125, 200, 200)
local r8_fix = gui.Checkbox(misc_gb, "r8_fix", "Revolver dump fix", false)
gui.Text(misc_gb, "NOTE: High ping and exploits\n\nmay also cause R8 to dump!")
local aspectratio_slider = gui.Slider(misc_gb, "aspectratio_slider", "Aspect Ratio", 0, 0, 10, 0.1)

local rq_btn = gui.Button(misc_gb, "Rage Quit!", function() client.Command("quit", true) end) -- very useful feature

local misc_vis_gb = gui.Groupbox(tab, "Visuals", 225, 125, 200, 200)

-- colors
local fake_arrow_col = gui.ColorPicker(misc_vis_gb, "fake_arrow_col", "Fake Arrow", 71, 143, 86, 255)
local real_arrow_col = gui.ColorPicker(misc_vis_gb, "real_arrow_col", "Real Arrow", 0, 0, 0, 130)
local indicator_col = gui.ColorPicker(misc_vis_gb, "indicator_col", "Indicator", 71, 143, 86, 255)
local items_col = gui.ColorPicker(misc_vis_gb, "items_col", "Items", 118, 181, 131, 255)

-- mess
local desync_arrows_cb = gui.Checkbox(misc_vis_gb, "desync_arrows_cb", "Desync Arrows", false)
local misc_vis_indicators = gui.Combobox(misc_vis_gb, "misc_vis_indicators", "Indicators Style", unpack({"Off", "Under Crosshair", "i will add more soon"}))
local misc_vis_indicators_selector = gui.Multibox(misc_vis_gb, "Select Indicators")
local abfov_ind = gui.Checkbox(misc_vis_indicators_selector, "abfov_ind", "Aim FOV", false)
local autowall_ind = gui.Checkbox(misc_vis_indicators_selector, "autowall_ind", "Autowall", false)
local dmg_ind = gui.Checkbox(misc_vis_indicators_selector, "dmg_ind", "Minimum Damage", false)
local dt_ind = gui.Checkbox(misc_vis_indicators_selector, "dt_ind", "Double Tap", false)
local hs_ind = gui.Checkbox(misc_vis_indicators_selector, "hs_ind", "Hide Shots", false)
local fd_ind = gui.Checkbox(misc_vis_indicators_selector, "fd_ind", "Fakeduck", false)

local misc_autobuy_gb = gui.Groupbox(tab, "Autobuy", 440, 125, 185, 200)
local autobuy_sw = gui.Checkbox(misc_autobuy_gb, "autobuy_sw", "Master Switch", false)

-- primary
local primary_wep = gui.Combobox(misc_autobuy_gb, "primary_wep", "Primary Weapon", unpack({"None", "Awp", "Ssg08", "Scar20/G3SG1"}))

-- secondary
local secondary_wep = gui.Combobox(misc_autobuy_gb, "secondary_wep", "Secondary Weapon", unpack({"None", "Deagle/Revolver", "Five-Seven/Tec-9", "Dual Berettas"}))

-- misc
local misc_wep = gui.Multibox(misc_autobuy_gb, "Other Equipment")
local kev_wep = gui.Checkbox(misc_wep, "kev_wep", "Kevlar and Helment", false)
local nade_wep = gui.Checkbox(misc_wep, "nade_wep", "Grenades", false)
local def_wep = gui.Checkbox(misc_wep, "def_wep", "Defuse/Rescue Kit", false)
local taser_wep = gui.Checkbox(misc_wep, "taser_wep", "Taser", false)

-- set those to invisible ootb
semirage_gb:SetInvisible(true)
legit_aa_gb:SetInvisible(true)

misc_gb:SetInvisible(true)
misc_vis_gb:SetInvisible(true)
misc_autobuy_gb:SetInvisible(true)

local rage_subtab = gui.Button(tab, "RAGE", function()
    rage_gb:SetInvisible(false)
    rage_aa_gb:SetInvisible(false)
    antibrute_gb:SetInvisible(false)

    semirage_gb:SetInvisible(true)
    legit_aa_gb:SetInvisible(true)

    misc_gb:SetInvisible(true)
    misc_vis_gb:SetInvisible(true)
    misc_autobuy_gb:SetInvisible(true)
 end)
rage_subtab:SetPosY(17.5)
rage_subtab:SetPosX(225)
rage_subtab:SetHeight(80)

local semirage_subtab = gui.Button(tab, "SEMI-RAGE", function()
    rage_gb:SetInvisible(true)
    rage_aa_gb:SetInvisible(true)
    antibrute_gb:SetInvisible(true)

    semirage_gb:SetInvisible(false)
    legit_aa_gb:SetInvisible(false)

    misc_gb:SetInvisible(true)
    misc_vis_gb:SetInvisible(true)
    misc_autobuy_gb:SetInvisible(true)
end)
semirage_subtab:SetPosY(17.5)
semirage_subtab:SetPosX(360)
semirage_subtab:SetHeight(80)

local misc_subtab = gui.Button(tab, "MISC", function()
    rage_gb:SetInvisible(true)
    rage_aa_gb:SetInvisible(true)
    antibrute_gb:SetInvisible(true)

    semirage_gb:SetInvisible(true)
    legit_aa_gb:SetInvisible(true)

    misc_gb:SetInvisible(false)
    misc_vis_gb:SetInvisible(false)
    misc_autobuy_gb:SetInvisible(false)
end)
misc_subtab:SetPosY(17.5)
misc_subtab:SetPosX(495)
misc_subtab:SetHeight(80)

local weapons_list = {
    [1] = "hpistol",
    [2] = "pistol",
    [3] = "pistol",
    [4] = "pistol",
    [7] = "rifle",
    [8] = "rifle",
    [9] = "sniper",
    [10] = "rifle",
    [11] = "asniper",
    [13] = "rifle",
    [14] = "lmg",
    [16] = "rifle",
    [17] = "smg",
    [19] = "smg",
    [23] = "smg",
    [24] = "smg",
    [25] = "shotgun",
    [26] = "smg",
    [27] = "shotgun",
    [28] = "lmg",
    [29] = "shotgun",
    [30] = "pistol",
    [32] = "pistol",
    [33] = "smg",
    [34] = "smg",
    [35] = "shotgun",
    [36] = "pistol",
    [38] = "asniper",
    [39] = "rifle",
    [40] = "scout",
    [41] = "knife",
    [42] = "knife",
    [59] = "knife",
    [60] = "rifle",
    [61] = "pistol",
    [63] = "pistol",
    [64] = "hpistol",
    [500] = "knife",
    [503] = "knife",
    [505] = "kinife",
    [506] = "knife",
    [507] = "knife",
    [508] = "knife",
    [509] = "knife",
    [512] = "knife",
    [514] = "knife",
    [515] = "knife",
    [516] = "knife",
    [517] = "knife",
    [518] = "knife",
    [519] = "knife",
    [520] = "knife",
    [521] = "knife",
    [522] = "knife",
    [523] = "knife",
    [525] = "knife",
}

-- RAGE
local shared_ogdmg = gui.GetValue("rbot.hitscan.accuracy.shared.mindamage")
local zeus_ogdmg = gui.GetValue("rbot.hitscan.accuracy.zeus.mindamage")
local sniper_ogdmg = gui.GetValue("rbot.hitscan.accuracy.sniper.mindamage")
local smg_ogdmg = gui.GetValue("rbot.hitscan.accuracy.smg.mindamage")
local shotgun_ogdmg = gui.GetValue("rbot.hitscan.accuracy.shotgun.mindamage")
local scout_ogdmg = gui.GetValue("rbot.hitscan.accuracy.scout.mindamage")
local rifle_ogdmg = gui.GetValue("rbot.hitscan.accuracy.rifle.mindamage")
local pistol_ogdmg = gui.GetValue("rbot.hitscan.accuracy.pistol.mindamage")
local lmg_ogdmg = gui.GetValue("rbot.hitscan.accuracy.lmg.mindamage")
local hpistol_ogdmg = gui.GetValue("rbot.hitscan.accuracy.hpistol.mindamage")
local asniper_ogdmg = gui.GetValue("rbot.hitscan.accuracy.asniper.mindamage")

local function dmg_override()
    if rage_sw:GetValue() and dmg_or:GetValue() then
        if shared_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.shared.mindamage", shared_or:GetValue())
        end
        if zeus_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.zeus.mindamage", zeus_or:GetValue())
        end
        if sniper_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.sniper.mindamage", sniper_or:GetValue())
        end
        if smg_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.smg.mindamage", smg_or:GetValue())
        end
        if shotgun_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.shotgun.mindamage", shotgun_or:GetValue())
        end
        if scout_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.scout.mindamage", scout_or:GetValue())
        end
        if rifle_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.rifle.mindamage", rifle_or:GetValue())
        end
        if pistol_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.pistol.mindamage", pistol_or:GetValue())
        end
        if lmg_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.lmg.mindamage", lmg_or:GetValue())
        end
        if hpistol_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.hpistol.mindamage", hpistol_or:GetValue())
        end
        if asniper_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.asniper.mindamage", asniper_or:GetValue())
        end
    elseif rage_sw:GetValue() and not dmg_or:GetValue() then -- this was else before but aimware shat itself and always forced min dmg 1 even if slider was set to hp+1 #ghettofix
        if gui.GetValue("rbot.hitscan.accuracy.shared.mindamage") == shared_or:GetValue() and shared_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.shared.mindamage", shared_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.zeus.mindamage") == zeus_or:GetValue() and zeus_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.zeus.mindamage", zeus_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.sniper.mindamage") == sniper_or:GetValue() and sniper_check:GetValue( ) then
            gui.SetValue("rbot.hitscan.accuracy.sniper.mindamage", sniper_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.smg.mindamage") == smg_or:GetValue() and smg_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.smg.mindamage", smg_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.shotgun.mindamage") == shotgun_or:GetValue() and shotgun_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.shotgun.mindamage", shotgun_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.scout.mindamage") == scout_or:GetValue() and scout_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.scout.mindamage", scout_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.rifle.mindamage") == rifle_or:GetValue() and rifle_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.rifle.mindamage", rifle_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.pistol.mindamage") == pistol_or:GetValue() and pistol_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.pistol.mindamage", pistol_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.lmg.mindamage") == lmg_or:GetValue() and lmg_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.lmg.mindamage", lmg_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.hpistol.mindamage") == hpistol_or:GetValue() and hpistol_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.hpistol.mindamage", hpistol_ogdmg)
        end
        if gui.GetValue("rbot.hitscan.accuracy.asniper.mindamage") == asniper_or:GetValue() and asniper_check:GetValue() then
            gui.SetValue("rbot.hitscan.accuracy.asniper.mindamage", asniper_ogdmg)
        end
    end
    --print(gui.GetValue( "rbot.hitscan.accuracy.scout.mindamage" ))
end

local function resolver_override()
    if rage_sw:GetValue() then
        if roll_res_ok:GetValue() ~= 0 and input.IsButtonDown(roll_res_ok:GetValue()) then
            gui.SetValue("rbot.aim.posadj.resolver", 1)
        end
        if roll_res_ok:GetValue() ~= 0 and not input.IsButtonDown(roll_res_ok:GetValue()) then
            gui.SetValue("rbot.aim.posadj.resolver", 2)
        end
    end
end

-- RAGE AA
local function rage_aa()
    if rage_sw:GetValue() then

        local tick_multiplier = 2 

        if enable_conditions_sw:GetValue() then
            -- conditions
            slowwalkkey = gui.GetValue("rbot.accuracy.movement.slowkey")

            local localplayer = entities:GetLocalPlayer()
            local localplayer_velocity = localplayer:GetPropVector("localdata", "m_vecVelocity[0]"):Length()
            local localplayer_flags = localplayer:GetPropBool("m_fFlags")

            if slowwalkkey == nil or not input.IsButtonDown(slowwalkkey) and localplayer_velocity > 3 and localplayer_flags == true then

                if aa_mode_select_walk:GetValue() == 0 then
                    gui.SetValue("rbot.antiaim.base", base_yaw_walking:GetValue())
                elseif aa_mode_select_walk:GetValue() == 1 then

                    if base_yaw_walking:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_walking:GetValue()-aa_mode_angle_walk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_walking:GetValue()+aa_mode_angle_walk:GetValue()))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_walking:GetValue()+aa_mode_angle_walk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_walking:GetValue()-aa_mode_angle_walk:GetValue()))
                        end  
                    end

                elseif aa_mode_select_walk:GetValue() == 2 then

                    if base_yaw_walking:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_walking:GetValue()-aa_mode_angle_walk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_walking:GetValue())
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_walking:GetValue()+aa_mode_angle_walk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_walking:GetValue())
                        end  
                    end

                elseif aa_mode_select_walk:GetValue() == 3 then
                    if base_yaw_walking:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_walking:GetValue()-math.random(1, aa_mode_angle_walk:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_walking:GetValue()+math.random(1, aa_mode_angle_walk:GetValue())))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_walking:GetValue()+math.random(1, aa_mode_angle_walk:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_walking:GetValue()-math.random(1, aa_mode_angle_walk:GetValue())))
                        end  
                    end

                elseif aa_mode_select_walk:GetValue() == 4 then
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", 0)
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", 180)
                    end  
                end 

                if roll_on_walk:GetValue() then
                    gui.SetValue("rbot.antiaim.advanced.roll", true)
                else
                    gui.SetValue("rbot.antiaim.advanced.roll", false)
                end

            elseif slowwalkkey ~= nil and input.IsButtonDown(slowwalkkey) and localplayer_velocity > 3 and localplayer_flags == true then

                if aa_mode_select_slowwalk:GetValue() == 0 then
                    gui.SetValue("rbot.antiaim.base", base_yaw_slowwalking:GetValue())
                elseif aa_mode_select_slowwalk:GetValue() == 1 then

                    if base_yaw_slowwalking:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()-aa_mode_angle_slowwalk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_slowwalking:GetValue()+aa_mode_angle_slowwalk:GetValue()))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()+aa_mode_angle_slowwalk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_slowwalking:GetValue()-aa_mode_angle_slowwalk:GetValue()))
                        end  
                    end

                elseif aa_mode_select_slowwalk:GetValue() == 2 then

                    if base_yaw_slowwalking:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()-aa_mode_angle_slowwalk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_slowwalking:GetValue())
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()+aa_mode_angle_slowwalk:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_slowwalking:GetValue())
                        end  
                    end

                elseif aa_mode_select_slowwalk:GetValue() == 3 then
                    if base_yaw_slowwalking:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()-math.random(1, aa_mode_angle_slowwalk:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_slowwalking:GetValue()+math.random(1, aa_mode_angle_slowwalk:GetValue())))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()+math.random(1, aa_mode_angle_slowwalk:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_slowwalking:GetValue()-math.random(1, aa_mode_angle_slowwalk:GetValue())))
                        end  
                    end
                
                elseif aa_mode_select_slowwalk:GetValue() == 4 then
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", 0)
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", 180)
                    end
                end

                if roll_on_slowwalk:GetValue() then
                    gui.SetValue("rbot.antiaim.advanced.roll", true)
                else
                    gui.SetValue("rbot.antiaim.advanced.roll", false)
                end
            elseif slowwalkkey == nil or not input.IsButtonDown(slowwalkkey) and localplayer_velocity > 3 and localplayer_flags == false then
                
                if aa_mode_select_inair:GetValue() == 0 then
                    gui.SetValue("rbot.antiaim.base", base_yaw_inair:GetValue())
                elseif aa_mode_select_inair:GetValue() == 1 then

                    if base_yaw_inair:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_inair:GetValue()-aa_mode_angle_inair:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_inair:GetValue()+aa_mode_angle_inair:GetValue()))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_slowwalking:GetValue()+aa_mode_angle_inair:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_slowwalking:GetValue()-aa_mode_angle_inair:GetValue()))
                        end  
                    end

                elseif aa_mode_select_inair:GetValue() == 2 then

                    if base_yaw_inair:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_inair:GetValue()-aa_mode_angle_inair:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_inair:GetValue())
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_inair:GetValue()+aa_mode_angle_inair:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_inair:GetValue())
                        end  
                    end

                elseif aa_mode_select_inair:GetValue() == 3 then
                    if base_yaw_inair:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_inair:GetValue()-math.random(1, aa_mode_angle_inair:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_inair:GetValue()+math.random(1, aa_mode_angle_inair:GetValue())))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_inair:GetValue()+math.random(1, aa_mode_angle_inair:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_inair:GetValue()-math.random(1, aa_mode_angle_inair:GetValue())))
                        end  
                    end
                
                elseif aa_mode_select_inair:GetValue() == 4 then
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", 0)
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", 180)
                    end
                end

                if roll_in_air:GetValue() then
                    gui.SetValue("rbot.antiaim.advanced.roll", true)
                else
                    gui.SetValue("rbot.antiaim.advanced.roll", false)
                end
            else

                if aa_mode_select_stand:GetValue() == 0 then
                    gui.SetValue("rbot.antiaim.base", base_yaw_stand:GetValue())
                elseif aa_mode_select_stand:GetValue() == 1 then

                    if base_yaw_stand:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()-aa_mode_angle_stand:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()+aa_mode_angle_stand:GetValue()))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()+aa_mode_angle_stand:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()-aa_mode_angle_stand:GetValue()))
                        end  
                    end

                elseif aa_mode_select_stand:GetValue() == 2 then

                    if base_yaw_stand:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()-aa_mode_angle_stand:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_stand:GetValue())
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()+aa_mode_angle_stand:GetValue()))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", base_yaw_stand:GetValue())
                        end  
                    end

                elseif aa_mode_select_stand:GetValue() == 3 then
                    if base_yaw_stand:GetValue() > 0 then    
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()-math.random(1, aa_mode_angle_stand:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()+math.random(1, aa_mode_angle_stand:GetValue())))
                        end  
                    else
                        if globals.TickCount()%2 == 0 then
                            gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()+math.random(1, aa_mode_angle_stand:GetValue())))
                        end

                        if globals.TickCount()%(2*tick_multiplier) == 0 then
                            gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()-math.random(1, aa_mode_angle_stand:GetValue())))
                        end  
                    end
                
                elseif aa_mode_select_stand:GetValue() == 4 then
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", 0)
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", 180)
                    end
                end

                if roll_on_stand:GetValue() then
                    gui.SetValue("rbot.antiaim.advanced.roll", true)
                else
                    gui.SetValue("rbot.antiaim.advanced.roll", false)
                end
            end
        else
            if aa_mode_select_stand:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", base_yaw_stand:GetValue())
            elseif aa_mode_select_stand:GetValue() == 1 then

                if base_yaw_stand:GetValue() > 0 then    
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()-aa_mode_angle_stand:GetValue()))
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()+aa_mode_angle_stand:GetValue()))
                    end  
                else
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()+aa_mode_angle_stand:GetValue()))
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()-aa_mode_angle_stand:GetValue()))
                    end  
                end

            elseif aa_mode_select_stand:GetValue() == 2 then

                if base_yaw_stand:GetValue() > 0 then    
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()-aa_mode_angle_stand:GetValue()))
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", base_yaw_stand:GetValue())
                    end  
                else
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()+aa_mode_angle_stand:GetValue()))
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", base_yaw_stand:GetValue())
                    end  
                end

            elseif aa_mode_select_stand:GetValue() == 3 then
                if base_yaw_stand:GetValue() > 0 then    
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()-math.random(1, aa_mode_angle_stand:GetValue())))
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()+math.random(1, aa_mode_angle_stand:GetValue())))
                    end  
                else
                    if globals.TickCount()%2 == 0 then
                        gui.SetValue("rbot.antiaim.base", (base_yaw_stand:GetValue()+math.random(1, aa_mode_angle_stand:GetValue())))
                    end

                    if globals.TickCount()%(2*tick_multiplier) == 0 then
                        gui.SetValue("rbot.antiaim.base", (-base_yaw_stand:GetValue()-math.random(1, aa_mode_angle_stand:GetValue())))
                    end  
                end
            
            elseif aa_mode_select_stand:GetValue() == 4 then
                if globals.TickCount()%2 == 0 then
                    gui.SetValue("rbot.antiaim.base", 0)
                end

                if globals.TickCount()%(2*tick_multiplier) == 0 then
                    gui.SetValue("rbot.antiaim.base", 180)
                end
            end

            if roll_on_stand:GetValue() then
                gui.SetValue("rbot.antiaim.advanced.roll", true)
            else
                gui.SetValue("rbot.antiaim.advanced.roll", false)
            end
        end
    end
end

local function lby_flick()
    if rage_sw:GetValue() then
        local localplayer = entities.GetLocalPlayer()

        if not localplayer or not localplayer:IsAlive() then 
            return
        end

        local yaw_value = base_yaw_stand:GetValue() -- will use stand's value till i stop being lazy mf

        local desync_side = gui.GetValue("rbot.antiaim.base.rotation")
        local flick_freq = lby_flick_freq:GetValue()

        -- yaw should return to its normal state after flick because its forced by other function
        if lby_flick_sw:GetValue() then
            if desync_side > 0 then
                if globals.TickCount()%flick_freq == 0 then
                    gui.SetValue("rbot.antiaim.base", yaw_value - lby_flick_angle:GetValue())
                end
            elseif desync_side < 0 then
                if globals.TickCount()%flick_freq == 0 then
                    gui.SetValue("rbot.antiaim.base", (yaw_value - lby_flick_angle:GetValue()) * -1)
                end
            end
        end
    end
end


local legitaa_backup_state = 0
local backup_legitaa = {
    pitch = nil,
    targets = nil
}

local function legit_aa_on_hold()
    if rage_sw:GetValue() then
        if legitaa_kb:GetValue() ~= 0 and input.IsButtonDown(legitaa_kb:GetValue()) then
            if legitaa_backup_state ~= 1 then
                backup_legitaa.pitch = gui.GetValue("rbot.antiaim.advanced.pitch")
                backup_legitaa.targets = gui.GetValue("rbot.antiaim.condition.autodir.targets")
    
                legitaa_backup_state = 1
            end

            gui.SetValue("rbot.antiaim.base", 0)
            gui.SetValue("rbot.antiaim.advanced.pitch", 0)
            gui.SetValue("rbot.antiaim.condition.autodir.targets", false)
            gui.SetValue("rbot.antiaim.condition.use", false)
        elseif legitaa_kb:GetValue() ~= 0 and not input.IsButtonDown(legitaa_kb:GetValue()) then
            if backup_legitaa.pitch == nil or backup_legitaa.targets == nil then return end

            if gui.GetValue("rbot.antiaim.advanced.pitch") ~= backup_legitaa.pitch then
                gui.SetValue("rbot.antiaim.advanced.pitch", backup_legitaa.pitch)
            end

            if gui.GetValue("rbot.antiaim.condition.autodir.targets") ~= backup_legitaa.targets then
                gui.SetValue("rbot.antiaim.condition.autodir.targets", backup_legitaa.targets)
            end

            gui.SetValue("rbot.antiaim.condition.use", false)
        end
    end
end

local stage = 0
local function anti_brute(event) -- still requires some love
    local localplayer = entities.GetLocalPlayer()

    if not localplayer or not localplayer:IsAlive() then 
        return
    end

    if rage_sw:GetValue() then
        if event then
            if antibrute_mode:GetValue() == 1 and event:GetName() ~= nil and event:GetName() == "bullet_impact" and client.GetLocalPlayerIndex() ~= client.GetPlayerIndexByUserID(event:GetInt("userid")) then
                gui.SetValue("rbot.antiaim.base.rotation", (gui.GetValue("rbot.antiaim.base.rotation")*-1))
            end
            if antibrute_mode:GetValue() == 2 and event:GetName() ~= nil and event:GetName() == "bullet_impact" and client.GetLocalPlayerIndex() ~= client.GetPlayerIndexByUserID(event:GetInt("userid")) then
                if stage == 0 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage1:GetValue())
                    stage = stage + 1
                elseif stage == 1 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage2:GetValue())
                    stage = stage + 1
                elseif stage == 2 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage3:GetValue())
                    stage = stage + 1
                elseif stage == 3 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage4:GetValue())
                    stage = stage + 1
                elseif stage == 4 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage5:GetValue())
                    stage = 0
                --[[elseif stage == 5 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage6:GetValue())
                    stage = stage + 1
                elseif stage == 6 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage7:GetValue())
                    stage = stage + 1
                elseif stage == 7 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage8:GetValue())
                    stage = stage + 1
                elseif stage == 8 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage9:GetValue())
                    stage = stage + 1
                elseif stage == 9 then
                    gui.SetValue("rbot.antiaim.base.rotation", antibrute_stage10:GetValue())
                    stage = 0]]
                end
            end
        end
    end
end

local function desync_inverter()
    if rage_sw:GetValue() or semirage_sw:GetValue() then
        if (inverter_kb:GetValue() ~= 0 and input.IsButtonPressed(inverter_kb:GetValue())) or (legit_inverter_kb:GetValue() ~= 0 and input.IsButtonPressed(legit_inverter_kb:GetValue())) then
            gui.SetValue("rbot.antiaim.base.rotation", (gui.GetValue("rbot.antiaim.base.rotation")*-1))
        end
    end
end

local function desync_jitter()
    if rage_sw:GetValue() then
        if desync_cb:GetValue() == 1 then
            gui.SetValue("rbot.antiaim.base.rotation", (gui.GetValue("rbot.antiaim.base.rotation")*-1))
        end
    end
end

local function freestand()
    if rage_sw:GetValue() then
        if freestand_kb:GetValue() ~= 0 and input.IsButtonDown(freestand_kb:GetValue()) then
            gui.SetValue("rbot.antiaim.condition.autodir.edges", true)
            gui.SetValue("rbot.antiaim.right", -110)
            gui.SetValue("rbot.antiaim.left", 110)
        elseif freestand_kb:GetValue() == 0 or not input.IsButtonDown(freestand_kb:GetValue()) then
            gui.SetValue("rbot.antiaim.condition.autodir.edges", false)
        end
    end
end

local function exploits_toggles()
    if rage_sw:GetValue() then
        if dt_toggle:GetValue() and hs_toggle:GetValue() then
            hs_toggle:SetValue(false)
            dt_toggle:SetValue(false)
        elseif dt_toggle:GetValue() and not hs_toggle:GetValue() then
            gui.SetValue("rbot.accuracy.attack.shared.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.zeus.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.pistol.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.hpistol.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.smg.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.rifle.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.shotgun.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.scout.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.asniper.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.sniper.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.lmg.fire", "Defensive Warp Fire")
            gui.SetValue("rbot.accuracy.attack.knife.fire", "Defensive Warp Fire")
        elseif not dt_toggle:GetValue() and hs_toggle:GetValue() then
            gui.SetValue("rbot.accuracy.attack.shared.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.zeus.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.pistol.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.hpistol.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.smg.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.rifle.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.shotgun.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.scout.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.asniper.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.sniper.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.lmg.fire", "Shift Fire")
            gui.SetValue("rbot.accuracy.attack.knife.fire", "Shift Fire")
        else
            gui.SetValue("rbot.accuracy.attack.shared.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.zeus.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.pistol.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.hpistol.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.smg.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.rifle.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.shotgun.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.scout.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.asniper.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.sniper.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.lmg.fire", "Off")
            gui.SetValue("rbot.accuracy.attack.knife.fire", "Off")
        end
    end
end

-- SEMI-RAGE
local function clamp() -- this won't allow user to set some things to minimize the chance of getting banned
    if semirage_sw:GetValue() then
        gui.SetValue("rbot.antiaim.base", 0)
        gui.SetValue("rbot.antiaim.condition.autodir.edges", 0)
        gui.SetValue("rbot.antiaim.condition.autodir.targets", 0)
        gui.SetValue("rbot.antiaim.advanced.pitch", 0)

        if not unsafe_sw:GetValue() then
            gui.SetValue("misc.antiuntrusted", 1)
            gui.SetValue("rbot.antiaim.advanced.roll", 0)
            gui.SetValue("rbot.antiaim.advanced.antiresolver", 0) -- idk if this is safe or not but i never saw any1 using it so /shrug
            gui.SetValue("rbot.antiaim.extra.exposefake", 0)

            if gui.GetValue("rbot.aim.target.fov") > 30 then 
                gui.SetValue("rbot.aim.target.fov", 30)
            end
        end
    end
end

local function dynamicfov()
    if semirage_sw:GetValue() and dynamicfov_sw:GetValue() then
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

-- MISC/VISUALS
local screen_w, screen_h = draw.GetScreenSize()
local Font_undercross = draw.CreateFont("Tahoma Bold", 13)
local font_undercross_items = draw.CreateFont("Tahoma Bold", 11)

local function desync_arrows()
    local lp = entities.GetLocalPlayer()

    if lp == nil or not lp:IsAlive() then
        return
    end

    local fake_arrow_col_r, fake_arrow_col_g, fake_arrow_col_b, fake_arrow_col_a = fake_arrow_col:GetValue()
    local real_arrow_col_r, real_arrow_col_g, real_arrow_col_b, real_arrow_col_a = real_arrow_col:GetValue()

    if desync_arrows_cb:GetValue() then
        -- i dont know any better way to check that

        local str_table = {}
        for str in string.gmatch(gui.GetValue("rbot.antiaim.base"), "([^".."%s".."]+)") do 
            table.insert(str_table, str)
        end

        local base_yaw = str_table[1]:gsub("\"", "") -- doing anything yaw related in aimware is pain in the ass change my mind
        base_yaw = tonumber(base_yaw)

        --print(base_yaw)

        if base_yaw == 0 or legitaa_kb:GetValue() ~= 0 and input.IsButtonDown(legitaa_kb:GetValue()) then
            --left
            if gui.GetValue("rbot.antiaim.base.rotation") > 0 then
                draw.Color(fake_arrow_col_r, fake_arrow_col_g, fake_arrow_col_b, fake_arrow_col_a)
                draw.Triangle(screen_w/2+140, screen_h/2, screen_w/2+120, screen_h/2+12, screen_w/2+120, screen_h/2-12)
                draw.Color(real_arrow_col_r, real_arrow_col_g, real_arrow_col_b, real_arrow_col_a)
                draw.Triangle(screen_w/2-140, screen_h/2, screen_w/2-120, screen_h/2-12, screen_w/2-120, screen_h/2+12)
            else --right
                draw.Color(fake_arrow_col_r, fake_arrow_col_g, fake_arrow_col_b, fake_arrow_col_a)
                draw.Triangle(screen_w/2-140, screen_h/2, screen_w/2-120, screen_h/2-12, screen_w/2-120, screen_h/2+12)
                draw.Color(real_arrow_col_r, real_arrow_col_g, real_arrow_col_b, real_arrow_col_a)
                draw.Triangle(screen_w/2+140, screen_h/2, screen_w/2+120, screen_h/2+12, screen_w/2+120, screen_h/2-12)
            end
        else
            --left
            if gui.GetValue("rbot.antiaim.base.rotation") > 0 then
                draw.Color(fake_arrow_col_r, fake_arrow_col_g, fake_arrow_col_b, fake_arrow_col_a)
                draw.Triangle(screen_w/2-140, screen_h/2, screen_w/2-120, screen_h/2-12, screen_w/2-120, screen_h/2+12)
                draw.Color(real_arrow_col_r, real_arrow_col_g, real_arrow_col_b, real_arrow_col_a)
                draw.Triangle(screen_w/2+140, screen_h/2, screen_w/2+120, screen_h/2+12, screen_w/2+120, screen_h/2-12)
            else --right
                draw.Color(fake_arrow_col_r, fake_arrow_col_g, fake_arrow_col_b, fake_arrow_col_a)
                draw.Triangle(screen_w/2+140, screen_h/2, screen_w/2+120, screen_h/2+12, screen_w/2+120, screen_h/2-12)
                draw.Color(real_arrow_col_r, real_arrow_col_g, real_arrow_col_b, real_arrow_col_a)
                draw.Triangle(screen_w/2-140, screen_h/2, screen_w/2-120, screen_h/2-12, screen_w/2-120, screen_h/2+12)
            end
        end
    end
end

local function indicators()
    local localplayer = entities.GetLocalPlayer()

    if localplayer == nil or not localplayer:IsAlive() then
        return
    end

    localplayer_weaponid = localplayer:GetWeaponID()
    --print(localplayer:GetWeaponType())

    local text = "Absinthe"
    local isscoped = localplayer:GetPropBool("m_bIsScoped")
    local x_pos = 0

    if isscoped then
        x_pos = (text:len()-28)
    else
        x_pos = (text:len() * 2.5)
    end


    local item_pos = {
        [1] = 40,
        [2] = 55,
        [3] = 70,
        [4] = 85,   
        [5] = 100,
        [5] = 115,
    }

    local item_idx = 0

    if misc_vis_indicators:GetValue() == 1 then
        draw.Color(indicator_col:GetValue())
        draw.SetFont(Font_undercross)

        draw.Text(screen_w/2-x_pos-2, screen_h/2+25, text)

        draw.Color(items_col:GetValue())
        draw.SetFont(font_undercross_items)

        if abfov_ind:GetValue() then
            item_idx = item_idx + 1

            draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "fov: " .. gui.GetValue("rbot.aim.target.fov"))
        end
        
        if localplayer:GetWeaponType() ~= nil and localplayer:GetWeaponType() ~= 0 and localplayer:GetWeaponType() ~= 7 and localplayer:GetWeaponType() ~= 9 and localplayer:GetWeaponType() ~= 11 then
            if dmg_ind:GetValue() then
                item_idx = item_idx + 1

                if gui.GetValue("rbot.hitscan.accuracy." .. weapons_list[localplayer_weaponid] .. ".mindamagehp") == 0 then
                    draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "dmg: " .. gui.GetValue("rbot.hitscan.accuracy." .. weapons_list[localplayer_weaponid] .. ".mindamage"))
                else
                    draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "dmg: " .. gui.GetValue("rbot.hitscan.accuracy." .. weapons_list[localplayer_weaponid] .. ".mindamage") .. "+" .. gui.GetValue("rbot.hitscan.accuracy." .. weapons_list[localplayer_weaponid] .. ".mindamagehp"))
                end
            end

            if autowall_ind:GetValue() and gui.GetValue("rbot.hitscan.accuracy." .. weapons_list[localplayer_weaponid] .. ".autowall") then
                item_idx = item_idx + 1
    
                draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "autowall")
            end

            if dt_ind:GetValue() and string.match(gui.GetValue("rbot.accuracy.attack." .. weapons_list[localplayer_weaponid] .. ".fire"), "Defensive Warp Fire") then
                item_idx = item_idx + 1
    
                draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "doubletap")
            end
    
            if hs_ind:GetValue() and string.match(gui.GetValue("rbot.accuracy.attack." .. weapons_list[localplayer_weaponid] .. ".fire"), "Shift Fire") then
                item_idx = item_idx + 1
    
                draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "hideshots")
            end
        end
        
        if fd_ind:GetValue() and cheat.IsFakeDucking() then
            item_idx = item_idx + 1

            draw.Text(screen_w/2-x_pos-2, screen_h/2+item_pos[item_idx], "fakeduck")
        end
        
    end
end

local function autobuy(event)
    if autobuy_sw:GetValue() then
        if event:GetName() == "round_prestart" then
            -- primary
            if primary_wep:GetValue() ~= 0 then
                if primary_wep:GetValue() == 1 then
                    client.Command("buy awp", true)
                elseif primary_wep:GetValue() == 2 then
                    client.Command("buy ssg08", true)
                elseif primary_wep:GetValue() == 3 then -- this could be else but i made it elseif in case i would like to add more weapons to autobuy
                    client.Command("buy scar20", true)
                end
            end
            -- secondary
            if secondary_wep:GetValue() ~= 0 then
                if secondary_wep:GetValue() == 1 then
                    client.Command("buy deagle", true)
                elseif secondary_wep:GetValue() == 2 then
                    client.Command("buy fiveseven", true)
                elseif secondary_wep:GetValue() == 3 then -- same here
                    client.Command("buy elite", true)
                end
            end
            -- misc
            if kev_wep:GetValue() then
                client.Command("buy vest; buy vesthelm", true)
            end

            if nade_wep:GetValue() then
                client.Command("buy molotov; buy hegrenade; buy smokegrenade", true)
            end

            if def_wep:GetValue() then
                client.Command("buy defuser", true)
            end

            if taser_wep:GetValue() then
                client.Command("buy taser", true)
            end
        end
    end
end

local r8_backup_state = 0
local backup_r8 = {
    fakelag = nil,
    fakelatency = nil,
}

local function r8_dump_fix()
    local localplayer = entities.GetLocalPlayer()

    if localplayer == nil or not localplayer:IsAlive() then
        return
    end

    localplayer_weaponid = localplayer:GetWeaponID()


    if r8_fix:GetValue() then
        if localplayer_weaponid == 64 then
            if r8_backup_state ~= 1 then
                backup_r8.fakelag = gui.GetValue("misc.fakelag.enable")
                backup_r8.fakelatency = gui.GetValue("misc.fakelatency.enable")
    
                r8_backup_state = 1
            end

            gui.SetValue("misc.fakelag.enable", false)
            gui.SetValue("misc.fakelatency.enable", false)
            gui.SetValue("rbot.accuracy.attack.hpistol.fire", 0)
        else
            if backup_r8.fakelag == nil or backup_r8.fakelatency == nil then return end

            if gui.GetValue("misc.fakelag.enable") ~= backup_r8.fakelag then
                gui.SetValue("misc.fakelag.enable", backup_r8.fakelag)
            end

            if gui.GetValue("misc.fakelatency.enable") ~= backup_r8.fakelatency then
                gui.SetValue("misc.fakelatency.enable", backup_r8.fakelatency)
            end
        end
    end
end

local function aspecratio()
    if client.GetConVar("r_aspectratio") ~= aspectratio_slider:GetValue() then
        client.SetConVar("r_aspectratio", aspectratio_slider:GetValue())
    end
end

local function sw_checks()
    if rage_sw:GetValue() == true and semirage_sw:GetValue() == true then -- lol
        rage_sw:SetValue(false)
        semirage_sw:SetValue(false)
    end

    -- rage tab
    if rage_sw:GetValue() == true then
        dmg_selector:SetDisabled(false)
        dmg_or:SetDisabled(false)
        cond_cb:SetDisabled(false)
        inverter_kb:SetDisabled(false)
        freestand_kb:SetDisabled(false)
        legitaa_kb:SetDisabled(false)
        desync_cb:SetDisabled(false)
        dt_toggle:SetDisabled(false)
        hs_toggle:SetDisabled(false)
        roll_res_ok:SetDisabled(false)
        base_yaw_stand:SetDisabled(false)
        base_yaw_walking:SetDisabled(false)
        base_yaw_slowwalking:SetDisabled(false)
        base_yaw_inair:SetDisabled(false)
        aa_mode_select_stand:SetDisabled(false)
        aa_mode_select_walk:SetDisabled(false)
        aa_mode_select_slowwalk:SetDisabled(false)
        aa_mode_select_inair:SetDisabled(false)
        aa_mode_angle_stand:SetDisabled(false)
        aa_mode_angle_walk:SetDisabled(false)
        aa_mode_angle_slowwalk:SetDisabled(false)
        aa_mode_angle_inair:SetDisabled(false)
        roll_on_stand:SetDisabled(false)
        roll_on_walk:SetDisabled(false)
        roll_on_slowwalk:SetDisabled(false)
        roll_in_air:SetDisabled(false)
        antibrute_mode:SetDisabled(false)
        antibrute_stage1:SetDisabled(false)
        antibrute_stage2:SetDisabled(false)
        antibrute_stage3:SetDisabled(false)
        antibrute_stage4:SetDisabled(false)
        antibrute_stage5:SetDisabled(false)
        shared_or:SetDisabled(false)
        zeus_or:SetDisabled(false)
        sniper_or:SetDisabled(false)
        smg_or:SetDisabled(false)
        shotgun_or:SetDisabled(false)
        scout_or:SetDisabled(false)
        rifle_or:SetDisabled(false)
        pistol_or:SetDisabled(false)
        lmg_or:SetDisabled(false)
        hpistol_or:SetDisabled(false)
        asniper_or:SetDisabled(false)
        lby_flick_sw:SetDisabled(false)
        lby_flick_angle:SetDisabled(false)
        lby_flick_freq:SetDisabled(false)
        enable_conditions_sw:SetDisabled(false)
    else
        dmg_selector:SetDisabled(true)
        dmg_or:SetDisabled(true)
        cond_cb:SetDisabled(true)
        inverter_kb:SetDisabled(true)
        freestand_kb:SetDisabled(true)
        legitaa_kb:SetDisabled(true)
        desync_cb:SetDisabled(true)
        dt_toggle:SetDisabled(true)
        hs_toggle:SetDisabled(true)
        roll_res_ok:SetDisabled(true)
        base_yaw_stand:SetDisabled(true)
        base_yaw_walking:SetDisabled(true)
        base_yaw_slowwalking:SetDisabled(true)
        base_yaw_inair:SetDisabled(true)
        aa_mode_select_stand:SetDisabled(true)
        aa_mode_select_walk:SetDisabled(true)
        aa_mode_select_slowwalk:SetDisabled(true)
        aa_mode_select_inair:SetDisabled(true)
        aa_mode_angle_stand:SetDisabled(true)
        aa_mode_angle_walk:SetDisabled(true)
        aa_mode_angle_slowwalk:SetDisabled(true)
        aa_mode_angle_inair:SetDisabled(true)
        roll_on_stand:SetDisabled(true)
        roll_on_walk:SetDisabled(true)
        roll_on_slowwalk:SetDisabled(true)
        roll_in_air:SetDisabled(true)
        antibrute_mode:SetDisabled(true)
        antibrute_stage1:SetDisabled(true)
        antibrute_stage2:SetDisabled(true)
        antibrute_stage3:SetDisabled(true)
        antibrute_stage4:SetDisabled(true)
        antibrute_stage5:SetDisabled(true)
        shared_or:SetDisabled(true)
        zeus_or:SetDisabled(true)
        sniper_or:SetDisabled(true)
        smg_or:SetDisabled(true)
        shotgun_or:SetDisabled(true)
        scout_or:SetDisabled(true)
        rifle_or:SetDisabled(true)
        pistol_or:SetDisabled(true)
        lmg_or:SetDisabled(true)
        hpistol_or:SetDisabled(true)
        asniper_or:SetDisabled(true)
        lby_flick_sw:SetDisabled(true)
        lby_flick_angle:SetDisabled(true)
        lby_flick_freq:SetDisabled(true)
        enable_conditions_sw:SetDisabled(true)
    end

    if shared_check:GetValue() then
        shared_or:SetInvisible(false)
    else
        shared_or:SetInvisible(true)
    end
    if zeus_check:GetValue() then
        zeus_or:SetInvisible(false)
    else
        zeus_or:SetInvisible(true)
    end
    if sniper_check:GetValue() then
        sniper_or:SetInvisible(false)
    else
        sniper_or:SetInvisible(true)
    end
    if smg_check:GetValue() then
        smg_or:SetInvisible(false)
    else
        smg_or:SetInvisible(true)
    end
    if shotgun_check:GetValue() then
        shotgun_or:SetInvisible(false)
    else
        shotgun_or:SetInvisible(true)
    end
    if scout_check:GetValue() then
        scout_or:SetInvisible(false)
    else
        scout_or:SetInvisible(true)
    end
    if rifle_check:GetValue() then
        rifle_or:SetInvisible(false)
    else
        rifle_or:SetInvisible(true)
    end
    if pistol_check:GetValue() then
        pistol_or:SetInvisible(false)
    else
        pistol_or:SetInvisible(true)
    end
    if lmg_check:GetValue() then
        lmg_or:SetInvisible(false)
    else
        lmg_or:SetInvisible(true)
    end
    if hpistol_check:GetValue() then
        hpistol_or:SetInvisible(false)
    else
        hpistol_or:SetInvisible(true)
    end
    if asniper_check:GetValue() then
        asniper_or:SetInvisible(false)
    else
        asniper_or:SetInvisible(true)
    end

    if lby_flick_sw:GetValue() then
        lby_flick_angle:SetInvisible(false)
        lby_flick_freq:SetInvisible(false)
    else
        lby_flick_angle:SetInvisible(true)
        lby_flick_freq:SetInvisible(true)
    end

    if enable_conditions_sw:GetValue() then
        cond_cb:SetInvisible(false)
    else
        cond_cb:SetInvisible(true)
    end

    -- semirage tab
    if semirage_sw:GetValue() == true then
        unsafe_sw:SetDisabled(false)
        unsafe_txt:SetDisabled(false)

        dynamicfov_sw:SetDisabled(false)
        dynamicfov_min:SetDisabled(false)
        dynamicfov_max:SetDisabled(false)

        legit_inverter_kb:SetDisabled(false)
    else
        unsafe_sw:SetDisabled(true)
        unsafe_txt:SetDisabled(true)

        dynamicfov_sw:SetDisabled(true)
        dynamicfov_min:SetDisabled(true)
        dynamicfov_max:SetDisabled(true)

        legit_inverter_kb:SetDisabled(true)
    end

    if dynamicfov_sw:GetValue() then
        dynamicfov_max:SetInvisible(false)
        dynamicfov_min:SetInvisible(false)
    else
        dynamicfov_max:SetInvisible(true)
        dynamicfov_min:SetInvisible(true)
    end

end

-- resets
local backup_reset = gui.Button(misc_gb, "Reset backup states", function() 
    legitaa_kb:SetValue(0)
    r8_fix:SetValue(false)

    legitaa_backup_state = 0
    r8_backup_state = 0

    backup_legitaa.pitch = nil
    backup_legitaa.targets = nil

    backup_r8.fakelag = nil
    backup_r8.fakelatency = nil

    print("reset successful, you can now re-enable your functions or reload your config")
end)

client.AllowListener("bullet_impact")
callbacks.Register("FireGameEvent", anti_brute)

client.AllowListener("round_prestart")
callbacks.Register("FireGameEvent", autobuy)

callbacks.Register("Draw", function() 
    -- ui elements and checks
    sw_checks()
    cond_ui()

    -- visuals
    desync_arrows()
    indicators()

    -- misc functions
    r8_dump_fix()
    aspecratio()
    
    -- rage/semi-rage functions
    dmg_override()
    desync_inverter()
    freestand()
    exploits_toggles()
    resolver_override()
    legit_aa_on_hold()
    desync_jitter()
    dynamicfov()
    clamp()
end)

callbacks.Register("PostMove", function(cmd) 
    rage_aa()
    lby_flick()
end)