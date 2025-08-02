local VMCell = {}
VMCell.__index = VMCell

function VMCell:new(x, y, width, height, vm_id)
    local cell = {
        x = x, y = y,
        width = width, height = height,
        vm_id = vm_id
    }
    setmetatable(cell, VMCell)
    return cell
end

function VMCell:update(dt, vm_data)
    -- Placeholder
end

function VMCell:draw()
    love.graphics.setColor(0.2, 0.6, 0.8, 0.8)
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print(self.vm_id, self.x + 5, self.y + self.height + 5)
end

return VMCell