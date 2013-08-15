local example = {}
example.title = "Progress Bar"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Progress Bar")
	frame:SetSize(500, 160)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local progressbar = loveframes.Create("progressbar", frame)
	progressbar:SetPos(5, 30)
	progressbar:SetWidth(490)
	progressbar:SetLerpRate(10)
		
	local button1 = loveframes.Create("button", frame)
	button1:SetPos(5, 60)
	button1:SetWidth(490)
	button1:SetText("Change bar value")
	button1.OnClick = function(object2, x, y)
		progressbar:SetValue(math.random(progressbar:GetMin(), progressbar:GetMax()))
	end
		
	local button2 = loveframes.Create("button", frame)
	button2:SetPos(5, 90)
	button2:SetWidth(490)
	button2:SetText("Toggle bar lerp")
	button2.OnClick = function(object2, x, y)
		if progressbar:GetLerp() == true then
			progressbar:SetLerp(false)
		else
			progressbar:SetLerp(true)
		end
	end
		
	local slider = loveframes.Create("slider", frame)
	slider:SetPos(5, 135)
	slider:SetWidth(490)
	slider:SetText("Progressbar lerp rate")
	slider:SetMinMax(0, 50)
	slider:SetDecimals(0)
	slider:SetValue(10)
	slider.OnValueChanged = function(object2, value)
		progressbar:SetLerpRate(value)
	end
		
	local text1 = loveframes.Create("text", frame)
	text1:SetPos(5, 120)
	text1:SetText("Lerp Rate")
	text1:SetFont(love.graphics.newFont(10))
		
	local text2 = loveframes.Create("text", frame)
	text2:SetFont(love.graphics.newFont(10))
	text2.Update = function(object, dt)
		object:SetPos(slider:GetWidth() - object:GetWidth(), 120)
		object:SetText(slider:GetValue())
	end
	
end

demo.RegisterExample(example)