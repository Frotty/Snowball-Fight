//===========================================================================
// 
// Snowball fight 1.33c
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Jan 12 00:02:59 2019
//   Map Author: Frotty
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_arenabounds         = null
    rect                    gg_rct_leftspawn           = null
    rect                    gg_rct_rightspawn          = null
    trigger                 gg_trg_Untitled_Trigger_005 = null
    trigger                 gg_trg_Untitled_Trigger_002 = null
    trigger                 gg_trg_Untitled_Trigger_001 = null
    unit                    gg_unit_e002_0011          = null
    unit                    gg_unit_e002_0012          = null
    unit                    gg_unit_ncop_0023          = null
    unit                    gg_unit_ncop_0022          = null
    unit                    gg_unit_ncop_0021          = null
    unit                    gg_unit_ncop_0024          = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'n000', -2688.0, 4096.0, 270.000 )
    call SetUnitColor( u, ConvertPlayerColor(0) )
    set u = CreateUnit( p, 'ncp3', -2240.0, 4096.0, 270.000 )
endfunction

//===========================================================================
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p = Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'n002', 2688.0, 4096.0, 270.000 )
    call SetUnitColor( u, ConvertPlayerColor(6) )
    set u = CreateUnit( p, 'ncp3', 2240.0, 4096.0, 270.000 )
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncop_0021 = CreateUnit( p, 'ncop', 0.0, 1536.0, 270.000 )
    set gg_unit_ncop_0022 = CreateUnit( p, 'ncop', -1536.0, 5632.0, 270.000 )
    set gg_unit_ncop_0023 = CreateUnit( p, 'ncop', 1536.0, 2560.0, 270.000 )
    set gg_unit_ncop_0024 = CreateUnit( p, 'ncop', 0.0, 6656.0, 270.000 )
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_e002_0011 = CreateUnit( p, 'e002', 3.3, 6837.5, 263.710 )
    call SetUnitColor( gg_unit_e002_0011, ConvertPlayerColor(0) )
    set gg_unit_e002_0012 = CreateUnit( p, 'e002', 6.6, 1314.2, 82.130 )
    call SetUnitColor( gg_unit_e002_0012, ConvertPlayerColor(0) )
    set u = CreateUnit( p, 'n003', 4876.1, -69.4, 261.760 )
    set u = CreateUnit( p, 'n004', 3959.9, 6244.1, 32.707 )
    set u = CreateUnit( p, 'n004', 3544.8, 6584.6, 305.506 )
    set u = CreateUnit( p, 'nsno', 2400.0, 1712.8, 6.229 )
    set u = CreateUnit( p, 'nsno', 1454.1, 4638.5, 53.417 )
    set u = CreateUnit( p, 'nsno', -294.3, 2017.6, 301.968 )
    set u = CreateUnit( p, 'nsno', -698.6, 8183.7, 31.620 )
    set u = CreateUnit( p, 'nsno', -1601.0, 6168.1, 184.631 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0(  )
    call CreateBuildingsForPlayer6(  )
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings(  )
    call CreatePlayerBuildings(  )
    call CreateNeutralPassive(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_arenabounds = Rect( -3136.0, 672.0, 3104.0, 7200.0 )
    set gg_rct_leftspawn = Rect( -2432.0, 3840.0, -2048.0, 4352.0 )
    set gg_rct_rightspawn = Rect( 2048.0, 3840.0, 2432.0, 4352.0 )
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Untitled Trigger 005
//===========================================================================
function Trig_Untitled_Trigger_005_Actions takes nothing returns nothing
    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_189", "TRIGSTR_190", "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOff.blp" )
    call QuestSetDiscoveredBJ( GetLastCreatedQuestBJ(), true )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_005 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_005 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_005, function Trig_Untitled_Trigger_005_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 002
//===========================================================================
function Trig_Untitled_Trigger_002_Func001A takes nothing returns nothing
    call CreateFogModifierRectBJ( true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, GetPlayableMapRect() )
endfunction

function Trig_Untitled_Trigger_002_Actions takes nothing returns nothing
    call ForForce( GetPlayersAll(), function Trig_Untitled_Trigger_002_Func001A )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_002 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_002 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_002, function Trig_Untitled_Trigger_002_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 001
//===========================================================================
function Trig_Untitled_Trigger_001_Actions takes nothing returns nothing
    call ShowUnitHide( gg_unit_e002_0011 )
    call ShowUnitHide( gg_unit_e002_0012 )
    call ShowUnitHide( gg_unit_ncop_0023 )
    call ShowUnitHide( gg_unit_ncop_0022 )
    call ShowUnitHide( gg_unit_ncop_0021 )
    call ShowUnitHide( gg_unit_ncop_0024 )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_001 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_001, function Trig_Untitled_Trigger_001_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Untitled_Trigger_005(  )
    call InitTrig_Untitled_Trigger_002(  )
    call InitTrig_Untitled_Trigger_001(  )
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute( gg_trg_Untitled_Trigger_005 )
    call ConditionalTriggerExecute( gg_trg_Untitled_Trigger_002 )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call ForcePlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call ForcePlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

    // Player 2
    call SetPlayerStartLocation( Player(2), 2 )
    call ForcePlayerStartLocation( Player(2), 2 )
    call SetPlayerColor( Player(2), ConvertPlayerColor(2) )
    call SetPlayerRacePreference( Player(2), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(2), false )
    call SetPlayerController( Player(2), MAP_CONTROL_USER )

    // Player 3
    call SetPlayerStartLocation( Player(3), 3 )
    call ForcePlayerStartLocation( Player(3), 3 )
    call SetPlayerColor( Player(3), ConvertPlayerColor(3) )
    call SetPlayerRacePreference( Player(3), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(3), false )
    call SetPlayerController( Player(3), MAP_CONTROL_USER )

    // Player 4
    call SetPlayerStartLocation( Player(4), 4 )
    call ForcePlayerStartLocation( Player(4), 4 )
    call SetPlayerColor( Player(4), ConvertPlayerColor(4) )
    call SetPlayerRacePreference( Player(4), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(4), false )
    call SetPlayerController( Player(4), MAP_CONTROL_USER )

    // Player 5
    call SetPlayerStartLocation( Player(5), 5 )
    call ForcePlayerStartLocation( Player(5), 5 )
    call SetPlayerColor( Player(5), ConvertPlayerColor(5) )
    call SetPlayerRacePreference( Player(5), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(5), false )
    call SetPlayerController( Player(5), MAP_CONTROL_USER )

    // Player 6
    call SetPlayerStartLocation( Player(6), 6 )
    call ForcePlayerStartLocation( Player(6), 6 )
    call SetPlayerColor( Player(6), ConvertPlayerColor(6) )
    call SetPlayerRacePreference( Player(6), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(6), false )
    call SetPlayerController( Player(6), MAP_CONTROL_USER )

    // Player 7
    call SetPlayerStartLocation( Player(7), 7 )
    call ForcePlayerStartLocation( Player(7), 7 )
    call SetPlayerColor( Player(7), ConvertPlayerColor(7) )
    call SetPlayerRacePreference( Player(7), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(7), false )
    call SetPlayerController( Player(7), MAP_CONTROL_USER )

    // Player 8
    call SetPlayerStartLocation( Player(8), 8 )
    call ForcePlayerStartLocation( Player(8), 8 )
    call SetPlayerColor( Player(8), ConvertPlayerColor(8) )
    call SetPlayerRacePreference( Player(8), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(8), false )
    call SetPlayerController( Player(8), MAP_CONTROL_USER )

    // Player 9
    call SetPlayerStartLocation( Player(9), 9 )
    call ForcePlayerStartLocation( Player(9), 9 )
    call SetPlayerColor( Player(9), ConvertPlayerColor(9) )
    call SetPlayerRacePreference( Player(9), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(9), false )
    call SetPlayerController( Player(9), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_238
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerState( Player(0), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerState( Player(1), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(2), 0 )
    call SetPlayerState( Player(2), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(3), 0 )
    call SetPlayerState( Player(3), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(4), 0 )
    call SetPlayerState( Player(4), PLAYER_STATE_ALLIED_VICTORY, 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(3), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(3), true )

    // Force: TRIGSTR_239
    call SetPlayerTeam( Player(5), 1 )
    call SetPlayerState( Player(5), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(6), 1 )
    call SetPlayerState( Player(6), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(7), 1 )
    call SetPlayerState( Player(7), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(8), 1 )
    call SetPlayerState( Player(8), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(9), 1 )
    call SetPlayerState( Player(9), PLAYER_STATE_ALLIED_VICTORY, 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(8), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(8), true )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 4 )
    call SetStartLocPrio( 0, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 1, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 2, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 3, 4, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 1, 4 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 1, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 2, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 3, 4, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 2, 4 )
    call SetStartLocPrio( 2, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 2, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 3, 4, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 3, 4 )
    call SetStartLocPrio( 3, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 3, 4, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 4, 4 )
    call SetStartLocPrio( 4, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 3, 3, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 5, 4 )
    call SetStartLocPrio( 5, 0, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 1, 7, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 2, 8, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 3, 9, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 6, 4 )
    call SetStartLocPrio( 6, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 1, 7, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 2, 8, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 3, 9, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 7, 4 )
    call SetStartLocPrio( 7, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 1, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 2, 8, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 3, 9, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 8, 4 )
    call SetStartLocPrio( 8, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 8, 1, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 8, 2, 7, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 8, 3, 9, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 9, 4 )
    call SetStartLocPrio( 9, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 9, 1, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 9, 2, 7, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 9, 3, 8, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    local weathereffect we
    call SetCameraBounds( -5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call SetTerrainFogEx( 0, 3500.0, 25000.0, 0.100, 0.502, 0.502, 0.502 )
    set we = AddWeatherEffect( Rect(-6144.0,-2048.0,6144.0,10240.0), 'SNls' )
    call EnableWeatherEffect( we, true )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "NorthrendDay" )
    call SetAmbientNightSound( "NorthrendNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateRegions(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )
    call RunInitializationTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_007" )
    call SetMapDescription( "TRIGSTR_009" )
    call SetPlayers( 10 )
    call SetTeams( 10 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -2240.0, 4096.0 )
    call DefineStartLocation( 1, -2240.0, 4096.0 )
    call DefineStartLocation( 2, -2240.0, 4096.0 )
    call DefineStartLocation( 3, -2240.0, 4096.0 )
    call DefineStartLocation( 4, -2240.0, 4096.0 )
    call DefineStartLocation( 5, 2240.0, 4096.0 )
    call DefineStartLocation( 6, 2240.0, 4096.0 )
    call DefineStartLocation( 7, 2240.0, 4096.0 )
    call DefineStartLocation( 8, 2240.0, 4096.0 )
    call DefineStartLocation( 9, 2240.0, 4096.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

