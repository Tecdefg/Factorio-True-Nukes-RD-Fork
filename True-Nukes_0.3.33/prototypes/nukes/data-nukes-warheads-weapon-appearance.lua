local create_utils = require("__Warheads__.prototypes.sprite-assembly-util")


local setupWarheadsForWeapon = create_utils.setupWarheadsForWeapon
local tints = create_utils.tints

if weaponTypes["rounds-magazine"] then
  weaponTypes["rounds-magazine"].icons["-atomic-0_1t"] = { "__True-Nukes__/graphics/rounds/yy-atomic-rounds-magazine.png"}
end
if weaponTypes["Schall-sniper-magazine"] then
  weaponTypes["Schall-sniper-magazine"].icons["-atomic-0_1t"] = { "__True-Nukes__/graphics/rounds/yy-atomic-rounds-magazine.png"}
end

local setupForShotgun = {
  type = "shotgun",
  weapon = "shotgun-shell",
  warheads = {}
}
setupForShotgun.warheads["-atomic-0_1t"] = {style = 1, tints = {tints.californium}}

setupWarheadsForWeapon(setupForShotgun)

local setupForShotgunBuck = {
  type = "shotgun",
  weapon = "shotgun-shell-buckshot",
  warheads = {}
}
setupForShotgunBuck.warheads["-atomic-0_1t"] = {style = 3, tints = {tints.nothing, tints.californium}}

setupWarheadsForWeapon(setupForShotgunBuck)


local setupForCannon = {
  type = "cannon",
  weapon = "cannon-shell",
  warheads = {}
}
setupForCannon.warheads["-atomic-0_5t"] = {style = 3, tints = {tints.californium}}

setupWarheadsForWeapon(setupForCannon)

if mods["SchallTankPlatoon"] then
  setupForCannon.weapon = "cannon-H1-shell"
  setupWarheadsForWeapon(setupForCannon)
  setupForCannon.weapon = "cannon-H2-shell"
  setupWarheadsForWeapon(setupForCannon)
end


local setupForRocket = {
  type = "rocket",
  weapon = "small-rocket",
  warheads = {}
}
setupForRocket.warheads["-atomic-2t"] = {style = 3, tints = {tints.californium, tints.californium}}

setupWarheadsForWeapon(setupForRocket)

local setupForBigRocket = {
  type = "rocket_big",
  weapon = "big-rocket",
  warheads = {}
}

setupForBigRocket.warheads["-atomic-4t"] = {style = 2, tints = {tints.uraniumLive}}

setupWarheadsForWeapon(setupForBigRocket)


local setupForArtillery = {
  type = "artillery",
  weapon = "artillery-shell",
  warheads = {}
}

setupForArtillery.warheads["-atomic-4t"] = {style = 2, tints = {tints.californium}}
setupForArtillery.warheads["-atomic-8t"] = {style = 3, tints = {tints.californium, tints.californium}}
setupForArtillery.warheads["-atomic-20t"] = {style = 2, tints = {tints.uraniumLive}}

setupForArtillery.warheads["-atomic-500t"] = {style = 3, tints = {tints.uraniumLive, tints.uraniumLive}}
setupForArtillery.warheads["-atomic-1kt"] = {style = 4, tints = {tints.uraniumLive, tints.uraniumLive, tints.uraniumLive}}

setupForArtillery.warheads["-atomic-15kt"] = {style = 5, tints = {tints.uraniumLive, tints.uraniumLive}}

setupForArtillery.warheads["-atomic-2-stage-15kt"] = {style = 5, tints = {tints.uraniumLive, tints.nothing}}

setupForArtillery.warheads["-atomic-2-stage-100kt"] = {style = 5, tints = {tints.uraniumLive, tints.tritium}}
setupForArtillery.warheads["-1Mt"] = {style = 5, tints = {tints.uraniumLive, tints.tritium}}
setupForArtillery.warheads["-5Mt"] = {style = 5, tints = {tints.uraniumLive, tints.tritium}}
setupForArtillery.warheads["-10Mt"] = {style = 5, tints = {tints.uraniumLive, tints.tritium}}

setupWarheadsForWeapon(setupForArtillery)













