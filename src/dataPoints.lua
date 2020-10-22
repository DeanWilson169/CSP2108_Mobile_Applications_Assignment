local getDataFromFile = require'GetDataFromFile'

local SCREEN_SIZE =  display.contentHeight / display.contentWidth
local GRID_SIZE = SCREEN_SIZE + 1000
local CELL_SIZE = GRID_SIZE / 13
local Y_AXIS_OFFSET = (display.contentHeight / 2) / 8
local GRID_CENTER_POSITION = display.contentCenterY - display.contentCenterY / 2 + Y_AXIS_OFFSET
local POINT_SIZE = 10
local GRID_START_POSITION_X = display.contentCenterX - (GRID_CENTER_POSITION / 2) - (CELL_SIZE / 2) - (POINT_SIZE / 2)
local GRID_START_POSITION_Y = GRID_CENTER_POSITION  + (CELL_SIZE / 2)

Points = {}

function DisplayPointsOnScreen()
    local data = GetDataFromFile()
    ClearDataPoints()
    for i, d in ipairs(data) do
        -- print(i, d["neurons"], d["weight"], d["type"])
        local newPoint = display.newCircle(GRID_START_POSITION_X + CELL_SIZE * d["neurons"], GRID_START_POSITION_Y + CELL_SIZE * d["weight"] , POINT_SIZE)
        if d["type"] == "B" then
            newPoint:setFillColor(0,0,1)
        elseif d["type"] == "M" then
            newPoint:setFillColor(1,0,0)
        elseif d["type"] == "Z" then
            newPoint:setFillColor(0,1,0)
        end
        Points[#Points+1] = { point = newPoint } 
    end
end

function ClearDataPoints()
    Points = {}
end


return {
    DisplayPointsOnScreen = DisplayPointsOnScreen();
}