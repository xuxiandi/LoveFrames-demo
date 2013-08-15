local example = {}
example.title = "Slider"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Slider")
	frame:SetSize(300, 275)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local slider1 = loveframes.Create("slider", frame)
	slider1:SetPos(5, 30)
	slider1:SetWidth(290)
	slider1:SetMinMax(0, 100)
		
	local slider2 = loveframes.Create("slider", frame)
	slider2:SetPos(5, 60)
	slider2:SetHeight(200)
	slider2:SetMinMax(0, 100)
	slider2:SetButtonSize(20, 10)
	slider2:SetSlideType("vertical")
	slider2.Update = function(object, dt)
		object:CenterX()
	end
	
end

demo.RegisterExample(example)