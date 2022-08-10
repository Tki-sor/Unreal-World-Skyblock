import scripts.tsllrUtils.TsllrUtils;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

#bot凝矿兰
<ore:botMaterialStone1>.add(<minecraft:cobblestone>);
<ore:botMaterialStone2>.add(<minecraft:stone:1>);
<ore:botMaterialStone3>.add(<minecraft:stone:3>);
<ore:botMaterialStone4>.add(<minecraft:stone:5>);
<ore:botMaterialStone5>.add(<minecraft:mossy_cobblestone>);

var oreDictAdd as IOreDictEntry[IItemStack] = {
    <pyrotech:material> : <ore:dustAsh>
};



#setFirstItem
var firstItem as IOreDictEntry[IItemStack] = {

};


for key,value in oreDictAdd {
    value.add(key);
}

for key,value in firstItem {
    TsllrUtils.setOnlyFirstItem(key, value);
}
