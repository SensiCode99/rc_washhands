RegisterNetEvent('InteractSound_SV:PlayOnSource')
AddEventHandler('InteractSound_SV:PlayOnSource', function(soundFile, soundVolume)
    soundVolume = soundVolume or 1.0
    TriggerClientEvent('InteractSound_CL:PlayOnOne', source, soundFile, soundVolume)
end)

RegisterNetEvent('InteractSound_SV:PlayOnAll')
AddEventHandler('InteractSound_SV:PlayOnAll', function(soundFile, soundVolume)
    soundVolume = soundVolume or 1.0
    TriggerClientEvent('InteractSound_CL:PlayOnAll', -1, soundFile, soundVolume)
end)
