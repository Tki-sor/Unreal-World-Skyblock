import scripts.grassUtils.RecipeUtils;
import scripts.tsllrUtils.TsllrUtils;

#未烧制的瓷土
RecipeUtils.recipeTweak(false, <ceramics:unfired_clay:4>,
[[<minecraft:dye:15>, <ore:dustWood>, <ore:itemClay>]]);
recipes.addShaped(<ceramics:unfired_clay:4>,
[[<foundry:small_clay>, <foundry:small_clay>],
[<foundry:small_clay>, <foundry:small_clay>]]);

#未烧制的粘土桶
RecipeUtils.recipeTweak(true, <ceramics:unfired_clay>,
[[<ore:clayPorcelain>, null, <ore:clayPorcelain>],
[null, <ore:clayPorcelain>, <ore:clayPorcelain>]]);