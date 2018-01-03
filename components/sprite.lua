local Qecs = require("qecs")

return Qecs.component(function(e, texture, color)
   e.texture = texture
   e.color   = color
end)
