local Qecs   = require("qecs")

return Qecs.component(function(e, velocity)
   e.velocity = velocity
end)
