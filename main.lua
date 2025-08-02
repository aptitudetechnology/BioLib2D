-- File: BioLib2D/main.lua
local BioLib2D = require("src.BioLib2D")

local biovis

function love.load()
    biovis = BioLib2D:new({
        data_source = "data/bioxen_visualization_data.json",
        grid_cols = 2,
        grid_rows = 2,
        cell_width = 300,
        cell_height = 200,
        show_atp_flow = true,
        show_genetic_circuits = true,
        animation_speed = 1.0
    })
end

function love.update(dt)
    biovis:update(dt)
end

function love.draw()
    biovis:draw()
end

function love.keypressed(key)
    if key == "space" then
        biovis.show_atp_flow = not biovis.show_atp_flow
    elseif key == "g" then
        biovis.show_genetic_circuits = not biovis.show_genetic_circuits
    elseif key == "e" then
        local export = require("src.utils.export")
        export.captureFrameToPNG("exports/diagram_output.png", biovis.draw, 800, 600)
    end
end

-- File: BioLib2D/conf.lua
function love.conf(t)
    t.window.title = "BioLib2D - Biological Visualization"
    t.window.width = 1024
    t.window.height = 768
end