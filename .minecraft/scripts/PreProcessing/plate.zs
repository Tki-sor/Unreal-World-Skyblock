import scripts.grassUtils.RecipeUtils;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

#移除所有金属板工作台合成
for oreDictEntry in oreDict.entries {
    var oreName as string = oreDictEntry.name;
    var oreFirstItem as IItemStack = oreDictEntry.firstItem;
    if(oreName.startsWith("plate")) {
            recipes.remove(oreFirstItem);
    }
}