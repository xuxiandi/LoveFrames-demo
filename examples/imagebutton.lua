local example = {}
example.title = "Image Button"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Image Button")
	frame:SetSize(138, 163)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local imagebutton = loveframes.Create("imagebutton", frame)
	imagebutton:SetImage("resources/images/carlsagan.png")
	imagebutton:SetPos(5, 30)
	imagebutton:SizeToImage()
	
end

demo.RegisterExample(example)