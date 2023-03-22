Point = {
	x = 0,
	y = 0,
	radius = 0
}

function Point:spawn (o, x, y)
	o = o or {}
	setmetatable(o, self)
	self.__index = self 
	self.x = x or 0
	self.y = y or 0
	return o
end
