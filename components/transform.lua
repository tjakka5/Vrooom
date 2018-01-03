local Qecs = require("qecs")

return Qecs.component(function(e, pos, rot)
   e.pos = pos
   e.rot = rot
end)
