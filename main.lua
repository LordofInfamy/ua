local sp = script.Parent
local squid = workspace:FindFirstChild("Squiddy")
local game = game:WaitForChild("Workspace")
local gamestate = 0

function gameLoad()
        local target = workspace:FindFirstChild("CamBlock")
        local camera = workspace.CurrentCamera
        camera.CameraType = Enum.CameraType.Scriptable
        camera.CameraSubject = target
        local angle = 0
        LoadScreenGui = Instance.new("ScreenGUI", game.Players.LocalPlayer.GUI)
        local GuiFrame = Instance.new("Frame", ScreenGui)
        local inload = 1
        while inload do
            camera.CoordinateFrame = CFrame.new(target.Position)
                                   * CFrame.Angles(0, angle, 0)
                                   * CFrame.new(0, 0, 5)
            angle = angle + math.rad(1)
        end
   -- set GUIFrame properties right here, to be decided later on
end

function exitLoad()
    LoadScreenGUI:Destroy()
end

sq = coroutine.create(
function NewSquid()    
      for i = 0, i > 10
          local nsq = squid:Clone(workspace)
          local f = Instance.new("Fire", nsq)
          nsq.Position = Vector3.new(math.random(0, 40), 40, math.random(0,40)  
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
