#priority 2001
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

//registerParts
var registerPartsArray as string[] = [
    "ingotDouble"
];
var register as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("registerPart");
for name in registerPartsArray{
    register.registerNormalPart(name, "item", false);
}


//util functions

function i18nTweak(key as string, langus as string, langcn as string) {
game.setLocalization("en_us",key,langus);
game.setLocalization("zh_cn",key,langcn);
}

//partsArrays
static allPartsMap as string[][int] = {
    /*allPartsAsExample
    "nugget", "beam", "dirty_dust", "cluster", "ring",
    "rod", "crystal", "plate", "chipped_gem", "centrifuged_ore",
    "ore_rock", "casing", "missing", "dense_plate",
    "block", "shard", "molten", "flawless_gem", "dust",
    "crushed_ore", "ore", "small_dust", "long_rod", "small_spring",
    "clump", "flawed_gem", "large_spring", "purified_ore", "poor_ore",
    "minecart", "armor", "round", "ore_sample", "dense_ore",
    "bolt", "ingot", "tiny_dust", "gear"
    */
    0 : [//coloredOre
        "ingotDouble"
    ],
    1 : [
        "plate", "small_dust", "ingotDouble"
    ],
    2: [
        "plate", "tiny_dust", "ingotDouble"
    ]
};

//materialArrays
// REMEMBER TO UPDATE CRTLIB AFTER MAKING CHANGES TO THIS MAP!!!
static allMaterialMap as int[string][int] = {
    0 : {
        "Iron" : 0xffffff,
        "Gold" : 0xffff14,
        "Naquadah" : 0x2b2b2b,
        "Cupronickel" : 0xc2806d,
        "Electrum" : 0xf6f660,
        "RoseGold" : 0xf6de1d,
        "NiobiumNitride" : 0x172017,
        "Invar" : 0x9a9a67,
        "SterlingSilver" : 0xf1d4d9,
        "NaquadahEnriched" : 0x333333,
        "Kanthal" : 0xa6b3bf,
        "BismuthBronze" : 0x4e6161,
        "NiobiumTitanium" : 0x171720,
        "Beryllium" : 0x559a55,
        "Rhodium" : 0xd40c55,
        "Europium" : 0x1bdada,
        "Copper" : 0xf66000,
        "Aluminium" : 0x659ebe,
        "Chrome" : 0xe2bdd0,
        "Iridium" : 0x8ac3c3,
        "Lead" : 0x6d4e6d,
        "Platinum" : 0xf6f6c1,
        "Uranium" : 0x2bcd2b,
        "Uranium235" : 0x43f143,
        "Tantalum" : 0x676778,
        "Molybdenum" : 0xaeaed4,
        "Cobalt" : 0x4444d6,
        "Palladium" : 0xd2bebe,
        "Silicon" : 0x37374a,
        "Naquadria" : 0x1d1d1d,
        "Ruthenium" : 0x4da6c6,
        "Thorium" : 0x001d00,
        "Neodymium" : 0x555555,
        "Plutonium241" : 0xf14343,
        "Titanium" : 0xbc89cd,
        "Tungsten" : 0x2b2b2b,
        "Nichrome" : 0xafb0d2,
        "Nickel" : 0xababd6,
        "Americium" : 0x256f61,
        "Magnalium" : 0x9c94c7,
        "Manganese" : 0xa2b292,
        "Tin" : 0xacacac,
        "Zinc" : 0xc9c9d6,
        "Osmium" : 0x2b2bda,
        "Silver" : 0xd4d4f6,
        "Brass" : 0xda9a00,
        "WroughtIron" : 0xab9a9a,
        "TinAlloy" : 0xababab,
        "Duranium" : 0x48a9a9,
        "Osmiridium" : 0x5555da,
        "IndiumGalliumPhosphide" : 0x7d6d94,
        "AnnealedCopper" : 0xf68839,
        "YttriumBariumCuprate" : 0x4a3b41,
        "Tritanium" : 0x520000,
        "StainlessSteel" : 0xc1c1d4,
        "Neutronium" : 0xc3c3c3,
        "Trinium" : 0x946fb6,
        "Ultimet" : 0xaeaede,
        "EnrichedNaquadahTriniumEuropiumDuranide" : 0x6b8062,
        "BatteryAlloy" : 0x7a617d,
        "GalliumArsenide" : 0x7d7d7d,
        "TungstenCarbide" : 0x61708a,
        "Ruridit" : 0x67b87a,
        "VanadiumGallium" : 0x7b7b87,
        "Steel" : 0x6d6d6d,
        "UraniumRhodiumDinaquadide" : 0x080808,
        "IndiumTinBariumTitaniumCuprate" : 0x834100,
        "Gallium" : 0xd4d4f6,
        "Bronze" : 0xda6d00,
        "BlackBronze" : 0x4e2761,
        "Darmstadtium" : 0x44644c,
        "Trinaquadalloy" : 0x271730,
        "NaquadahAlloy" : 0x222222,
        "DamascusSteel" : 0x5e5e5e,
        "Zeron100" : 0x2e5382,
        "HastelloyX" : 0x5b8bc2,
        "HastelloyC276" : 0xb13131,
        "Stellite100" : 0xd6d6f6,
        "MolybdenumDisilicide" : 0x5b4e8b,
        "HslaSteel" : 0x6d6d6d,
        "TitaniumCarbide" : 0x980932,
        "TitaniumTungstenCarbide" : 0x6d0b0b,
        "TantalumCarbide" : 0x49495b,
        "Potin" : 0xac816e,
        "RedAlloy" : 0x9c0000,
        "RedSteel" : 0x785555,
        "IncoloyMa956" : 0x2fa36c,
        "BlueAlloy" : 0x4e8cc7,
        "BlueSteel" : 0x555578,
        "VanadiumSteel" : 0xa4a4a4,
        "TungstenSteel" : 0x555589,
        "CobaltBrass" : 0x9a9a89,
        "RhodiumPlatedPalladium" : 0xd2bebe,
        "WatertightSteel" : 0x2d505b,
        "MaragingSteel300" : 0x556073,
        "Hsse" : 0x2c5700,
        "Hssg" : 0x838300,
        "Hsss" : 0x57002c,
        "BlackSteel" : 0x555555,
        "Naquadah" : 0x2b2b2b
    },
    1 : {
        "ferramic" : 0xffddd5
    },
    2 : {
        "alubrass" : 0xf0d467,
        "magnesium" : 0xf2d4f2
    }
};

i18nTweak("contenttweaker.part.ingot_double", "Double %s Ingot", "双重%s锭");
i18nTweak("base.material.alubrass", "alubrass", "铝黄铜");
i18nTweak("base.material.ferramic", "ferramic", "瓷铁");
i18nTweak("base.material.neodymium", "neodymium", "铷");
i18nTweak("base.material.rose_gold", "rose gold", "玫瑰金");
i18nTweak("base.material.sterling_silver", "rterling silver", "标准纯银");
i18nTweak("base.material.bismuth_bronze", "bismuth bronze", "铋青铜");
i18nTweak("base.material.chrome", "chrome", "铬");
i18nTweak("base.material.plutonium241", "plutonium241", "钚241");
i18nTweak("base.material.niobium_titanium", "niobium titanium", "铌钛合金");
i18nTweak("base.material.silicon", "silicon", "硅");
i18nTweak("base.material.europium", "europium", "铕");
i18nTweak("base.material.ruthenium", "ruthenium", "钌");
i18nTweak("base.material.kanthal", "kanthal", "坎塔尔合金");
i18nTweak("base.material.niobium_nitride", "niobium nitride", "氮化铌");
i18nTweak("base.material.electrum", "electrum", "琥珀金");
i18nTweak("base.material.rhodium", "rhodium", "铑");
i18nTweak("base.material.invar", "invar", "殷钢");
i18nTweak("base.material.naquadria", "naquadria", "超能硅岩");
i18nTweak("base.material.cupronickel", "cupronickel", "白铜");

i18nTweak("base.material.neutronium", "", "中子素");
i18nTweak("base.material.wrought_iron", "", "锻铁");
i18nTweak("base.material.enriched_naquadah_trinium_europium_duranide", "", "富集硅岩三元铕铿铀合金");
i18nTweak("base.material.tungsten_carbide", "", "碳化钨");
i18nTweak("base.material.nichrome", "镍铬合金", "");
i18nTweak("base.material.indium_tin_barium_titanium_cuprate", "", "铟锡钡钛铜合金");
i18nTweak("base.material.osmiridium", "", "铱锇合金");
i18nTweak("base.material.battery_alloy", "", "电池合金");
i18nTweak("base.material.gallium", "", "镓");
i18nTweak("base.material.black_bronze", "", "黑青铜");
i18nTweak("base.material.trinium", "", "凯金");
i18nTweak("base.material.yttrium_barium_cuprate", "", "钇钡铜氧合金");
i18nTweak("base.material.americium", "", "镅");
i18nTweak("base.material.tin_alloy", "", "锡铁合金");
i18nTweak("base.material.bronze", "", "青铜");
i18nTweak("base.material.ultimet", "", "哈氏合金");
i18nTweak("base.material.duranium", "", "铿铀");
i18nTweak("base.material.ruridit", "", "钌铱");
i18nTweak("base.material.gallium_arsenide", "", "砷化镓");
i18nTweak("base.material.stainless_steel", "", "不锈钢");
i18nTweak("base.material.magnalium", "", "镁铝合金");
i18nTweak("base.material.uranium_rhodium_dinaquadide", "", "铀铑硅岩合金");
i18nTweak("base.material.brass", "", "黄铜");
i18nTweak("base.material.annealed_copper", "", "退火铜");
i18nTweak("base.material.darmstadtium", "", "");
i18nTweak("base.material.indium_gallium_phosphide", "", "磷化铟镓");
i18nTweak("base.material.steel", "", "钢");
i18nTweak("base.material.tritanium", "", "三钛合金");
i18nTweak("base.material.vanadium_gallium", "", "钒镓合金");

i18nTweak("base.material.blue_alloy", "", "蓝色合金");
i18nTweak("base.material.hsla_steel", "", "HSLA钢");
i18nTweak("base.material.hastelloy_x", "", "哈斯特洛依合金-X");
i18nTweak("base.material.trinaquadalloy", "", "碳化特林-钍瑞铌合金");
i18nTweak("base.material.red_alloy", "", "红色合金");
i18nTweak("base.material.hastelloy_c276", "", "哈斯特洛依合金-C276");
i18nTweak("base.material.zeron100", "", "塞龙-100");
i18nTweak("base.material.tungsten_steel", "", "钨钢");
i18nTweak("base.material.maraging_steel300", "", "马氏体时效钢300");
i18nTweak("base.material.vanadium_steel", "", "钒钢");
i18nTweak("base.material.cobalt_brass", "", "钴黄铜");
i18nTweak("base.material.potin", "", "粗青铜合金");
i18nTweak("base.material.molybdenum_disilicide", "", "二硅化钼");
i18nTweak("base.material.blue_steel", "", "蓝钢");
i18nTweak("base.material.naquadah_alloy", "", "硅岩合金");
i18nTweak("base.material.hssg", "", "高速钢-G");
i18nTweak("base.material.watertight_steel", "", "防水钢");
i18nTweak("base.material.hsse", "", "高速钢-E");
i18nTweak("base.material.titanium_carbide", "", "碳化钛");
i18nTweak("base.material.black_steel", "", "黑钢");
i18nTweak("base.material.rhodium_plated_palladium", "", "镀铑钯");
i18nTweak("base.material.red_steel", "", "红钢");
i18nTweak("base.material.tantalum_carbide", "", "碳化钽");
i18nTweak("base.material.damascus_steel", "", "大马士革钢");
i18nTweak("base.material.titanium_tungsten_carbide", "", "碳化钛钨");
i18nTweak("base.material.stellite100", "", "司太立100合金");
i18nTweak("base.material.hsss", "", "高速钢-S");
i18nTweak("base.material.incoloy_ma956", "", "耐热铬铁合金-MA956");



#-----------------------------------------------------------
function materialBuilder(name as string, partsList as string[], materialsList as int[string]){
    var register as MaterialSystemHelper = CotUtils.getMaterialSystemHelper(name);
    for parts in partsList{
        register.addPart(parts);
    }
    for mat in materialsList{
        register.registerMaterial(mat, materialsList[mat]);
    }
    register.registerAllMaterialParts();
}


//settelment
for key, value in allPartsMap {
    materialBuilder(key, value, allMaterialMap[key]);
}

