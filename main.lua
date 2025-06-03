local player = {
    x = 100,
    y = 100,
    size = 50,
    speed = 200
}

function love.load()
    love.window.setTitle("Arrow Key Movement")
    love.window.setMode(800, 600)
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed * dt
    elseif love.keyboard.isDown("left") then
        player.x = player.x - player.speed * dt
    end

    if love.keyboard.isDown("down") then
        player.y = player.y + player.speed * dt
    elseif love.keyboard.isDown("up") then
        player.y = player.y - player.speed * dt
    end
end

function love.draw()
    love.graphics.setColor(0.2, 0.6, 1)
    love.graphics.rectangle("fill", player.x, player.y, player.size, player.size)

    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Use arrow keys to move the square", 10, 10)
end
