require 'Constants'
require 'BirdEntity'

WINDOW_WIDTH  = 1200
WINDOW_HEIGHT = 900

local bird = BirdEntity:new(nil, WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2, 30, 30)

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable  = false,
		vsync = true
	})
end

function love.update(dt)
	bird:update(dt)
end

function love.draw()
	bird:render()
end
