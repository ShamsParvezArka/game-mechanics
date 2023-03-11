anim8 = require 'lib/anim8'

Player = {
	image = 0,
	grid = 0,
	animation  = 0
}

FRAME_WIDTH = 32
FRAME_HEIGHT = 32

function Player:new(o, image)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.image = love.graphics.newImage(image) or 0
	self.grid = anim8.newGrid(FRAME_WIDTH, FRAME_HEIGHT, self.image:getWidth(), self.image:getHeight())
	self.animation = anim8.newAnimation(self.grid('1-6', 1), 0.12)
	return o
end

function Player:update(dt)
	self.animation:update(dt)
end

function Player:liveRender()
	self.animation:draw(self.image, 100, 100, nil, 4)
end

