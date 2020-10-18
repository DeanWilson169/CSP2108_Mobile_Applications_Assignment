-- Currently the grid only displays correctly on a Iphone X, a Samsung S5, and some tablets at zoom level 3

local HORIZONTAL_LINE_AMOUNT = 12
local VERTICAL_LINE_AMOUNT = 12
local SCREEN_SIZE =  display.contentHeight / display.contentWidth

local X_AXIS_OFFSET = 20
local Y_AXIS_OFFSET = (display.contentHeight / 2) / 8

local FONT_SIZE = SCREEN_SIZE * 12
local PADDING = SCREEN_SIZE * 5

local GRID_SIZE = SCREEN_SIZE + 1000
local CELL_SIZE = GRID_SIZE / 13
local GRID_CENTER_POSITION = display.contentCenterY - display.contentCenterY / 2 + Y_AXIS_OFFSET
local X_AXIS_METRIC_LABEL_POSITION = GRID_CENTER_POSITION + (GRID_SIZE / 2) - FONT_SIZE + PADDING
local Y_AXIS_METRIC_LABEL_POSITION = display.contentCenterX - (GRID_SIZE / 2) + FONT_SIZE - PADDING

local Y_AXIS_METRIC_X_POSITION = display.contentCenterX - GRID_SIZE / 2 + CELL_SIZE - FONT_SIZE
local X_AXIS_METRIC_Y_POSITION = GRID_CENTER_POSITION + GRID_SIZE / 2 - CELL_SIZE + FONT_SIZE


-- Draw Background
local background = display.newRect(display.contentCenterX, GRID_CENTER_POSITION, GRID_SIZE, GRID_SIZE)
background:setFillColor(1)

-- Draw horizontal lines of the grid
local horizontalLines = {}
for i = 1, HORIZONTAL_LINE_AMOUNT do
    local positionY = GRID_CENTER_POSITION - GRID_SIZE / 2 + (CELL_SIZE * i)
    local line = display.newRect(display.contentCenterX, positionY, GRID_SIZE - CELL_SIZE * 2, 2)
    line:setFillColor(0)
    horizontalLines[i] = {}
end

-- Draw vertical lines of the grid
local verticalLines = {}
for i = 1, VERTICAL_LINE_AMOUNT do
    local positionX = display.contentCenterX - GRID_SIZE / 2 + (CELL_SIZE * i)
    local line = display.newRect(positionX, GRID_CENTER_POSITION, 2, GRID_SIZE - CELL_SIZE * 2)
    line:setFillColor(0)
    verticalLines[i] = {}
end

-- display x axis label
local neuronsLabel = display.newText("Neurons", display.contentCenterX, X_AXIS_METRIC_LABEL_POSITION, native.systemFont, FONT_SIZE)
neuronsLabel:setFillColor(0)

-- draw x axis metrics
for i = 1, HORIZONTAL_LINE_AMOUNT do
    local positionX = display.contentCenterX - GRID_SIZE / 2 + (CELL_SIZE * i)
    local number = display.newText(tostring(i-1), positionX, X_AXIS_METRIC_Y_POSITION,native.systemFont, FONT_SIZE)
    number:setFillColor(0)
end

--display y axis label
local weightLabel = display.newText("Weight Values", Y_AXIS_METRIC_LABEL_POSITION, GRID_CENTER_POSITION, native.systemFont, FONT_SIZE)
weightLabel:setFillColor(0)
weightLabel:rotate(270)

-- draw y axis metrics
local yMetricValues = 6
for i = 1, VERTICAL_LINE_AMOUNT do
    local positionY = GRID_CENTER_POSITION - GRID_SIZE / 2 + (CELL_SIZE * i)
    local number = display.newText(tostring(yMetricValues), Y_AXIS_METRIC_X_POSITION, positionY, native.systemFont, FONT_SIZE)
    number:setFillColor(0)
    yMetricValues = yMetricValues - 1
end

return {
    grid = grid;
} 