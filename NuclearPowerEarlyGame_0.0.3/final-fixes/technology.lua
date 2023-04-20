--This file holds technology data-final-fixes

if data.raw.technology["nuclear-power"] then
	data.raw.technology["nuclear-power"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-fuel-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      },
	  {
        type = "unlock-recipe",
        recipe = "storage-tank"
      },
	  {
        type = "unlock-recipe",
        recipe = "pipe-to-ground"
      }
	  ,
	  {
		type = "unlock-recipe",
        recipe = "substation"
	  }
    }
	
	data.raw.technology["nuclear-power"].prerequisites = {}
    data.raw.technology["nuclear-power"].unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
--        {"logistic-science-pack", 1},
       
      },
      time = 10,
      count = 150
    }
end

if data.raw.technology["nuclear-fuel-reprocessing"] then
	data.raw.technology["nuclear-fuel-reprocessing"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-fuel-reprocessing"
      }
    }
	data.raw.technology["nuclear-fuel-reprocessing"].prerequisites = {"nuclear-power"}
    data.raw.technology["nuclear-fuel-reprocessing"].unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        --{"logistic-science-pack", 1},
        
      },
      time = 10,
      count = 150
    }
end

if data.raw.technology["uranium-processing"] then
	data.raw.technology["uranium-processing"].hidden = true
end

--Nuclear Fuel mod compatability section
if data.raw["technology"]["mox-fuel"] then
	data.raw["technology"]["mox-fuel"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1},}
end
if data.raw["technology"]["plutonium-breeding"] then
	data.raw["technology"]["plutonium-breeding"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1},}
	data.raw["technology"]["plutonium-breeding"].prerequisites = { "nuclear-fuel-reprocessing",}
end