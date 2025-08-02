-- File: BioLib2D/src/components/BioXenConnector.lua
local json = require("dkjson")
local BioXenConnector = {}
BioXenConnector.__index = BioXenConnector

function BioXenConnector:new(data_source)
    local connector = {
        data_source = data_source or "data/bioxen_visualization_data.json",
        last_update = 0,
        cached_data = {},
        update_frequency = 0.5
    }
    setmetatable(connector, BioXenConnector)
    return connector
end

function BioXenConnector:update(dt)
    self.last_update = self.last_update + dt
    if self.last_update >= self.update_frequency then
        self:loadBioXenData()
        self.last_update = 0
    end
end

function BioXenConnector:loadBioXenData()
    local file = io.open(self.data_source, "r")
    if file then
        local content = file:read("*all")
        file:close()
        local success, data = pcall(json.decode, content)
        if success then
            self.cached_data = data
        end
    end
end

function BioXenConnector:getSystemData()
    return self.cached_data.system or {}
end

function BioXenConnector:getVMData(vm_id)
    if self.cached_data.vms then
        return self.cached_data.vms[vm_id]
    end
    return nil
end

return BioXenConnector