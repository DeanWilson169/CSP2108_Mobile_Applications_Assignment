local FILE_NAME = "data.csv"
data = {}

-- Path for the file to read
local path = system.pathForFile(FILE_NAME, nil)
-- Open the file
local file, errorString = io.open(path, "r")

if not file then
    -- Error orccured: output the cause
    print("file error: "..errorString)
else
    for line in io.lines(path) do
        local neurons, weight, type = line:match("([^,]+),([^,]+),([^,]+)")
        dataPoint = { neurons = neurons, weight = weight, type = type }
        data[#data+1] = dataPoint
    end
    file:close()

    file = nil
end


return {
    readFile = readFile
}