-- Fight enemies for 15 seconds.
-- Keep count whenever an enemy is defeated.

kills = 0
ts = self:now()
while true do
    local enemy = self:findNearestEnemy()
    if enemy then
        while enemy.health > 0 do
            self:attack(enemy)
        end
        kills = kills + 1
    end
    ts = self:now()
    if ts >= 15 then
        break
    end
end

-- Tell Naria how many enemies you defeated.
self:moveXY(58, 33)
self:say(kills)

-- Collect coins until the clock reaches 30 seconds
while true do
    local coin = self:findNearestItem()
    if coin then
        self:moveXY(coin.pos.x, coin.pos.y)
    end
    ts = self:now()
    if ts >= 30 then
        break
    end
end

-- Tell Naria how much gold you collected.
self:moveXY(58, 33)
self:say(self.gold)

-- Fight enemies until the clock reaches 45 seconds.
-- Remember to reset the count of defeated enemies!
kills = 0

while true do
    local enemy = self:findNearestEnemy()
    if enemy then
        while enemy.health > 0 do
            self:attack(enemy)
        end
        kills = kills + 1
    end
    ts = self:now()
    if ts >= 45 then
        break
    end
end

-- Tell Naria how many enemies you defeated.
self:moveXY(58, 33)
self:say(kills)

