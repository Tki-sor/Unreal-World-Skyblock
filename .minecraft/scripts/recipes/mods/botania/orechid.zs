import mods.botania.Orechid;
import crafttweaker.oredict.IOreDictEntry;
#Remove All
var remove as string[] = [
    "oreAluminum",
    "oreIron",
    "oreOsmium",
    "oreMythril",
    "oreInfusedFire",
    "oreTin",
    "oreCertusQuartz",
    "oreMCropsEssence",
    "oreChimerite",
    "oreRuby",
    "oreCinnabar",
    "oreLead",
    "oreSapphire",
    "oreCoal",
    "oreVinteum",
    "oreDiamond",
    "oreTungsten",
    "oreEmerald",
    "orePlatinum",
    "oreDarkIron",
    "oreUranium",
    "oreNickel",
    "oreLapis",
    "oreInfusedEntropy",
    "oreAdamantium",
    "oreInfusedAir",
    "oreInfusedEarth",
    "oreFzDarkIron",
    "oreAmber",
    "oreOlivine",
    "oreMithril",
    "oreSilver",
    "oreInfusedOrder",
    "oreGold",
    "oreGalena",
    "oreBlueTopaz",
    "oreDark",
    "oreInfusedWater",
    "oreZinc",
    "oreQuartzBlack",
    "oreRedstone",
    "oreSulfur",
    "oreCopper",
    "oreYellorite",
    "oreApatite"
];
for re in remove {
    mods.botania.Orechid.removeOre(re);
}

#Add
/*
mods.botania.Orechid.addOre(<ore:botMaterialStone1>, 1000);
mods.botania.Orechid.addOre(<ore:botMaterialStone2>, 1000);
mods.botania.Orechid.addOre(<ore:botMaterialStone3>, 1000);
mods.botania.Orechid.addOre(<ore:botMaterialStone4>, 1000);
mods.botania.Orechid.addOre(<ore:botMaterialStone5>, 1000);
mods.botania.Orechid.addOre(<ore:oreIron>, 1000);
mods.botania.Orechid.addOre(<ore:oreCopper>, 1000);
mods.botania.Orechid.addOre(<ore:oreTin>, 1000);
mods.botania.Orechid.addOre(<ore:oreRedstone>, 1000);
*/

var add as int[IOreDictEntry] = {
    <ore:botMaterialStone1> : 1000,
    <ore:botMaterialStone2> : 1000,
    <ore:botMaterialStone3> : 1000,
    <ore:botMaterialStone4> : 1000,
    <ore:botMaterialStone5> : 1000,
    <ore:oreIron> : 1000,
    <ore:oreCopper> : 1000,
    <ore:oreTin> : 1000,
    <ore:oreRedstone> : 1000
};

for key,value in add {
    mods.botania.Orechid.addOre(key, value);
}