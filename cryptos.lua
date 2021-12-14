local minsToUpdate = 60

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local result = exports.oxmysql:executeSync("SELECT * FROM gksphone_crypto_values", {})
        if result then
            PerformHttpRequest("https://api.coingecko.com/api/v3/ping", function(errorCode, resultData, resultHeaders)
                print(errorCode)
                if (errorCode == 200) then
                    for i,v in pairs(result) do
                        print(v.jsonname)
                        PerformHttpRequest("https://api.coingecko.com/api/v3/coins/"..v.jsonname, function (errorCode2, resultData2, resultHeaders2)
                            if (errorCode2 == 200) then
                                local tempo = (json.decode(resultData2))
                                print(tempo.market_data.current_price.usd)
                                exports.oxmysql:execute("UPDATE gksphone_crypto_values SET price = ? WHERE jsonname = ?", { tempo.market_data.current_price.usd, v.jsonname })
                            end
                        end)
                        Citizen.Wait(10000)
                    end
                end
            end)
        end
        Citizen.Wait(60000 * 60)
    end
end)