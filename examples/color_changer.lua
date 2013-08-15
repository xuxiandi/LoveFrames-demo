local example = {}
example.title = "Color Changer"
example.category = "Example Implementations"

function example.func()
	
	local color = {0, 0, 0, 255}
	
	local frame = loveframes.Create("frame")
	frame:SetName("Color Changer")
	frame:SetSize(500, 255)
	frame:CenterWithinArea(unpack(demo.centerarea))
	
	local colorbox = loveframes.Create("panel", frame)
	colorbox:SetPos(5, 30)
	colorbox:SetSize(490, 100)
	colorbox.Draw = function(object)
		love.graphics.setColor(color)
		love.graphics.rectangle("fill", object:GetX(), object:GetY(), object:GetWidth(), object:GetHeight())
		love.graphics.setColor(143, 143, 143, 255)
		love.graphics.setLineWidth(1)
		love.graphics.setLineStyle("smooth")
		love.graphics.rectangle("line", object:GetX(), object:GetY(), object:GetWidth(), object:GetHeight())
	end
	
	local slider1 = loveframes.Create("slider", frame)
	slider1:SetPos(5, 150)
	slider1:SetWidth(490)
	slider1:SetMax(255)
	slider1:SetDecimals(0)
	slider1.OnValueChanged = function(object, value)
		color[1] = value
	end
	
	local slider1name = loveframes.Create("text", frame)
	slider1name:SetPos(5, 135)
	slider1name:SetText("Red")
	
	local slider1value = loveframes.Create("text", frame)
	slider1value:SetPos(470, 135)
	slider1value.Update = function(object)
		object:SetText(slider1:GetValue())
	end
	
	local slider2 = loveframes.Create("slider", frame)
	slider2:SetPos(5, 190)
	slider2:SetWidth(490)
	slider2:SetMax(255)
	slider2:SetDecimals(0)
	slider2.OnValueChanged = function(object, value)
		color[2] = value
	end
	
	local slider2name = loveframes.Create("text", frame)
	slider2name:SetPos(5, 175)
	slider2name:SetText("Green")
	
	local slider2value = loveframes.Create("text", frame)
	slider2value:SetPos(470, 175)
	slider2value.Update = function(object)
		object:SetText(slider2:GetValue())
	end
	
	local slider3 = loveframes.Create("slider", frame)
	slider3:SetPos(5, 230)
	slider3:SetWidth(490)
	slider3:SetMax(255)
	slider3:SetDecimals(0)
	slider3.OnValueChanged = function(object, value)
		color[3] = value
	end
	
	local slider3name = loveframes.Create("text", frame)
	slider3name:SetPos(5, 215)
	slider3name:SetText("Blue")
	
	local slider3value = loveframes.Create("text", frame)
	slider3value:SetPos(470, 215)
	slider3value.Update = function(object)
		object:SetText(slider3:GetValue())
	end
	
end

demo.RegisterExample(example)