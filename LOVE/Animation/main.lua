require 'Player'

function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	pinkMonster = Player:new(nil, "assets/pink_monster_run.png")
end


function love.update(dt)
	pinkMonster:update(dt)
end

function love.draw()
	pinkMonster:render()
end
