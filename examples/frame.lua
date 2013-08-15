local example = {}
example.title = "Frame"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Frame")
	frame:CenterWithinArea(unpack(demo.centerarea))
	frame:SetIcon("resources/images/application.png")
	frame:SetDockable(true)
		
	local text = loveframes.Create("text", frame)
	text:SetText("This is an example frame.")
	text.Update = function(object, dt)
		object:CenterX()
		object:SetY(40)
	end
		
	local button = loveframes.Create("button", frame)
	button:SetText("Modal")
	button:SetWidth(100)
	button:Center()
	button.Update = function(object, dt)
		local modal = object:GetParent():GetModal()
		if modal then
			object:SetText("Remove Modal")
			object.OnClick = function()
				object:GetParent():SetModal(false)
			end
		else
			object:SetText("Set Modal")
			object.OnClick = function()
				object:GetParent():SetModal(true)
			end
		end
	end
	
end

demo.RegisterExample(example)