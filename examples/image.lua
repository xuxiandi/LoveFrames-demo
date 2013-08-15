local example = {}
example.title = "Image"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Image")
	frame:SetSize(138, 315)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local image = loveframes.Create("image", frame)
	image:SetImage("resources/images/carlsagan.png")
	image:SetPos(5, 30)
		
	local panel = loveframes.Create("panel", frame)
	panel:SetPos(5, 160)
	panel:SetSize(128, 150)
		
	local text1 = loveframes.Create("text", panel)
	text1:SetPos(5, 5)
	text1:SetText("Orientation: ")
		
	local slider1 = loveframes.Create("slider", panel)
	slider1:SetPos(5, 20)
	slider1:SetWidth(118)
	slider1:SetMinMax(0, 360)
	slider1:SetDecimals(0)
	slider1.OnValueChanged = function(object)
		image:SetOrientation(object:GetValue())
	end
		
	text1.Update = function(object, dt)
		object:SetText("Orientation: " ..slider1:GetValue())
	end
		
	local text2 = loveframes.Create("text", panel)
	text2:SetPos(5, 40)
	text2:SetText("Scale")
		
	local slider2 = loveframes.Create("slider", panel)
	slider2:SetPos(5, 55)
	slider2:SetWidth(118)
	slider2:SetMinMax(1, 2)
	slider2:SetDecimals(5)
	slider2.OnValueChanged = function(object)
		image:SetScale(object:GetValue(), object:GetValue())
	end
		
	text2.Update = function(object, dt)
		object:SetText("Scale: " ..slider2:GetValue())
	end
		
	local text3 = loveframes.Create("text", panel)
	text3:SetPos(5, 75)
	text3:SetText("Offset")
		
	local slider3 = loveframes.Create("slider", panel)
	slider3:SetPos(5, 90)
	slider3:SetWidth(118)
	slider3:SetMinMax(1, 50)
	slider3:SetDecimals(5)
	slider3.OnValueChanged = function(object)
		image:SetOffset(object:GetValue(), object:GetValue())
	end
		
	text3.Update = function(object, dt)
		object:SetText("Offset: " ..slider3:GetValue())
	end
		
	local text4 = loveframes.Create("text", panel)
	text4:SetPos(5, 110)
	text4:SetText("Shear")
		
	local slider4 = loveframes.Create("slider", panel)
	slider4:SetPos(5, 125)
	slider4:SetWidth(118)
	slider4:SetMinMax(0, 10)
	slider4:SetDecimals(5)
	slider4.OnValueChanged = function(object)
		image:SetShear(object:GetValue(), object:GetValue())
	end
		
	text4.Update = function(object, dt)
		object:SetText("Shear: " ..slider4:GetValue())
	end
	
end

demo.RegisterExample(example)