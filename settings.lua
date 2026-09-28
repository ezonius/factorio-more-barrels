data:extend{
    {
        type = "bool-setting",
        name = "more-barrels-include-plasma",
        setting_type = "startup",
        default_value = false,
        order = "a",
    },
    {
        type = "string-setting",
        name = "more-barrels-fluid-blacklist",
        setting_type = "startup",
        default_value = "ee-super-pump-speed-fluid,cybersyn-lost-train,cybersyn-missing-train,cybersyn-nonempty-train-barrel,muluna-heat",
        allow_blank = true,
        order = "b",
    },
    {
        type = "bool-setting",
        name = "more-barrels-overwrite-opt-out",
        setting_type = "startup",
        default_value = false,
        order = "c",
    },
    {
        type = "string-setting",
        name = "more-barrels-opt-out-whitelist",
        setting_type = "startup",
        default_value = "steam,ammoniacal-solution,ammonia,fluorine,holmium-solution,electrolyte,lithium-brine,lava,molten-iron,molten-copper,thruster-fuel,thruster-oxidizer",
        allow_blank = true,
        order = "d",
    },
}
