local example = {}
example.title = "Textinput"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Text Input")
	frame:SetSize(500, 90)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local textinput = loveframes.Create("textinput", frame)
	textinput:SetPos(5, 30)
	textinput:SetWidth(490)
	textinput.OnEnter = function(object)
		if not textinput.multiline then
			object:Clear()
		end
	end
	textinput:SetFont(love.graphics.newFont(12))
		
	local togglebutton = loveframes.Create("button", frame)
	togglebutton:SetPos(5, 60)
	togglebutton:SetWidth(490)
	togglebutton:SetText("Toggle Multiline")
	togglebutton.OnClick = function(object)
		if textinput.multiline then
			frame:SetHeight(90)
			frame:Center()
			togglebutton:SetPos(5, 60)
			textinput:SetMultiline(false)
			textinput:SetHeight(25)
			textinput:SetText("")
			frame:CenterWithinArea(unpack(demo.centerarea))
		else
			frame:SetHeight(365)
			frame:Center()
			togglebutton:SetPos(5, 335)
			textinput:SetMultiline(true)
			textinput:SetHeight(300)
			textinput:SetText("")
			frame:CenterWithinArea(unpack(demo.centerarea))
		end
	end
	
end

demo.RegisterExample(example)