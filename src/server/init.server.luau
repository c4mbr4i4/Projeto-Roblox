--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GameConfig = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("GameConfig"))

print(string.format("[Server] %s v%s iniciado", GameConfig.Name, GameConfig.Version))
