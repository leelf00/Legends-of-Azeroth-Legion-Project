-- fix spawn location npc Chelon ID:72045 --
delete from `creature` where `guid`= 146728969;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES
('146728969', '72045', '870', '6757', '6832', '1', '65535', '', '0', '0', '-666.991', '-4677.7', '4.735', '5.80744', '300', '0', '0', '241542', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- fix missing data in `creature_template`, ` creature_template_wdb` and spawn location npc Zeacua ID:72745 --
delete from `creature` where `id`= 72745;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES 
('146729934', '72745', '870', '6757', '6842', '1', '65535', '', '0', '0', '-514.22', '-5346.18', '124.971', '3.27585', '300', '0', '0', '2175', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
delete from `creature_template` where `entry`= 72745;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `MaxVisible`, `ScriptName`) VALUES 
('72745', '0', '90', '90', '181', '85', '90', '0', '0', '4', '16', '0', '0', '1', '1.14286', '1.14286', '1', '1268', '1752', '0', '3', '1.5', '2000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '72045', '0', '72045', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '0', '512', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '');
delete from `creature_template_wdb` where `entry`= 72745;
INSERT INTO `creature_template_wdb` (`Entry`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `Title`, `TitleAlt`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `Classification`, `KillCredit1`, `KillCredit2`, `VignetteID`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `HpMulti`, `PowerMulti`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `MovementInfoID`, `RequiredExpansion`, `FlagQuest`, `VerifiedBuild`) VALUES
('72745', 'Zeacua', '', '', '', '', '', '', '', '', '', '', '2097224', '0', '7', '0', '2', '73983', '0', '88', '51194', '0', '0', '0', '25', '1', '0', '105715', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '22566');

-- fix attack power for npc ID:72045, 71864, 72970, 72775, 73704, 73170, 72909, 71919, 72049, 72844, 73175, 73171, 72877, 73174, 73282, 73173, 72808, 72745, 72193, 73279, 72841, 73281, 73169, 73167, 72048 --
update `creature_template` set `attackpower`= 3 where `entry` in(72045, 71864, 72970, 72775, 73704, 73170, 72909, 71919, 72049, 72844, 73175, 73171, 72877, 73174, 73282, 73173, 72808, 72745, 72193, 73279, 72841, 73281, 73169, 73167, 72048);

-- fix spawn time for npc ID:72045, 71864, 72970, 72775, 73704, 73170, 72909, 71919, 72049, 72844, 73175, 73171, 72877, 73174, 73282, 73173, 72808, 72745, 72193, 73279, 72841, 73281, 73169, 73167, 72048 --
update `creature` set `spawntimesecs`=1800 where `id` in(72045, 71864, 72970, 72775, 73704, 73170, 72909, 71919, 72049, 72844, 73175, 73171, 72877, 73174, 73282, 73173, 72808, 72745, 72193, 73279, 72841, 73281, 73169, 73167, 72048);

-- fix spawn location, spawn time and attac kpower for npc Houlong ID:73167 --
update `creature` set `position_x`= -384.76, `position_y`= -5743.72, `position_z`= 115.47, `orientation`= 2.93 where `id`=73167;