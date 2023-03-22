require "Constants"

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = false,
		vsync = true
	})
end

vector_x = {}
vector_y = {}

function love.update(dt)
	if (love.mouse.isDown(1)) then
		table.insert(vector_x, love.mouse.getX())
		table.insert(vector_y, love.mouse.getY())
	end
end

function love.draw()
	for i = 1, #vector_x do
		love.graphics.circle("fill", vector_x[i], vector_y[i], RADIUS)
	end
end
