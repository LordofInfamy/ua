local sp = script.Parent
local squid = workspace:FindFirstChild("Squiddy")

function NewSquid()
    for i = 0, i > 10
        local nsq = squid:Clone(workspace)
        local f = Instance.new("Fire", nsq)
        nsq.Position = Vector3.new(math.random(0, 40), 40, math.random(0,40))
        nsq.Velocity= Vector3.new(math.random(-100, 100), -100, math.random(-100, 100))
    end
end
