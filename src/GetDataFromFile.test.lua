local luaunit = require("modules/luaunit/luaunit")
local rf = require"src/GetDataFromFile"

function TestOpenFile()
    local file = rf.OpenFile()
    luaunit.assertEquals(file["file"] ~= nil, true)
    luaunit.assertEquals(file["errorMessage"], nil)
end

function TestReadFile()
    local file = rf.OpenFile()
    local expected = {
        {
            neurons = '1',
            weight = '-2.4',
            type = 'B'
        },
        {
            neurons = '2',
            weight = '-2.7',
            type = 'B'
        },
        {
            neurons = '3',
            weight = '-2.07',
            type = 'B'
        },
        {
            neurons = '4',
            weight = '2.37',
            type = 'B'
        },
        {
            neurons = '5',
            weight = '-2.14',
            type = 'B'
        },
        {
            neurons = '6',
            weight = '-2.63',
            type = 'B'
        },
        {
            neurons = '7',
            weight = '2.07',
            type = 'B'
        },
        {
            neurons = '8',
            weight = '2.18',
            type = 'B'
        },
        {
            neurons = '9',
            weight = '2.24',
            type = 'B'
        },
        {
            neurons = '10',
            weight = '2.52',
            type = 'B'
        },
        {
            neurons = '1',
            weight = '2.97',
            type = 'M'
        },
        {
            neurons = '2',
            weight = '2.17',
            type = 'M'
        },
        {
            neurons = '3',
            weight = '2.36',
            type = 'M'
        },
        {
            neurons = '4',
            weight = '-2.33',
            type = 'M'
        },
        {
            neurons = '5',
            weight = '2.45',
            type = 'M'
        },
        {
            neurons = '6',
            weight = '2.4',
            type = 'M'
        },
        {
            neurons = '7',
            weight = '-2.14',
            type = 'M'
        },
        {
            neurons = '8',
            weight = '-2.77',
            type = 'M'
        },
        {
            neurons = '9',
            weight = '-2.51',
            type = 'M'
        },
        {
            neurons = '10',
            weight = '-2.76',
            type = 'M' 
        },
        {
            neurons = '1',
            weight = '0.25',
            type = 'Z'
        },
        {
            neurons = '2',
            weight = '0.01',
            type = 'Z'
        },
        {
            neurons = '3',
            weight = '0.22',
            type = 'Z'
        },
        {
            neurons = '4',
            weight = '0.76',
            type = 'Z'
        },
        {
            neurons = '5',
            weight = '-0.54',
            type = 'Z'
        },
        {
            neurons = '6',
            weight = '-0.06',
            type = 'Z'
        },
        {
            neurons = '7',
            weight = '-0.33',
            type = 'Z'
        },
        {
            neurons = '8',
            weight = '-0.25',
            type = 'Z'
        },
        {
            neurons = '9',
            weight = '1.73',
            type = 'Z' 
        },
        {
            neurons = '10',
            weight = '-0.74',
            type = 'Z'
        },
    }
    luaunit.assertEquals(rf.ReadFile(file), expected)
end

function TestCloseFile()
    local file = rf.OpenFile()
    luaunit.assertEquals(file["file"] ~= nil, true)
    luaunit.assertEquals(file["errorMessage"], nil)
    luaunit.assertEquals(rf.CloseFile(file["file"]), nil)
end

function TestGetDataFromFile()
    local expected = {
        {
            neurons = '1',
            weight = '-2.4',
            type = 'B'
        },
        {
            neurons = '2',
            weight = '-2.7',
            type = 'B'
        },
        {
            neurons = '3',
            weight = '-2.07',
            type = 'B'
        },
        {
            neurons = '4',
            weight = '2.37',
            type = 'B'
        },
        {
            neurons = '5',
            weight = '-2.14',
            type = 'B'
        },
        {
            neurons = '6',
            weight = '-2.63',
            type = 'B'
        },
        {
            neurons = '7',
            weight = '2.07',
            type = 'B'
        },
        {
            neurons = '8',
            weight = '2.18',
            type = 'B'
        },
        {
            neurons = '9',
            weight = '2.24',
            type = 'B'
        },
        {
            neurons = '10',
            weight = '2.52',
            type = 'B'
        },
        {
            neurons = '1',
            weight = '2.97',
            type = 'M'
        },
        {
            neurons = '2',
            weight = '2.17',
            type = 'M'
        },
        {
            neurons = '3',
            weight = '2.36',
            type = 'M'
        },
        {
            neurons = '4',
            weight = '-2.33',
            type = 'M'
        },
        {
            neurons = '5',
            weight = '2.45',
            type = 'M'
        },
        {
            neurons = '6',
            weight = '2.4',
            type = 'M'
        },
        {
            neurons = '7',
            weight = '-2.14',
            type = 'M'
        },
        {
            neurons = '8',
            weight = '-2.77',
            type = 'M'
        },
        {
            neurons = '9',
            weight = '-2.51',
            type = 'M'
        },
        {
            neurons = '10',
            weight = '-2.76',
            type = 'M' 
        },
        {
            neurons = '1',
            weight = '0.25',
            type = 'Z'
        },
        {
            neurons = '2',
            weight = '0.01',
            type = 'Z'
        },
        {
            neurons = '3',
            weight = '0.22',
            type = 'Z'
        },
        {
            neurons = '4',
            weight = '0.76',
            type = 'Z'
        },
        {
            neurons = '5',
            weight = '-0.54',
            type = 'Z'
        },
        {
            neurons = '6',
            weight = '-0.06',
            type = 'Z'
        },
        {
            neurons = '7',
            weight = '-0.33',
            type = 'Z'
        },
        {
            neurons = '8',
            weight = '-0.25',
            type = 'Z'
        },
        {
            neurons = '9',
            weight = '1.73',
            type = 'Z' 
        },
        {
            neurons = '10',
            weight = '-0.74',
            type = 'Z'
        },
    }

    local file = rf.OpenFile()
    luaunit.assertEquals(file["file"] ~= nil, true)
    luaunit.assertEquals(file["errorMessage"], nil)
    luaunit.assertEquals(rf.GetDataFromFile(), expected)
    luaunit.assertEquals(rf.CloseFile(file["file"]), nil)
end

os.exit(luaunit.LuaUnit.run())