import scripts.grassUtils.RecipeUtils;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

#双重锭->板
for oreDictEntry in oreDict.entries {
    var oreName as string = oreDictEntry.name;
    var oreFirstItem as IItemStack = oreDictEntry.firstItem;
    if(oreName.startsWith("ingotDouble")) {
        var key as string = oreName.substring("ingotDouble".length);
        var plate as IOreDictEntry = oreDict.get("plate" ~ key);
        if (!plate.empty) {
            mods.magneticraft.CrushingTable.addRecipe(oreFirstItem, plate.firstItem);
        }
    }
}



