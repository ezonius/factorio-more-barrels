for _,f in pairs(data.raw.fluid) do
	if not string.find(f.name, "parameter-") and f.name ~= "fluid-unknown" then
		if settings.startup["more-barrels-include-plasma"].value or f.name ~= "fusion-plasma" then
			f.auto_barrel = true
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
