Config = {}
-- // EINSTELLUNGEN //
Config.Bell = "Klingel System"
Config.YouRang = "Du hast geklingelt ab jetzt musst du 30 Sekunden warten."
Config.SomeoneRangTemplate = "Jemand hat %s Geklingelt.. schaue mal nach."
Config.Ring = "[E] -Klingeln"
Config.targetRing = 'Klingeln'
Config.Wait1 = "Bitte warte noch: "
Config.Wait2 = " Sekunden bis du wieder Klingeln Kannst."
Config.target = true 
Config.WaitingTime = 30

-- // KLINGEL //
Config.Bells = {
    {
        coords = vec3(00.00, -00.00, 00.00),
        job = '',
        label = 'Dem Flughafen' -- Label was steht also: Config.SomeoneRangTemplate = "Jemand hat %s Geklingelt.. schaue mal nach." // %s = Label von klinel
    }
}


function GetSomeoneRangMessage(label)
    return string.format(Config.SomeoneRangTemplate, label)
end