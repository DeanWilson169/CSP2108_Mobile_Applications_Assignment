local rf = require"src/readFile"

describe('readFile.lua', function()
    it('creates a table of tables filled with data from the imported file', function()
        local obj = rf.GetDataFromFile()
        
        local expected = {
            {
                neurons = 1, 
                weight = -2.4,
                type = 'B'
            },
            {
                neurons = 2,
                weight = -2.7,
                type = 'B'
            },
            {
                neurons = 3, 
                weight = -2.07,
                type = 'B'
            },
            {
                neurons = 4, 
                weight = 2.37, 
                type = 'B'
            },
            {
                neurons = 5, 
                weight = -2.14, 
                type = 'B' 
            },
            {
                neurons = 6,  
                weight = -2.63, 
                type = 'B' 
            },
            {
                neurons = 7,  
                weight = 2.07, 
                type = 'B' 
            },
            {
                neurons = 8,  
                weight = 2.18, 
                type = 'B' 
            },
            {
                neurons = 9,  
                weight = 2.24, 
                type = 'B' 
            },
            {
                neurons = 10,  
                weight = 2.52, 
                type = 'B' 
            },
            {
                neurons = 1, 
                weight = 2.97,
                type = 'M'
            },
            {
                neurons = 2,
                weight = 2.17,
                type = 'M'
            },
            {
                neurons = 3, 
                weight = 2.36,
                type = 'M'
            },
            {
                neurons = 4, 
                weight = -2.33, 
                type = 'M'
            },
            {
                neurons = 5, 
                weight = 2.45, 
                type = 'M' 
            },
            {
                neurons = 6,  
                weight = 2.5, 
                type = 'M' 
            },
            {
                neurons = 7,  
                weight = -2.14, 
                type = 'M' 
            },
            {
                neurons = 8,  
                weight = -2.77, 
                type = 'M' 
            },
            {
                neurons = 9,  
                weight = -2.51, 
                type = 'M' 
            },
            {
                neurons = 10,  
                weight = -2.76, 
                type = 'M' 
            },
            {
                neurons = 1, 
                weight = 0.25,
                type = 'Z'
            },
            {
                neurons = 2,
                weight = 0.01,
                type = 'Z'
            },
            {
                neurons = 3, 
                weight = 0.22,
                type = 'Z'
            },
            {
                neurons = 4, 
                weight = 0.76, 
                type = 'Z'
            },
            {
                neurons = 5, 
                weight = -0.54, 
                type = 'Z' 
            },
            {
                neurons = 6,  
                weight = -0.06, 
                type = 'Z' 
            },
            {
                neurons = 7,  
                weight = -0.33, 
                type = 'Z' 
            },
            {
                neurons = 8,  
                weight = -0.25, 
                type = 'Z' 
            },
            {
                neurons = 9,  
                weight = 1.73, 
                type = 'Z' 
            },
            {
                neurons = 10,  
                weight = -0.74, 
                type = 'Z' 
            },
        }
        assert.are.equals(expected, obj)
    end)
    describe('spies', function()
        it('Checks to see if the OpenFile function was called', function() 
            assert.spy(rf.OpenFile()).was.called()
        end)
        it('Checks to see if the ReadFile function was not called', function() 
            assert.spy(rf.ReadFile()).was_not.called()
        end)
        it('Checks to see if the GetFilePath function was called', function() 
            assert.spy(rf.GetFilePath()).was.called()
        end)
        it('Checks to see if the CloseFile function was not called', function() 
            assert.spy(rf.CloseFile()).was.called()
        end)
    end)
end)