local function parse_name_list(setting_name)
	local set = {}
	for name in string.gmatch(settings.startup[setting_name].value .. ",", "([^,]*),") do
		name = name:gsub("^%s+", ""):gsub("%s+$", "") -- trim whitespace
		if name ~= "" then set[name] = true end
	end
	return set
end

-- Build the blacklist set from the comma-separated setting
local blacklist = parse_name_list("more-barrels-fluid-blacklist")
-- Whitelist of fluids whose opt-out should be overridden
local optout_whitelist = parse_name_list("more-barrels-opt-out-whitelist")
local overwrite_all = settings.startup["more-barrels-overwrite-opt-out"].value

for _,f in pairs(data.raw.fluid) do
	if not string.find(f.name, "parameter-") and f.name ~= "fluid-unknown" and not blacklist[f.name] then
		local opted_out = f.auto_barrel == false
		-- Include fluids that don't explicitly opt out (auto_barrel true or unset);
		-- overwrite opt-out for whitelisted fluids, or for all of them if the overwrite setting is on
		local include = not opted_out or overwrite_all or optout_whitelist[f.name]
		if include then
			if settings.startup["more-barrels-include-plasma"].value or f.name ~= "fusion-plasma" then
				f.auto_barrel = true
			end
		end
	end
end

-- data.raw.fluid["steam"].auto_barrel = true
-- data.raw.fluid["ammoniacal-solution"].auto_barrel = true
-- data.raw.fluid["ammonia"].auto_barrel = true
-- data.raw.fluid["fluorine"].auto_barrel = true
-- data.raw.fluid["holmium-solution"].auto_barrel = true
-- data.raw.fluid["electrolyte"].auto_barrel = true
-- data.raw.fluid["lithium-brine"].auto_barrel = true
-- data.raw.fluid["lava"].auto_barrel = true
-- data.raw.fluid["molten-iron"].auto_barrel = true
-- data.raw.fluid["molten-copper"].auto_barrel = true
-- data.raw.fluid["thruster-fuel"].auto_barrel = true
-- data.raw.fluid["thruster-oxidizer"].auto_barrel = true
-- data.raw.fluid["fusion-plasma"].auto_barrel = true
