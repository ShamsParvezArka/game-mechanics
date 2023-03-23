require "Constants"
require "Player"

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = false,
		vsync = true
	})
	player = Player:new(nil, WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2, PLAYER_WIDTH, PLAYER_HEIGHT)
end

function love.update(dt)
	player:update(dt)
end

function love.draw()
	player:render()
end
