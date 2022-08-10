import scripts.grassUtils.RecipeUtils;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

for oreDictEntry in oreDict.entries {
    var oreName as string = oreDictEntry.name;
    var oreFirstItem as IItemStack = oreDictEntry.firstItem;
    if(oreName.startsWith("dustTiny")) {
        var key as string = oreName.substring("dustTiny".length);
        var dustSmall as IOreDictEntry = oreDict.get("dustSmall" ~ key);
        var dust as IOreDictEntry = oreDict.get("dust" ~ key);
        if (!dustSmall.empty && !dust.empty) {
            recipes.remove(oreFirstItem);
            recipes.remove(dust.firstItem);
            recipes.addShaped(dustSmall.firstItem, RecipeUtils.createFull3(oreFirstItem));
            recipes.addShaped(dust.firstItem, RecipeUtils.createFull3(dustSmall.firstItem));
        }

    }
}