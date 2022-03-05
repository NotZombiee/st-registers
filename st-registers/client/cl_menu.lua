Citizen.CreateThread(function()
    --Burgershot trays
    exports.qtarget:AddBoxZone("burger_tray1", vector3(-1193.91, -894.39, 14.08), 0.95, 0.55, {
        name="burger_tray1",
        heading=305,
        debugPoly=true,
        minZ=14.08,
        maxZ=14.42,
        }, {
            options = {
                {
                    event = "st-registers:Tray1",
                    icon = "fas fa-hamburger",
                    label = "Burgershot Tray #1",
                },
            },
            distance = 3.0
    })

    exports.qtarget:AddBoxZone("burger_tray2", vector3(-1194.90, -892.83, 14.08), 0.95, 0.55, {
        name="burger_tray2",
        heading=305.50,
        debugPoly=true,
        minZ=14.08,
        maxZ=14.42,
        }, {
            options = {
                {
                    event = "st-registers:Tray2",
                    icon = "fas fa-hamburger",
                    label = "Burgershot Tray #2",
                },
            },
            distance = 3.0
    })

    exports.qtarget:AddBoxZone("burger_tray3", vector3(-1195.89, -891.38, 14.08), 0.95, 0.55, {
        name="burger_tray3",
        heading=301.84,
        debugPoly=true,
        minZ=14.08,
        maxZ=14.42,
        }, {
            options = {
                {
                    event = "st-registers:Tray3",
                    icon = "fas fa-hamburger",
                    label = "Burgershot Tray #3",
                },
            },
            distance = 3.0
    })
    -- Tray end. we dont have too many lel

    -- Start the Cash registers - Burgershot
    exports.qtarget:AddBoxZone("burger_register1", vector3(-1194.29, -893.85, 14.08), 0.80, 0.45, {
        name="burger_register1",
        heading=305,
        debugPoly=true,
        minZ=14.08,
        maxZ=14.42,
        }, {
            options = {
                {
                    event = "st-registers:TakeOrder",
                    icon = "fas fa-cash-register",
                    label = "Take Order",
                    job = "police", -- Needs to be Burgershot or whatever
                },
                {
                    event = "st-registers:PayOrder",
                    icon = "fas fa-hand-holding",
                    label = "Pay for Order"
                },
            },
            distance = 3.0
    })

    exports.qtarget:AddBoxZone("burger_register2", vector3(-1195.35, -892.40, 14.08), 0.80, 0.45, {
        name="burger_register2",
        heading=305,
        debugPoly=true,
        minZ=14.08,
        maxZ=14.42,
        }, {
            options = {
                {
                    event = "st-registers:TakeOrder",
                    icon = "fas fa-cash-register",
                    label = "Take Order",
                    job = "police",
                },
                {
                    event = "st-registers:PayOrder",
                    icon = "fas fa-hand-holding",
                    label = "Pay for Order"
                },
            },
            distance = 3.0
    })

    -- Burgershot end. 
end) 


-- Cash register Stuff just testing could prob be redone --
RegisterNetEvent("st-registers:TakeOrder")
AddEventHandler("st-registers:TakeOrder", function()
    local TakeOrder = {
        {
            id = 1,
            header = 'Take Order',
            txt = ' '
        },
        {
            id = 2,
            header = "Meals",
            txt = ' ',
            params = {
                event = 'st-registers:Meals',
                isServer = false,
            }
        },
        {
            id = 3,
            header = "Singles",
            txt = ' ',
            params = {
                event = 'st-registers:Singles',
            }
        },
        {
            id = 4,
            header = "Milkshakes",
            txt = ' ',
            params = {
                event = 'st-registers:BSMilkshakes',
                isServer = false,
            }
        },
        {
            id = 5,
            header = "Total Price",
            txt = "Ordered items:",
            params = {
                isServer = false,
                args = {

                }
            }
        },
        {
            id = 6,
            header = "Charge customer",
            txt = ' ',
            params = {
                event = 'ChargedCustomer',
                isServer = true,
            }
        },
    }
    exports['zf_context']:openMenu(TakeOrder)
end)

RegisterNetEvent("st-registers:Meals")
AddEventHandler("st-registers:Meals", function()
    local Meals = {
        {
            id = 1,
            header = '< Go Back',
            txt = ' ',
            params = {
                event = 'st-registers:TakeOrder',
            }
        },
        {
            id = 2,
            header = "Heartstopper Meal",
            txt = "$450",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 450,
                    label = "Heartstopper Meal"
                }
            }
        },
        {
            id = 3,
            header = "Bleeder Meal",
            txt = "$380",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 380,
                    label = "Bleeder Meal"
                }
            }
        },
        {
            id = 4,
            header = "Moneyshot Meal",
            txt = "$350",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 350,
                    label = "Moneyshot Meal"
                }
            }
        },
        {
            id = 5,
            header = "Torpedo Meal",
            txt = "$330",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 330,
                    label = "Torpedo Meal"
                }
            }
        },
        {
            id = 6,
            header = "Sojo Meal",
            txt = "$330",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 330,
                    label = "Sojo Meal"
                }
            }
        },
    }
    exports['zf_context']:openMenu(Meals)
end)

RegisterNetEvent("st-registers:Singles")
AddEventHandler("st-registers:Singles", function()
    local Singles = {
        {
            id = 1,
            header = '< Go Back',
            txt = ' ',
            params = {
                event = 'st-registers:TakeOrder',
            }
        },
        {
            id = 2,
            header = "Heartstopper",
            txt = "$350",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 350,
                    label = "Heartstopper"
                }
            }
        },
        {
            id = 3,
            header = "Bleeder",
            txt = "$275",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 275,
                    label = "Bleeder"
                }
            }
        },
        {
            id = 4,
            header = "Moneyshot",
            txt = "$250",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 250,
                    label = "Moneyshot"
                }
            }
        },
        {
            id = 5,
            header = "Torpedo",
            txt = "$225",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 225,
                    label = "Torpedo"
                }
            }
        },
        {
            id = 6,
            header = "Sojo",
            txt = "$225",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 225,
                    label = "Torpedo"
                }
            }
        },
    }
    exports['zf_context']:openMenu(Singles)
end)

RegisterNetEvent("st-registers:BSMilkshakes")
AddEventHandler("st-registers:BSMilkshakes", function()
    local BSMilkshakes = {
        {
            id = 1,
            header = '< Go Back',
            txt = ' ',
            params = {
                event = 'st-registers:TakeOrder',
            }
        },
        {
            id = 2,
            header = "Heartstopper",
            txt = "$450",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 450,
                    label = "Heartstopper"
                }
            }
        },
        {
            id = 3,
            header = "Bleeder",
            txt = "$350",
            params = {
                event = 'TakeOrder',
                isServer = true,
                args = {
                    price = 350,
                    label = "Bleeder"
                }
            }
        },
    }
    exports['zf_context']:openMenu(BSMilkshakes)
end)


RegisterNetEvent("st-registers:PayOrder")
AddEventHandler("st-registers:PayOrder", function()
    local PayOrder = {
        {
            id = 1,
            header = 'Pay for Order',
            txt = ' '
        },
        {
            id = 2,
            header = 'Whole Order here...',
            txt = 'Total Price...',
            params = {
                event = 'PayOrder',
                isServer = true,
                args = {
                }
            }
        },
    }
    exports['zf_context']:openMenu(PayOrder)
end)