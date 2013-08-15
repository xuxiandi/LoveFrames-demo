local example = {}
example.title = "Column List"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Column List")
	frame:SetSize(500, 300)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local list = loveframes.Create("columnlist", frame)
	list:SetPos(5, 30)
	list:SetSize(490, 265)
	list:AddColumn("Column 1")
	list:AddColumn("Column 2")
	list:AddColumn("Column 3")
	list:AddColumn("Column 4")
		
	for i=1, 20 do
		list:AddRow("Row " ..i.. ", column 1", "Row " ..i.. ", column 2", "Row " ..i.. ", column 3", "Row " ..i.. ", column 4")
	end
	
end

demo.RegisterExample(example)