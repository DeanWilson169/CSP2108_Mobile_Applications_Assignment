local getDataFromFile = require'GetDataFromFile'
local dataPoints = require'dataPoints'

logData = {}
logPoints = {}
for i, d in ipairs(data) do
    local neurons = math.log(d["neurons"])
    local weight = math.log(d["weight"])
    local type = d["type"]
    logData[#logData+1] =  { neurons = neurons, weight = weight, type = type}
    for k, v in pairs(points) do
        -- local newPoint = v["point"]
        -- newPoint.x = neurons
        -- newPoint.y = weight
        -- v:removeSelf()
        -- logPoints[#logPoints+1] ={ point = newPoint }
    end
end

return {
    logData = logData,
    logPoints = logPoints
}