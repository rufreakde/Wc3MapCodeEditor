gg_trg_Lua_Script_Setup = nil
function InitGlobals()
end

gg_trg_Lua_Script_Setup = nil
function InitGlobals()
end

function MapSetup()
    print("The map has started. Running our functions.")

    RandomNumber = __jarray(1) --This creates a table with the default values set to 1
    PlayerHero = {} --If we don't care about setting the default values then we can just create a table the normal way

    --Run our functions
    HelloWorld() --This displays a very simple text message
    StartEffectOfAbility() --This creates a Trigger with Events/Conditions/Actions
    CreateStartingUnits() --This creates an Archmage at the center of the map
    TableExample() --This shows how our RandomNumber table works
    TimerExample() --This creates a repeating timer that runs every 2.00 seconds
end

function HelloWorld()
    print("Hello World")
end

function StartEffectOfAbility()
    local trigger = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(trigger, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddAction(trigger, function()
        local caster = GetTriggerUnit()
        if GetSpellAbilityId() == FourCC('AHbz') then --AHbz = Archmage's Blizzard Ability
            KillUnit(caster) --We kill the casting unit to show that it worked
            print("Blizzard has been casted.")
        end
    end)
end

function CreateStartingUnits()
    PlayerHero[1] = CreateUnit(Player(0), FourCC('Hamg'), 0, 0, 270) --Create a Archmage for Player 1 at x: 0, y: 0, facing 270 degrees
    SelectHeroSkill(PlayerHero[1], FourCC('AHbz')) --Puts a Skill Point into Blizzard
    print("Archmage has been created.")
end

function TableExample()
    RandomNumber[1] = math.random(1, 100) --Sets Random Number[1] to a random Integer between 1 and 100
    RandomNumber[2] = math.random(1, 100) --Sets Random Number[1] to a random Integer between 1 and 100
    RandomNumber[3] = math.random(1, 100) --Sets Random Number[1] to a random Integer between 1 and 100

    print("Random Number 1:", RandomNumber[1])
    print("Random Number 2:", RandomNumber[2])
    print("Random Number 3:", RandomNumber[3])
    print("Random Number 50:", RandomNumber[50]) --To show that our default value worked. This will always be equal to 1 since we didn't change it
end

function TimerExample()
    local count = 0 --An integer that we will increase by 1 every 2.00 seconds
    local t1 = CreateTimer() --Create our timer
    TimerStart(t1, 2.00, true, function() --true = repeat timer, false = run timer once
        count = count + 1
        print("Count:", count)
        if count == 5 then --We destroy the timer when Count reaches 5 (After 10.00 seconds)
            print("Count has reached 5. Destroy Timer.")
            PauseTimer(t1) --Pausing the timer before destroying it might be unnecessary
            DestroyTimer(t1)
        end
    end)
end
function Trig_Lua_Script_Setup_Actions()
        MapSetup()
end

function InitTrig_Lua_Script_Setup()
    gg_trg_Lua_Script_Setup = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Lua_Script_Setup, 0.00)
    TriggerAddAction(gg_trg_Lua_Script_Setup, Trig_Lua_Script_Setup_Actions)
end

function InitCustomTriggers()
    InitTrig_Lua_Script_Setup()
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("LordaeronSummerDay")
    SetAmbientNightSound("LordaeronSummerNight")
    SetMapMusic("Music", true, 0)
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_003")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, 0.0, -64.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end


function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("Hblm"), -114.1, 103.9, 324.085, FourCC("Hblm"))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreatePlayerUnits()
end

function Trig_Lua_Script_Setup_Actions()
        MapSetup()
end

function InitTrig_Lua_Script_Setup()
    gg_trg_Lua_Script_Setup = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Lua_Script_Setup, 0.00)
    TriggerAddAction(gg_trg_Lua_Script_Setup, Trig_Lua_Script_Setup_Actions)
end

function InitCustomTriggers()
    InitTrig_Lua_Script_Setup()
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCDalaran\\DNCDalaranTerrain\\DNCDalaranTerrain.mdl", "Environment\\DNC\\DNCDalaran\\DNCDalaranUnit\\DNCDalaranUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("DalaranDay")
    SetAmbientNightSound("DalaranNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_003")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, 1856.0, -2560.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end

