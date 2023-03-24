require "Constants"
local wf = require"windfield"

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = false,
		vsync = true
	})

	world = wf.newWorld(0, 0, true)
	world:setGravity(0, 512)
	world:setQueryDebugDrawing(true)

	ground = world:newRectangleCollider(0, WINDOW_HEIGHT - 30, WINDOW_WIDTH, 30)
	ground:setType("static")

	colliders = {}
end

function love.update(dt)
	if (love.mouse.isDown(1)) then
		local collider = world:newRectangleCollider(love.mouse.getX() - 30 / 2, love.mouse.getY() - 30 / 2, 30, 30)
		collider:setType("dynamic")
		table.insert(colliders, collider)
	end
	world:update(dt)
end

function love.draw()
	world:draw()
end
