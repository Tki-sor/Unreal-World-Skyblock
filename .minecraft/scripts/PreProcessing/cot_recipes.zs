import scripts.grassUtils.RecipeUtils;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

#锭x2->双重锭
for oreDictEntry in oreDict.entries {
    var oreName as string = oreDictEntry.name;
    var oreFirstItem as IItemStack = oreDictEntry.firstItem;
    if(oreName.startsWith("ingotDouble")) {
        var key as string = oreName.substring("ingotDouble".length);
        var ingot as IOreDictEntry = oreDict.get("ingot" ~ key);
        if (!ingot.empty) {
            recipes.addShaped(oreFirstItem, [[ingot.firstItem],[ingot.firstItem]]);
            recipes.addShapeless(ingot.firstItem * 2, [oreFirstItem]);
        }
    }
}