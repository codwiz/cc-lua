-- TODO: translate to lua
-- Define your own simple movement functions.
-- Define moveRight
-- Note: each function should move the hero 12 meters!
--def moveRight():
--    target = { "x": self.pos.x + 12, "y": self.pos.y }
--    while self.distanceTo(target) > 0:
--        self.move(target)

function moveRight()
    local target = { x = self.pos.x + 12, y = self.pos.y }
    while self:distanceTo(target) > 0 do
        self:move(target)
    end
end

-- Define moveLeft
function moveLeft()
    local target = { x = self.pos.x - 12, y = self.pos.y }
    while self:distanceTo(target) > 0 do
        self:move(target)
    end
end

-- Define moveUp
function moveUp()
    local target = { x = self.pos.x, y = self.pos.y + 12 }
    while self:distanceTo(target) > 0 do
        self:move(target)
    end
end

-- Define moveDown
function moveDown()
    local target = { x = self.pos.x, y = self.pos.y - 12 }
    while self:distanceTo(target) > 0 do
        self:move(target)
    end
end

-- Now, use those functions!
moveRight()
moveDown()
moveUp()
moveUp()
moveRight()

