import scripts.tsllrUtils.TsllrUtils;
import mods.pyrotech.PitKiln;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;


#镁
PitKiln.addRecipe("tiny_magnesium_kiln_1", <ore:dustTinyMagnesium>.firstItem, <ore:crushedGranite>.firstItem, 5 * 60 * 20, 0.50, [
    <pyrotech:rock>,
    <ore:dustTinyMagnesium>.firstItem
]);
StoneKiln.addRecipe("tiny_magnesium_kiln_2", <ore:dustTinyMagnesium>.firstItem, <ore:crushedGranite>.firstItem, 3.5 * 60 * 20, 0.3, [
    <pyrotech:rock>,
    <ore:dustTinyMagnesium>.firstItem
]);
BrickKiln.addRecipe("tiny_magnesium_kiln_3", <ore:dustTinyMagnesium>.firstItem, <ore:crushedGranite>.firstItem, 2 * 60 * 20, 0.15, [
    <pyrotech:rock>,
    <ore:dustTinyMagnesium>.firstItem
]);

#方镁钒砖
PitKiln.addRecipe("brick_caminite_1", <embers:brick_caminite>, <embers:blend_caminite>, 2 * 60 * 20, 0.3, [
    <pyrotech:rock>
]);
StoneKiln.addRecipe("brick_caminite_2", <embers:brick_caminite>, <embers:blend_caminite>, 1 * 60 * 20, 0.15, [
    <pyrotech:rock>
]);
BrickKiln.addRecipe("brick_caminite_3", <embers:brick_caminite>, <embers:blend_caminite>, 0.5 * 60 * 20, 0.05, [
    <pyrotech:rock>
]);