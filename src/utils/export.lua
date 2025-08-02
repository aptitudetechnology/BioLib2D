ocal export = {}

function export.captureFrameToPNG(filename, drawFunction, width, height)
    local canvas = love.graphics.newCanvas(width, height)
    love.graphics.setCanvas(canvas)
    love.graphics.clear(0.05, 0.05, 0.15, 1)
    drawFunction()
    love.graphics.setCanvas()
    local imageData = canvas:newImageData()
    imageData:encode("png", filename)
    print("Exported diagram to " .. filename)
end

return export