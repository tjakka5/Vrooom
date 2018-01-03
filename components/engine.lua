local Qecs = require("qecs")

return Qecs.component(function(e, acceleration, brakeForce, turnSpeed)
   e.acceleration = acceleration
   e.brakeForce   = brakeForce
   e.turnSpeed    = turnSpeed
end)
