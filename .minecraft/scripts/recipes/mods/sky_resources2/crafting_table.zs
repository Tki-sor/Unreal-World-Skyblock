import scripts.grassUtils.RecipeUtils;

#抽水器
RecipeUtils.recipeTweak(true, <skyresources:waterextractor>,
[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[null, <ore:stickWood>, <ore:plankWood>]]);

#木制加热部件
RecipeUtils.recipeTweak(true, <skyresources:heat>,
[[<ore:plankWood>, <ore:itemClay>, <ore:plankWood>],
[<ore:plankWood>, <ore:gunpowder>, <ore:plankWood>],
[<ore:plankWood>, <ore:itemClay>, <ore:plankWood>]]);

#泥炉
RecipeUtils.recipeTweak(true, <skyresources:dirtfurnace>,
[[<ore:dirt>, <ore:dirt>, <ore:dirt>],
[<ore:dirt>, <skyresources:heat>, <ore:dirt>],
[<ore:dirt>, <ore:dirt>, <ore:dirt>]]);