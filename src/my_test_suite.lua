require 'busted.runner'()
local Grid = require"grid"
local Add = require"add"

describe('add.lua', function() 
    assert.are.equals(Add(40, 10), 400)
end)


function testAdd()
    luaunit.assertEquals(add(40, 10), 400)
end


function testGrid()

end

os.exit( luaunit.LuaUnit.run() )