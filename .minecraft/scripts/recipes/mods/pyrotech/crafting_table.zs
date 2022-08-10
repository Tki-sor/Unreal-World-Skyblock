import scripts.grassUtils.RecipeUtils;

#砧板
RecipeUtils.recipeTweak(false, <pyrotech:chopping_block>,
[[<ore:logWood>]]);
recipes.addShapeless(<pyrotech:chopping_block> * 2,
[<ore:logWood>, <ore:toolAxe>.transformDamage()]);

#晾干架
RecipeUtils.recipeTweak(true, <pyrotech:drying_rack:1>,
[[<pyrotech:drying_rack>, <pyrotech:drying_rack>, <pyrotech:drying_rack>],
[<minecraft:stick>, <ore:twine>, <minecraft:stick>],
[<minecraft:stick>, null, <minecraft:stick>]]);

#耐火粘土
RecipeUtils.recipeTweak(true, <pyrotech:material:4> * 5,
[[<ore:clayPorcelain>, <ore:dustAsh>, <ore:clayPorcelain>],
[<pyrotech:material:8>, <pyrotech:material:3>, <pyrotech:material:8>],
[<ore:clayPorcelain>, <ore:dustAsh>, <ore:clayPorcelain>]]);
recipes.addShaped(<pyrotech:material:4>, RecipeUtils.createFull2(<pyrotech:material:35>));