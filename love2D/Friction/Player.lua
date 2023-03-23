Player = {
	x = 0,
	y = 0,
	width = 0,
	height = 0
}

function Player:new(o, x, y, width, height)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.x = x or 0
	self.y = y or 0
	self.width = width or 0
	self.height = height or 0
	return o
end

velocity_x = 0
velocity_y = 0

function Player:update(dt)
	if (love.mouse.isDown(1)) then
		velocity = math.sqrt((love.mouse.getX() - self.x) ^ 2 + (love.mouse.getY() - self.y) ^ 2) * dt * 3
		velocity_x = velocity
		velocity_y = velocity
	end

	--if (self.x + self.width >= WINDOW_WIDTH) then
	--	velocity_x = -velocity_x
	--	self.x = WINDOW_WIDTH - self.width
	--elseif (self.x <= 0) then
	--	velocity_x = -velocity_x
	--	self.x = 0
	--elseif (self.y + self.height >= WINDOW_HEIGHT) then
	--	velocity_y = -velocity_y
	--	self.y = WINDOW_HEIGHT - self.height
	--elseif (self.y <= 0) then
	--	velocity_y = -velocity_y
	--	self.y = 0
	--end
	--self.x = self.x + velocity_x
	--self.y = self.y + velocity_y

end

function Player:render()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
