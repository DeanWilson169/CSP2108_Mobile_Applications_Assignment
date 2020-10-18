local HORIZONTAL_LINE_AMOUNT = 12
local VERTICAL_LINE_AMOUNT = 12
local CELL_WIDTH = 77
local CELL_HEIGHT = 77
local GRID_WIDTH = 1000
local GRID_HEIGHT = 1000
local Y_OFFSET = 100
local FONT_SIZE = 28
local PADDING = 10

local GRID_VERTICAL_CENTER_POSITION = display.contentCenterY - display.contentCenterY / 2 + Y_OFFSET
local X_AXIS_METRIC_LABEL_POSITION = GRID_VERTICAL_CENTER_POSITION + (GRID_HEIGHT / 2) - FONT_SIZE + PADDING
local Y_AXIS_METRIC_LABEL_POSITION = GRID_VERTICAL_CENTER_POSITION - (GRID_HEIGHT / 2) - FONT_SIZE + PADDING

local Y_AXIS_METRIC_X_POSITION = display.contentCenterX - GRID_HEIGHT / 2 + CELL_HEIGHT - FONT_SIZE
local X_AXIS_METRIC_Y_POSITION = GRID_VERTICAL_CENTER_POSITION + GRID_WIDTH / 2 - CELL_HEIGHT + FONT_SIZE


-- Draw Background
local background = display.newRect(display.contentCenterX, GRID_VERTICAL_CENTER_POSITION, GRID_WIDTH, GRID_HEIGHT)
background:setFillColor(1)

-- Draw horizontal lines of the grid
local horizontalLines = {}
for i = 1, HORIZONTAL_LINE_AMOUNT do
    local positionY = GRID_VERTICAL_CENTER_POSITION - GRID_WIDTH / 2 + (CELL_HEIGHT * i)
    local line = display.newRect(display.contentCenterX, positionY, GRID_WIDTH - CELL_WIDTH * 2, 2)
    line:setFillColor(0)
    horizontalLines[i] = {}
    print(horizontalLines[i]);
end

-- Draw vertical lines of the grid
local verticalLines = {}
for i = 1, VERTICAL_LINE_AMOUNT do
    local positionX = display.contentCenterX - GRID_HEIGHT / 2 + (CELL_HEIGHT * i)
    local line = display.newRect(positionX, GRID_VERTICAL_CENTER_POSITION, 2, GRID_WIDTH - CELL_WIDTH * 2)
    line:setFillColor(0)
    verticalLines[i] = {}
    print(verticalLines[i]);
end

-- display x axis label
local neuronsLabel = display.newText("Neurons", display.contentCenterX, X_AXIS_METRIC_LABEL_POSITION, native.systemFont, FONT_SIZE)
neuronsLabel:setFillColor(0)

-- draw x axis metrics
for i = 1, HORIZONTAL_LINE_AMOUNT do
    local positionX = display.contentCenterX - GRID_HEIGHT / 2 + (CELL_HEIGHT * i)
    local number = display.newText(tostring(i-1), positionX, X_AXIS_METRIC_Y_POSITION,native.systemFont, FONT_SIZE)
    number:setFillColor(0)
end

--display y axis label
local weightLabel = display.newText("Weight Values", Y_AXIS_METRIC_LABEL_POSITION, GRID_VERTICAL_CENTER_POSITION, native.systemFont, FONT_SIZE)
weightLabel:setFillColor(0)
weightLabel:rotate(270)

-- draw y axis metrics
local yMetricValues = 6
for i = 1, VERTICAL_LINE_AMOUNT do
    local positionY = GRID_VERTICAL_CENTER_POSITION - GRID_WIDTH / 2 + (CELL_HEIGHT * i)
    local number = display.newText(tostring(yMetricValues), Y_AXIS_METRIC_X_POSITION, positionY, native.systemFont, FONT_SIZE)
    number:setFillColor(0)
    yMetricValues = yMetricValues - 1
end

return {
    grid = grid;
} 