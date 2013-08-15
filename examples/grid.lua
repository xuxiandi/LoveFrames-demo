local example = {}
example.title = "Grid"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Grid")
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local grid = loveframes.Create("grid", frame)
	grid:SetPos(5, 30)
	grid:SetRows(5)
	grid:SetColumns(5)
	grid:SetCellWidth(25)
	grid:SetCellHeight(25)
	grid:SetCellPadding(5)
	grid:SetItemAutoSize(true)
		
	local id = 1
		
	for i=1, 5 do
		for n=1, 5 do
			local button = loveframes.Create("button")
			button:SetSize(15, 15)
			button:SetText(id)
			grid:AddItem(button, i, n)
			id = id + 1
		end
	end
		
	grid.OnSizeChanged = function(object)
		frame:SetSize(object:GetWidth() + 10, object:GetHeight() + 35)
		frame:Center()
	end
	
end

demo.RegisterExample(example)