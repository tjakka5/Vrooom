local Qecs = require("qecs")

return Qecs.component(function(e, forward, left, right, brake)
   e.forward = forward
   e.left    = left
   e.right   = right
   e.brake   = brake
end)
