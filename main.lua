local Qecs   = require("qecs")
local Vector = require("vector")

local Transform = require("components.transform")
local Sprite    = require("components.sprite")
local Body      = require("components.body")
local Controls  = require("components.controls")
local Engine    = require("components.engine")

local InputHandler   = require("systems.inputHandler")
local Physics        = require("systems.physics")
local SpriteRenderer = require("systems.spriteRenderer")

local Car = require("assemblages.car")

local Instance = Qecs.instance()

Instance:addSystem(InputHandler)
Instance:addSystem(Physics)
Instance:addSystem(SpriteRenderer)

for i = 1, 6 do
   local Player = Car(Vector(1440, 1440), i, love.graphics.newImage("assets/car.png"), {255, 255, 255}, Vector(0, 0), 600, 200, 12)
   Player:give(Controls, "w", "a", "d", "s")

   Instance:addEntity(Player)
end

function love.load()
   love.graphics.setBackgroundColor(30, 30, 30)
end

function love.update(dt)
   Instance:update(dt)
end

function love.draw()
   love.graphics.scale(0.25, 0.25)
   Instance:draw()
end
