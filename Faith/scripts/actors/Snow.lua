local RPD = require "scripts/lib/commonClasses"
local actor = require "scripts/lib/actor"

return actor.init({
    activate = function()
        local levelSize = RPD.Dungeon.level:getLength()
        for i = 0 , levelSize - 1 do
            if RPD.Dungeon.level.solid[i] then
                local emitter = RPD.Sfx.CellEmitter:get(i)
                emitter:pour(RPD.Sfx.SnowParticle.FACTORY, 2)
            end
        end
    end,
    actionTime = function()
        return math.huge
    end
})
