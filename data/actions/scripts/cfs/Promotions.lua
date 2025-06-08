-- vocation_evolutions.lua

vocationEvolutions = {
    { vocation = 1, evolvesTo = 5, minLevel = 500 },
    { vocation = 2, evolvesTo = 6, minLevel = 500 },
    { vocation = 3, evolvesTo = 7, minLevel = 500 },
    { vocation = 4, evolvesTo = 8, minLevel = 500 },
}

-- Função auxiliar para buscar evolução por vocação
function getEvolutionForVocation(vocId)
    for _, evo in ipairs(vocationEvolutions) do
        if evo.vocation == vocId then
            return evo
        end
    end
    return nil
end
