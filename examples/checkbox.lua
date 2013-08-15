local example = {}
example.title = "Checkbox"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Checkbox")
	frame:SetHeight(85)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local checkbox1 = loveframes.Create("checkbox", frame)
	checkbox1:SetText("Checkbox 1")
	checkbox1:SetPos(5, 30)
		
	local checkbox2 = loveframes.Create("checkbox", frame)
	checkbox2:SetText("Checkbox 2")
	checkbox2:SetPos(5, 60)
	
end

demo.RegisterExample(example)