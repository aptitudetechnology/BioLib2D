local export = {}

function export.captureFrameToPNG(filename, drawFunction, width, height)
    local canvas = love.graphics.newCanvas(width, height)
    love.graphics.setCanvas(canvas)
    love.graphics.clear(0.05, 0.05, 0.15, 1)
    drawFunction()
    love.graphics.setCanvas()
    local imageData = canvas:newImageData()
    
    -- Use LÖVE's save directory
    local saveDir = love.filesystem.getSaveDirectory()
    local filename = "diagram_output.png"
    imageData:encode("png", filename)
    print("Saved to: " .. saveDir .. "/" .. filename)
end

return export
