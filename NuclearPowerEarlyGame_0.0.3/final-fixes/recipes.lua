
if data.raw.recipe["nuclear-reactor"] then 
	data.raw.recipe["nuclear-reactor"].energy_required = 8
    data.raw.recipe["nuclear-reactor"].ingredients =
    {
      {"stone-brick", 700},
      {"iron-plate", 500},
      {"copper-plate", 400},
    }
    data.raw.recipe["nuclear-reactor"].requester_paste_multiplier = 1
end

if data.raw.recipe["centrifuge"] then
	data.raw.recipe["centrifuge"].energy_required = 4
    data.raw.recipe["centrifuge"].ingredients =
    {
      {"stone-brick", 300},
      {"iron-plate", 200},
      {"copper-plate", 150}
    }
    data.raw.recipe["centrifuge"].result = "centrifuge"
    data.raw.recipe["centrifuge"].requester_paste_multiplier= 10
end

if data.raw.recipe["heat-exchanger"] then
	data.raw.recipe["heat-exchanger"].energy_required = 3
    data.raw.recipe["heat-exchanger"].ingredients = {{"iron-plate", 50}, {"copper-plate", 100}, {"heat-pipe", 5}}
    data.raw.recipe["heat-exchanger"].result = "heat-exchanger"
end

if data.raw.recipe["heat-pipe"] then
	data.raw.recipe["heat-pipe"].energy_required = 1
    data.raw.recipe["heat-pipe"].ingredients = {{"iron-plate", 50}, {"copper-plate", 20}}
    data.raw.recipe["heat-pipe"].result = "heat-pipe"
end

if data.raw.recipe["uranium-fuel-cell"] then
	data.raw.recipe["uranium-fuel-cell"].energy_required = 1
    data.raw.recipe["uranium-fuel-cell"].ingredients = {{"iron-plate", 10}, {"uranium-235", 1}, {"uranium-238", 10}}
    data.raw.recipe["uranium-fuel-cell"].result = "uranium-fuel-cell"
end

if data.raw.recipe["steam-turbine"] then
	data.raw.recipe["steam-turbine"].energy_required = 1
    data.raw.recipe["steam-turbine"].ingredients = {{"iron-plate", 20}, {"copper-plate", 50}, {"iron-gear-wheel", 50}, {"pipe", 20}}
    data.raw.recipe["steam-turbine"].result = "steam-turbine"
end

if data.raw.recipe["substation"] then
    data.raw.recipe["substation"].ingredients = {{"small-electric-pole", 3}, {"copper-cable", 10}}
    data.raw.recipe["substation"].result = "substation"
end