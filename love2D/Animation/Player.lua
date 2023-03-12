anim8 = require 'lib/anim8'

Player = {
	image = 0,
	x = 0,
	y = 0,
	grid = 0,
	animation  = 0
}

FRAME_WIDTH = 32
FRAME_HEIGHT = 32
WALK_SPEED = 50

function Player:new(o, image, x, y)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.image = love.graphics.newImage(image) or 0
	self.x = x or 0
	self.y = y or 0
	self.grid = anim8.newGrid(FRAME_WIDTH, FRAME_HEIGHT, self.image:getWidth(), self.image:getHeight())
	self.animation = anim8.newAnimation(self.grid('1-6', 1), 0.12)
	return o
end

function Player:update(dt)
	if (love.keyboard.isDown("d")) then
		self.x = self.x + WALK_SPEED * dt
		self.animation:update(dt)
	end
end

function Player:render()
	self.animation:draw(self.image, self.x, self.y, nil, 4)
end

