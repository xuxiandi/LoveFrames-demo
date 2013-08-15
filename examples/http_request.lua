local example = {}
example.title = "HTTP request"
example.category = "Example Implementations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("HTTP Request")
	frame:SetSize(500, 365)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local resultinput = loveframes.Create("textinput", frame)
	resultinput:SetPos(5, 30)
	resultinput:SetWidth(490)
	resultinput:SetMultiline(true)
	resultinput:SetHeight(300)
	resultinput:SetEditable(false)
	
	local urlinput = loveframes.Create("textinput", frame)
	urlinput:SetSize(387, 25)
	urlinput:SetPos(5, 335)
	urlinput:SetText("http://love2d.org")
	
	local httpbutton = loveframes.Create("button", frame)
	httpbutton:SetSize(100, 25)
	httpbutton:SetPos(frame:GetWidth() - 105, 335)
	httpbutton:SetText("Send Request")
	httpbutton.OnClick = function()
		local url = urlinput:GetValue()
		local http = require("socket.http")
		local b, c, h = http.request(url)
		if b then
			resultinput:SetText("Displaying response from " ..url.. " - status code: " ..c.. "\n\n" ..b)
		else
			resultinput:SetText("Error: HTTP request returned a nil value.")
		end
	end
	
end

demo.RegisterExample(example)