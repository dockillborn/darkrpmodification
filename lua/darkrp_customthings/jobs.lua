--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

/*TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})*/

TEAM_NURSE = DarkRP.createJob("Nurse", {
    color = Color(47, 79, 79, 255),
    model = {
        "models/player/portal/Male_02_Medic.mdl",
        "models/player/portal/Male_04_Medic.mdl",
        "models/player/portal/Male_05_Medic.mdl",
        "models/player/portal/Male_06_Medic.mdl",
        "models/player/portal/Male_07_Medic.mdl",
        "models/player/portal/Male_08_Medic.mdl",
        "models/player/portal/Male_09_Medic.mdl"
    },
    description = [[With your medical knowledge you work to restore players to full health.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit_advanced", "defibrillator_advanced"},
    command = "nurse",
    max = 3,
    salary = GAMEMODE.Config.normalsalary * 1.112,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = Color(25, 25, 170, 255),
    model = {
        "models/taggart/police01/male_01.mdl",
        "models/taggart/police01/male_02.mdl",
        "models/taggart/police01/male_03.mdl",
        "models/taggart/police01/male_04.mdl",
        "models/taggart/police01/male_05.mdl",
        "models/taggart/police01/male_06.mdl",
        "models/taggart/police01/male_07.mdl",
        "models/taggart/police01/male_08.mdl",
        "models/taggart/police01/male_09.mdl",
    },
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"weapon_glock2", "customhq_the_pepper_spray", "customhq-stungun", "customhq-checker", "door_ram", }, // "arrest_stick", "unarrest_stick"
    command = "police",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_CHIEF = DarkRP.createJob("Police Chief", {
    color = Color(20, 20, 255, 255),
    model = "models/player/combine_soldier_prisonguard.mdl",
    description = [[The Chief controls all police units.
        Coordinate the police force to enforce law in the city.
        Hit a player with arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        Type /wanted <name> to alert the public to the presence of a criminal.
        Type /jailpos to set the Jail Position]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.67,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = "models/player/breen.mdl",
    description = [[The Mayor of the city creates laws to govern the city.
    If you are the mayor you may create and accept warrants.
    Type /wanted <name>  to warrant a player.
    Type /jailpos to set the Jail Position.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 2.67,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
})

TEAM_FIREFIGHTERCHIEF = DarkRP.createJob("Fire Fighter Chief", {
	color = Color(255, 165, 51, 255),
	model = "models/player/monk.mdl",
	description = [[Fire fighter chief. You are in command for all fire fighters and must take control over situations that occur.]],
	weapons = {"fire_extinguisher", "fire_axe"},
	command = "firefighterchief",
	category = "Fire Department",
    salary = GAMEMODE.Config.normalsalary * 1.3,
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_FIREFIGHTER = DarkRP.createJob("Fire Fighter", {
	color = Color(255, 165, 51, 255),
	model = "models/player/monk.mdl",
	description = [[You have to turn off fires.]],
	weapons = {"fire_extinguisher", "fire_axe"},
	command = "firefighter",
	category = "Fire Department",
    salary = GAMEMODE.Config.normalsalary * 1.112,
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MECHANIC = DarkRP.createJob("Mechanic", {
    color = Color(25, 25, 170, 255),
    model = {
        "models/player/odessa.mdl"
    },
    description = [[Tows any vehicle in the city.]],
    weapons = {},
    command = "mechanical_job",
    salary = GAMEMODE.Config.normalsalary * 1.112,
    max = 2,
    salary = 200,
    admin = 0,
    vote = false
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
