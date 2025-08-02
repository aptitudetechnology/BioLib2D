local ATPSystem = {}
ATPSystem.__index = ATPSystem

function ATPSystem:new()
    local sys = { atp_particles = {} }
    setmetatable(sys, ATPSystem)
    return sys
end

function ATPSystem:update(dt, system_data)
    -- Placeholder
end

function ATPSystem:draw()
    love.graphics.setColor(1, 1, 0, 0.5)
    for _, atp in ipairs(self.atp_particles) do
        love.graphics.circle("fill", atp.x, atp.y, 2)
    end
end

return ATPSystem
