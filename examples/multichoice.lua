local example = {}
example.title = "Multichoice"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Multichoice")
	frame:SetSize(210, 60)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local multichoice = loveframes.Create("multichoice", frame)
	multichoice:SetPos(5, 30)
		
	for i=1, 20 do
		multichoice:AddChoice(i)
	end
	
end

demo.RegisterExample(example)