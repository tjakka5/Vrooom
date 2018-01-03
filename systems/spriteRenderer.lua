local Qecs = require("qecs")

local Transform = require("components.transform")
local Sprite    = require("components.sprite")

local SpriteRenderer = Qecs.system({Transform, Sprite})

function SpriteRenderer:draw()
   for _, e in ipairs(self.pool) do
      local transform = e:get(Transform)
      local sprite    = e:get(Sprite)

      local ox = sprite.texture:getWidth()  / 2
      local oy = sprite.texture:getHeight() / 2

      love.graphics.setColor(sprite.color)
      love.graphics.draw(sprite.texture, transform.pos.x, transform.pos.y, transform.rot, nil, nil, ox, oy)
   end
end

return SpriteRenderer
