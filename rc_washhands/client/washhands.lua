local sinks = {
    vec3(-1197.54, -902.83, 13.62),
    -- vec3(0, 0, 0),
    -- vec3(0, 0, 0),
}

local hygieneMessages = {
    "Your hands smell faintly of soap.",
    "You feel refreshed and ready.",
    "The cool water wakes you up.",
    "Your fingers are squeaky clean!",
    "You dry off with a satisfied shake."
}

local function washHands()
    ExecuteCommand("e cleanhands")
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'WATER_SPLASH', 0.5)

    if lib.progressBar({
            duration = 5000,
            label = 'Washing hands...',
            useWhileDead = false,
            canCancel = true,
        }) then
        ExecuteCommand("e c")
        ExecuteCommand("e shakeoff")

        lib.notify({
            title = 'Hygiene',
            description = hygieneMessages[math.random(#hygieneMessages)],
            type = 'success',
            icon = 'fas fa-hand-sparkles'
        })
    else
        ExecuteCommand("e c")
        lib.notify({
            title = 'Cancelled',
            description = 'You stopped washing your hands.',
            type = 'error',
            icon = 'fas fa-ban'
        })
    end
end

CreateThread(function()
    for i, coords in ipairs(sinks) do
        exports.ox_target:addSphereZone({
            coords = coords,
            radius = 0.5,
            options = {
                {
                    name = 'rc_washhands_' .. i,
                    label = 'Wash Hands',
                    icon = 'fas fa-hand-holding-water',
                    distance = 2.0,
                    onSelect = washHands
                }
            }
        })
    end
end)
