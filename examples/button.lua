local example = {}
example.title = "Button"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Button")
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local button = loveframes.Create("button", frame)
	button:SetWidth(200)
	button:SetText("Button")
	button:Center()
	button.OnClick = function(object, x, y)
		object:SetText("You clicked the button!")
	end
	button.OnMouseEnter = function(object)
		object:SetText("The mouse entered the button.")
	end
	button.OnMouseExit = function(object)
		object:SetText("The mouse exited the button.")
	end
	
end

demo.RegisterExample(example)