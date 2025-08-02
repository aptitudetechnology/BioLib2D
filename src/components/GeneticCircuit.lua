local GeneticCircuit = {}
GeneticCircuit.__index = GeneticCircuit

function GeneticCircuit:new(circuit_data)
    local circuit = { elements = circuit_data.elements or {} }
    setmetatable(circuit, GeneticCircuit)
    return circuit
end

function GeneticCircuit:update(dt, vm_data)
    -- Placeholder
end

function GeneticCircuit:draw(x, y)
    -- Placeholder
end

return GeneticCircuit