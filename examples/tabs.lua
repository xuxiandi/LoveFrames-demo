local example = {}
example.title = "Tabs"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Tabs")
	frame:SetSize(500, 300)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local tabs = loveframes.Create("tabs", frame)
	tabs:SetPos(5, 30)
	tabs:SetSize(490, 265)
		
	local images = {"accept.png", "add.png", "application.png", "building.png", "bin.png", "database.png", "box.png", "brick.png"}
		
	for i=1, 20 do
		local image = "resources/images/" .. images[math.random(1, #images)]
		local panel = loveframes.Create("panel")
		panel.Draw = function()
		end
		local text1 = loveframes.Create("text", panel)
		text1:SetText("Tab " ..i)
		text1:SetAlwaysUpdate(true)
		text1.Update = function(object, dt)
			object:Center()
		end
		tabs:AddTab("Tab " ..i, panel, "Tab " ..i, image)
	end
	
end

demo.RegisterExample(example)