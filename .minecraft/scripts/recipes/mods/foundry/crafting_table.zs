import scripts.grassUtils.RecipeUtils;

#基础耐火框架
RecipeUtils.recipeTweak(true, <foundry:componentblock:2>,
[[<minecraft:brick_block>, <ceramics:clay_hard>, <minecraft:brick_block>],
[<ceramics:clay_hard>, <ore:gearStone>, <ceramics:clay_hard>],
[<minecraft:brick_block>, <ceramics:clay_hard>, <minecraft:brick_block>]]);

#燃烧加热器
RecipeUtils.recipeTweak(true, <foundry:burner_heater>,
[[<ore:plateClay>, <ore:plateClay>, <ore:plateClay>],
[<ore:plateClay>, <foundry:componentblock:2>, <ore:plateClay>],
[<ore:plateClay>, <skyresources:dirtfurnace>, <ore:plateClay>]]);