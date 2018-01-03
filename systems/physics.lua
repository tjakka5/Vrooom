local Qecs   = require("qecs")
local Vector = require("vector")

local Transform = require("components.transform")
local Body      = require("components.body")

local Physics = Qecs.system({Transform, Body})

function Physics:update(dt)
   for _, e in ipairs(self.pool) do
      local transform = e:get(Transform)
      local body      = e:get(Body)

      transform.pos = transform.pos + body.velocity * dt
   end
end

return Physics
