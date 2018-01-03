local Qecs   = require("qecs")
local Vector = require("vector")

local Transform = require("components.transform")
local Body      = require("components.body")
local Controls  = require("components.controls")
local Engine    = require("components.engine")

local InputHandler = Qecs.system({Transform, Body, Controls, Engine})

function InputHandler:update(dt)
   for _, e in ipairs(self.pool) do
      local transform = e:get(Transform)
      local body      = e:get(Body)
      local controls  = e:get(Controls)
      local engine    = e:get(Engine)

      if love.keyboard.isDown(controls.forward) then
         local forward = Vector(math.sin(transform.rot), -math.cos(transform.rot))
         body.velocity = body.velocity + forward * engine.acceleration * dt

         if love.keyboard.isDown(controls.left) then
            transform.rot = transform.rot - engine.turnSpeed * dt
         end

         if love.keyboard.isDown(controls.right) then
            transform.rot = transform.rot + engine.turnSpeed * dt
         end
      end

      if love.keyboard.isDown(controls.brake) then
         local forward = Vector(math.sin(transform.rot), -math.cos(transform.rot))
         body.velocity = body.velocity - forward * engine.brakeForce * dt
      end
   end
end

return InputHandler
