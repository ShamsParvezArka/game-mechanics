require 'Constants'

BirdEntity = {
	x = 0,
	y = 0,
	width = 0,
	height = 0,
	dy = 0
}

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
	if (self.y + self.height < WINDOW_HEIGHT) then
		self.dy = self.dy + GRAVITY * dt
		self.y = self.y + self.dy
	end
	if (love.keyboard.isDown("space")) then
		self.dy = - ANTI_GRAVITY
		self.y = self.y + self.dy
	end
end

function BirdEntity:render()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
