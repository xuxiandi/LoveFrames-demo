local example = {}
example.title = "Collapsible Category"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Collapsible Category")
	frame:SetSize(500, 300)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local panel = loveframes.Create("panel")
	panel:SetHeight(230)
		
	local collapsiblecategory = loveframes.Create("collapsiblecategory", frame)
	collapsiblecategory:SetPos(5, 30)
	collapsiblecategory:SetSize(490, 265)
	collapsiblecategory:SetText("Category 1")
	collapsiblecategory:SetObject(panel)
	
end

demo.RegisterExample(example)