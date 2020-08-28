
luaunit = require('luaunit-master.luaunit')

 -- Test Example:
function add (value1, value2)
    return value1 + value2
end

function testAdd()
    luaunit.assertEquals(add(5,3), 8)
    luaunit.assertEquals(add(1,1), 2)
end

function gridSize()
    display.newRect(0, 0, 0, 150, 150);
end

--os.exit( luaunit.LuaUnit.run())
