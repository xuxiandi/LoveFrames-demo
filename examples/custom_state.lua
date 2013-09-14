local example = {}
example.title = "Custom State"
example.category = "Example Implementations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Custom State")
	frame:SetWidth(500)
	frame:Center()
	frame:ShowCloseButton(false)
	
	local text = loveframes.Create("text", frame)
	text:SetText("Love Frames is now in a custom state. The objects that you are currently seeing are registered with this custom state and will only be visible while the state is active. All the objects that you were able to see before the state was activated still exist, they just won't be visible until the custom state is deactivated.")
	text:SetMaxWidth(490)
	text:SetPos(5, 30)
	
	local button = loveframes.Create("button", frame)
	button:SetWidth(490)
	button:SetText("Return to main state")
	button:Center()
	button.OnClick = function(object, x, y)
		loveframes.SetState("none")
		frame:Remove()
	end
	
	button:SetY(text:GetHeight() + 35)
	frame:SetHeight(text:GetHeight() + 65)
	frame:SetState("newstate")
	
	loveframes.SetState("newstate")
	
end

demo.RegisterExample(example)