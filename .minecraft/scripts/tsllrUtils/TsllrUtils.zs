#priority 28950

/*
Author:Tki_sor
Version:1.4.0

I refer to someone else's document.
https://github.com/ProjectHDS/Herodotus
*/

import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.event.CommandEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.command.ICommandSender;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerLoggedOutEvent;
import crafttweaker.command.ICommand;

static isInvalid as bool = false;
static invalidMods as string[] = [
    "torcherino",
    "xijun",
    "calculator",
    "bacteria",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "decon",
    "uncraftingtable",
    "cyclic",
    "deconstruction",
    "grimpack",
    "avaritia",
    "xray",
    "oreping",
    "reinforcedtools",
    "scenter",
    "oresniffer",
    "eplus",
    "stm",
    "ISM",
    "igauntlet",
    "tlsywen",
    "LoliPickaxe",
    "manaita_plus",
    "flammpfeil.slashblade",
    "deconstruction",
    "twilightforest",
    "bacterium",
    "projecte"
];

for i in invalidMods{
    if(loadedMods in i){
        isInvalid = true;
        print("[ModLoader] Found invalid mods, no gameplay scripts will be loaded anymore.");
        break;
    }
}

//import scripts.tsllrUtils.TsllrUtils.isInvalid;
if(!isInvalid){
    print("[ModLoader] The check for invalid mods has been completed, and all scripts will now be loaded.");
}

//import scripts.tsllrUtils.TsllrUtils;
//TsllrUtils.setFirstItem(od as IOreDictEntry, firstitem as IItemStack);
function setFirstItem(firstitem as IItemStack, od as IOreDictEntry) {
    var item = od.items;
    for i in item {
        od.remove(i);
    }
    od.add(firstitem);
    for i in item {
        od.add(i);
    }
}

//import scripts.tsllrUtils.TsllrUtils;
//TsllrUtils.18nTweak(key as string, langus as string, langcn as string);
function i18nTweak(key as string, langus as string, langcn as string) {
game.setLocalization("en_us",key,langus);
game.setLocalization("zh_cn",key,langcn);
}

function setOnlyItem(onlyitem as IItemStack, od as IOreDictEntry) {
    var items = od.items;
    for item in items {
        if(!onlyitem.matches(item)) {
            mods.jei.JEI.removeAndHide(item);
        }
    }
}

function setOnlyFirstItem(onlyFirstItem as IItemStack, od as IOreDictEntry) {
    var items = od.items;
    for item1 in items {
        if(!onlyFirstItem.matches(item1)) {
            od.remove(item1);
            mods.jei.JEI.removeAndHide(item1);
        }
    }
    for item2 in items {
        if(!onlyFirstItem.matches(item2)) {
            od.add(item2);
        }
    }
}

setOnlyItem(<nuclearcraft:ore>, <ore:oreCopper>);
setOnlyItem(<nuclearcraft:ore:2>, <ore:oreLead>);
setOnlyItem(<nuclearcraft:ore:1>, <ore:oreTin>);
setOnlyItem(<thermalfoundation:ore:4>, <ore:oreAluminum>);
setOnlyItem(<thermalfoundation:ore:5>, <ore:oreNickel>);
setOnlyItem(<magneticraft:ores:2>, <ore:oreCobalt>);
setOnlyItem(<thermalfoundation:ore:2>, <ore:oreSilver>);
setOnlyItem(<nuclearcraft:ore:4>, <ore:oreUranium>);
setOnlyItem(<nuclearcraft:ore:7>, <ore:oreMagnesium>);
setOnlyItem(<thermalfoundation:ore:7>, <ore:oreIridium>);
