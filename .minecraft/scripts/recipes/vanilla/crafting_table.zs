import scripts.grassUtils.RecipeUtils;

#木棍
RecipeUtils.recipeTweak(false, <minecraft:stick> * 2,
[[<ore:plankWood>],
[<ore:plankWood>]]);

#工作台
RecipeUtils.recipeTweak(true, <minecraft:crafting_table>,
[[<ore:plankWood>, <ore:plankWood>],
[<ore:logWood>, <ore:logWood>]]);