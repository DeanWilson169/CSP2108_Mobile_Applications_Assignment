local FILE_NAME_WITH_PATH = "src/data.csv"
local FILE_NAME = "data.csv"

function GetFilePath()
    -- since luaunit doesnt recognise 'system' from corona sdk I had to make this work around
    -- if the system package is loaded return the absolute path if it can be found, otherwise return the defined path
    -- if the system package isn't loaded like for luaunit then just use the defined path
    -- this allows me to use luaunit and corona simultaneously
    return package.loaded[system] and (system.pathForFile(FILE_NAME, nil) or FILE_NAME_WITH_PATH) or FILE_NAME_WITH_PATH
end

function OpenFile()
    -- Open the file
    local file, errorString = io.open(GetFilePath(), "r")
    return {file = file, errorString = errorString}
end

function ReadFile(fileObject)
    local data = {}
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
    io.close(file)
    return nil
end

function GetDataFromFile()
    local file = OpenFile()
    local data = ReadFile(file)
    file = CloseFile(file["file"])
    return data
end

return {
    ReadFile = ReadFile,
    OpenFile = OpenFile,
    CloseFile = CloseFile,
    -- GetFilePath = GetFilePath,
    GetDataFromFile = GetDataFromFile
}