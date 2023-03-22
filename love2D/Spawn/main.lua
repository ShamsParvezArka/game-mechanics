require "Constants"

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = false,
		vsync = true
	})
end

function love.update(dt)
end

function love.draw()
	love.graphics.rectangle("fill", love.mouse.getX() - BOX_WIDTH / 2, love.mouse.getY() - BOX_HEIGHT / 2, BOX_WIDTH, BOX_HEIGHT)
end
