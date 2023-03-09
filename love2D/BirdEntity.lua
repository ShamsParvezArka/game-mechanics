BirdEntity = {
	x = 0,
	y = 0,
	width = 0,
	height = 0,
	dy = 0
}

local GRAVITY = 20
local ANTI_GRAVITY = 5

function BirdEntity:new(o, x, y, width, height)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.x = x or 0
	self.y = y or 0
	self.width = width or 0
	self.height = height or 0
	return o
end

function BirdEntity:update(dt)
	self.dy = self.dy + GRAVITY * dt
	if (love.keyboard.isDown("space")) then
		self.dy = - ANTI_GRAVITY
	end
	self.y = self.y + self.dy
end

function BirdEntity:render()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
