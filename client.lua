ESX = exports["es_extended"]:getSharedObject()
RegisterCommand("pomoc", function()
    ESX.TriggerServerCallback('jhn_sklep:ilosc', function(count)
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "show",
            monety = count
        })
    end, 'moneta')
end, false)


RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
    cb(true)
end)
RegisterNUICallback("kupuje", function(data)
    SetNuiFocus(false, false)
    print("Legalna skrzynia")
    print(data.skrzynia)
    TriggerServerEvent("jhn_sklep:skrzynia", data.skrzynia)
end)