local FILE_NAME = "src/data.csv"

function OpenFile()
    -- Open the file
    local file, errorString = io.open(FILE_NAME, "r")
    return {file = file, errorString = errorString}
end

function ReadFile(fileObject)
    local data = {}
    if not fileObject['file'] then
        -- Error orccured: output the cause
        print("file error: "..fileObject['errorString'])
    else
        for line in io.lines(FILE_NAME) do
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