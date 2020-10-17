local HORIZONTAL_LINE_AMOUNT = 18
local VERTICAL_LINE_AMOUNT = 18
local CELL_WIDTH = 40
local CELL_HEIGHT = 40
local GRID_WIDTH = 750
local GRID_HEIGHT = 750

-- Draw Background
local background = display.newRect(display.contentCenterX, display.contentCenterY, GRID_WIDTH, GRID_HEIGHT)
background:setFillColor(1)

-- Draw horizontal lines of the grid
local horizontalLines = {}
for i = 1, HORIZONTAL_LINE_AMOUNT do
    positionY = display.contentCenterY - GRID_WIDTH / 2 + (CELL_HEIGHT * i)
    local line = display.newRect(display.contentCenterX + 5, positionY, GRID_WIDTH - CELL_WIDTH * 2 + 10, 2)
    line:setFillColor(0, 0, 0)
    horizontalLines[i] = {}
    print(horizontalLines[i]);
end

-- Draw vertical lines of the grid
local verticalLines = {}
for i = 1, VERTICAL_LINE_AMOUNT do
    positionX = display.contentCenterX - GRID_HEIGHT / 2 + (CELL_HEIGHT * i)
    local line = display.newRect(positionX, display.contentCenterY + 5, 2, GRID_WIDTH - CELL_WIDTH * 2 + 10)
    line:setFillColor(0, 0, 0)
    verticalLines[i] = {}
    print(verticalLines[i]);
end

return {
    grid = grid;
}