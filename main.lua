local sp = script.Parent
local squid = workspace:FindFirstChild("Squiddy")

sq = coroutine.create(
function NewSquid()    
        for i = 0, i > 10
            local nsq = squid:Clone(workspace)
            local f = Instance.new("Fire", nsq)
            nsq.Position = Vector3.new(math.random(0, 40), 40, math.random(0,40))
            nsq.Velocity= Vector3.new(math.random(-100, 100), -100, math.random(-100, 100))
        wait(5)
        nsq.Transparency = 1
        nsq.Anchored = true
        wait(0.5)
        nsq:Destroy()
        end
    end)
end
coroutine.start(sq)
