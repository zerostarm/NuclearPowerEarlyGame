--Put stuff in data-final-fixes so it works with other mods.
require("final-fixes.technology")
require("final-fixes.recipes")

-- mine without acid
data.raw["resource"]["uranium-ore"].minable.required_fluid = nil
data.raw["resource"]["uranium-ore"].minable.fluid_amount = nil
data.raw["resource"]["uranium-ore"].autoplace.has_starting_area_placement = true
data.raw["resource"]["uranium-ore"].autoplace.starting_area_amount = 1600
data.raw["resource"]["uranium-ore"].autoplace.base_spots_per_km2 = 3

