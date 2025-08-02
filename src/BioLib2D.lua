-- File: BioLib2D/src/BioLib2D.lua
local BioXenConnector = require("src.components.BioXenConnector")
local VMCell = require("src.components.VMCell")
local ATPSystem = require("src.components.ATPSystem")
local GeneticCircuit = require("src.components.GeneticCircuit")

local BioLib2D = {}
BioLib2D.__index = BioLib2D

function BioLib2D:new(config)
    local lib = {
        connector = BioXenConnector:new(config.data_source),
        vm_cells = {},
        atp_system = ATPSystem:new(),
        grid_cols = config.grid_cols or 2,
        grid_rows = config.grid_rows or 2,
        cell_width = config.cell_width or 200,
        cell_height = config.cell_height or 150,
        show_atp_flow = config.show_atp_flow or true,
        show_genetic_circuits = config.show_genetic_circuits or true,
        animation_speed = config.animation_speed or 1.0
    }
    setmetatable(lib, BioLib2D)
    return lib
end

function BioLib2D:update(dt)
    self.connector:update(dt)
    local system_data = self.connector:getSystemData()
    if self.show_atp_flow then
        self.atp_system:update(dt, system_data)
    end

    local vm_index = 0
    for vm_id, vm_data in pairs(system_data.vms or {}) do
        if not self.vm_cells[vm_id] then
            local col = vm_index % self.grid_cols
            local row = math.floor(vm_index / self.grid_cols)
            local x = 50 + col * (self.cell_width + 20)
            local y = 50 + row * (self.cell_height + 20)
            self.vm_cells[vm_id] = VMCell:new(x, y, self.cell_width, self.cell_height, vm_id)
        end
        self.vm_cells[vm_id]:update(dt * self.animation_speed, vm_data)
        vm_index = vm_index + 1
    end
end

function BioLib2D:draw()
    love.graphics.clear(0.05, 0.05, 0.15, 1)
    if self.show_atp_flow then
        self.atp_system:draw()
    end
    for _, cell in pairs(self.vm_cells) do
        cell:draw()
    end
end

return BioLib2D