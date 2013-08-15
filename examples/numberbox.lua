local example = {}
example.title = "Numberbox"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Numberbox")
	frame:SetSize(210, 60)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local numberbox = loveframes.Create("numberbox", frame)
	numberbox:SetPos(5, 30)
	numberbox:SetSize(200, 25)
	
end

demo.RegisterExample(example)