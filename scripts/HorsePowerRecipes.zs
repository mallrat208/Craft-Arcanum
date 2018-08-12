import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.horsepower.ChoppingBlock;
import mods.horsepower.Press;

var listLogs = [<minecraft:log>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>, <minecraft:log2>, <minecraft:log2:1>, <rustic:log>, <rustic:log:1>, <traverse:fir_log>, <thaumcraft:log_silverwood>, <thaumcraft:log_greatwood>, <botania:livingwood>, <botania:dreamwood>] as IItemStack[];
var listPlanks = [<minecraft:planks>,<minecraft:planks:1>, <minecraft:planks:2>, <minecraft:planks:3>, <minecraft:planks:4>, <minecraft:planks:5>, <rustic:planks>, <rustic:planks:1>, <traverse:fir_planks>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_greatwood>, <botania:livingwood:1>, <botania:dreamwood:1>] as IItemStack[];

for i, log in listLogs {
	
	ChoppingBlock.add(log, listPlanks[i] * 6, 1);
}

<ore:honeycomb>.add(<harvestcraft:honeycombitem>);
<ore:honeycomb>.add(<rustic:honeycomb>);

var rusticInputs = [<ore:cropOlive>, <ore:cropIronberry>,<ore:cropWildberry>,<ore:cropGrape>, <ore:cropApple>, <ore:honeycomb>] as IOreDictEntry[];

var rusticOutputs = [<liquid:oliveoil>,<liquid:ironberryjuice>,<liquid:wildberryjuice>,<liquid:grapejuice>,<liquid:applejuice>,<liquid:honey>] as ILiquidStack[];

for i, input in rusticInputs {
	Press.add(input, rusticOutputs[i] * 250);
}

var iePlantOilInput = [<ore:listAllseed>, <ore:seedBeet>, <minecraft:pumpkin_seeds>, <minecraft:melon_seeds>, <immersiveengineering:seed>, <chococraft:gysahl_green_seeds>] as IIngredient[];

var amount = [80, 60, 40, 20, 120, 60] as int[];

for i, input in iePlantOilInput {
	Press.add(input, <liquid:plantoil> * amount[i]);
}


