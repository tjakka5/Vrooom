local Qecs = require("qecs")

local Transform = require("components.transform")
local Sprite    = require("components.sprite")
local Body      = require("components.body")
local Engine    = require("components.engine")

return Qecs.assemblage(function(e, pos, rot, texture, color, velocity, acceleration, brakeForce, turnSpeed)
   e:give(Transform, pos, rot)
   e:give(Sprite,    texture, color)
   e:give(Body,      velocity)
   e:give(Engine,    acceleration, brakeForce, turnSpeed)
end)
