local example = {}
example.title = "List"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("List")
	frame:SetSize(500, 455)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local list = loveframes.Create("list", frame)
	list:SetPos(5, 30)
	list:SetSize(490, 300)
	list:SetPadding(5)
	list:SetSpacing(5)
		
	local panel = loveframes.Create("panel", frame)
	panel:SetPos(5, 335)
	panel:SetSize(490, 115)
		
	local slider1 = loveframes.Create("slider", panel)
	slider1:SetPos(5, 20)
	slider1:SetWidth(480)
	slider1:SetMinMax(0, 100)
	slider1:SetValue(5)
	slider1:SetText("Padding")
	slider1:SetDecimals(0)
	slider1.OnValueChanged = function(object2, value)
		list:SetPadding(value)
	end
		
	local text1 = loveframes.Create("text", panel)
	text1:SetPos(5, 5)
	text1:SetFont(love.graphics.newFont(10))
	text1:SetText(slider1:GetText())
		
	local text2 = loveframes.Create("text", panel)
	text2:SetFont(love.graphics.newFont(10))
	text2.Update = function(object, dt)
		object:SetPos(slider1:GetWidth() - object:GetWidth(), 5)
		object:SetText(slider1:GetValue())
	end
		
	local slider2 = loveframes.Create("slider", panel)
	slider2:SetPos(5, 60)
	slider2:SetWidth(480)
	slider2:SetMinMax(0, 100)
	slider2:SetValue(5)
	slider2:SetText("Spacing")
	slider2:SetDecimals(0)
	slider2.OnValueChanged = function(object2, value)
		list:SetSpacing(value)
	end
		
	local text3 = loveframes.Create("text", panel)
	text3:SetPos(5, 45)
	text3:SetFont(love.graphics.newFont(10))
	text3:SetText(slider2:GetText())
		
	local text4 = loveframes.Create("text", panel)
	text4:SetFont(love.graphics.newFont(10))
	text4.Update = function(object, dt)
		object:SetPos(slider2:GetWidth() - object:GetWidth(), 45)
		object:SetText(slider2:GetValue())
	end
		
	local button1 = loveframes.Create("button", panel)
	button1:SetPos(5, 85)
	button1:SetSize(237, 25)
	button1:SetText("Change List Type")
	button1.OnClick = function(object2, x, y)
		if list:GetDisplayType() == "vertical" then
			list:SetDisplayType("horizontal")
		else
			list:SetDisplayType("vertical")
		end
		list:Clear()
		for i=1, 100 do
			local button = loveframes.Create("button")
			button:SetText(i)
			list:AddItem(button)
		end
	end
		
	local button2 = loveframes.Create("button", panel)
	button2:SetPos(247, 85)
	button2:SetSize(237, 25)
	button2:SetText("Toggle Horizontal Stacking")
	button2.OnClick = function(object2, x, y)
		local enabled = list:GetHorizontalStacking()
		list:EnableHorizontalStacking(not enabled)
		list:Clear()
		for i=1, 100 do
			local button = loveframes.Create("button")
			button:SetSize(100, 25)
			button:SetText(i)
			list:AddItem(button)
		end
	end
	button2.Update = function(object)
	local displaytype = list:GetDisplayType()
		if displaytype ~= "vertical" then
			object:SetEnabled(false)
			object:SetClickable(false)
		else
			object:SetEnabled(true)
			object:SetClickable(true)
		end
	end
		
	for i=1, 100 do
		local button = loveframes.Create("button")
		button:SetText(i)
		list:AddItem(button)
	end
	
end

demo.RegisterExample(example)