local FILE_NAME = "data.csv"
local data = {}
local system = require"system"


function GetFilePath()
    -- Path for the file to read
    local path = system.pathForFile(FILE_NAME, nil)
    return path
end

function OpenFile()
    -- Open the file
    local file, errorString = io.open(GetFilePath(), "r")
    return {file = file, errorString = errorString}
end

function ReadFile(fileObject)
    if not fileObject['file'] then
        -- Error orccured: output the cause
        print("file error: "..fileObject['errorString'])
    else
        for line in io.lines(GetFilePath()) do
            local neurons, weight, type = line:match("([^,]+),([^,]+),([^,]+)")
            local dataPoint = { neurons = neurons, weight = weight, type = type }
            data[#data+1] = dataPoint
        end

    end   

    return data
end

function CloseFile(file)
    file:close()
    return nil
end

function GetDataFromFile()
    local file = OpenFile()
    local data = ReadFile(file)
    file = CloseFile(file)
    return data
end


return {
    ReadFile = ReadFile,
    OpenFile = OpenFile,
    CloseFile = CloseFile,
    GetFilePath = GetFilePath,
    GetDataFromFile = GetDataFromFile
}