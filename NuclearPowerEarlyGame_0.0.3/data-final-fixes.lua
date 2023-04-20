--Put stuff in data-final-fixes so it works with other mods.
require("final-fixes.technology")
require("final-fixes.recipes")
local resource_autoplace = require("resource-autoplace/resource-autoplace")

-- mine without acid
data.raw["resource"]["uranium-ore"].minable.required_fluid = nil
data.raw["resource"]["uranium-ore"].minable.fluid_amount = nil
--data.raw["resource"]["uranium-ore"].autoplace.has_starting_area_placement = true
--data.raw["resource"]["uranium-ore"].autoplace.starting_area_amount = 1600
--data.raw["resource"]["uranium-ore"].autoplace.base_spots_per_km2 = 3


--Modified from Freight Forwarding so it hopefully works with it.
local empty_radius = 1500
data.raw.resource["uranium-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
  name = "uranium-ore",
  order = "a",
  base_density = 0.9,
  base_spots_per_km2 = 1.25,
  has_starting_area_placement = true,
  starting_area_amount = 2400,
  random_spot_size_minimum = 2,
  random_spot_size_maximum = 4,
  regular_rq_factor_multiplier = 1,
  regular_patch_fade_in_distance_start = empty_radius,
  regular_patch_fade_in_distance = empty_radius + 100,
  ideal_aux = 0.3,
}