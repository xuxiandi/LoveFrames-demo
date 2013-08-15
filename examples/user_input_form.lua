local example = {}
example.title = "User Input Form"
example.category = "Example Implementations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("User Input Form")
	frame:SetSize(500, 180)
	frame:CenterWithinArea(unpack(demo.centerarea))
	
	local text1 = loveframes.Create("text", frame)
	text1:SetPos(5, 35)
	text1:SetText("Username")
	
	local textinput1 = loveframes.Create("textinput", frame)
	textinput1:SetPos(125, 30)
	textinput1:SetWidth(370)
	
	local text2 = loveframes.Create("text", frame)
	text2:SetPos(5, 65)
	text2:SetText("E-mail")
	
	local textinput2 = loveframes.Create("textinput", frame)
	textinput2:SetPos(125, 60)
	textinput2:SetWidth(370)
	
	local text3 = loveframes.Create("text", frame)
	text3:SetPos(5, 95)
	text3:SetText("Password")
	
	local textinput3 = loveframes.Create("textinput", frame)
	textinput3:SetPos(125, 90)
	textinput3:SetWidth(370)
	
	local text4 = loveframes.Create("text", frame)
	text4:SetPos(5, 125)
	text4:SetText("Confirm Password")
	
	local textinput4 = loveframes.Create("textinput", frame)
	textinput4:SetPos(125, 120)
	textinput4:SetWidth(370)
	
	local donebutton = loveframes.Create("button", frame)
	donebutton:SetPos(5, 150)
	donebutton:SetWidth(243)
	donebutton:SetText("Done")
	donebutton.OnClick = function()
		local restultframe = loveframes.Create("frame")
		restultframe:SetSize(300, 100)
		restultframe:Center()
		restultframe:SetName("Input Form Values")
		local text = loveframes.Create("text", restultframe)
		text:SetPos(5, 30)
		text:SetText({"Username: " ..textinput1:GetValue(), " \n E-mail: " ..textinput2:GetValue(), " \n Password: " ..textinput3:GetValue(), " \n Confirm Password: " ..textinput4:GetValue()})
		text:SetMaxWidth(290)
		restultframe:SetHeight(35 + text:GetHeight())
		restultframe:SetModal(true)
		restultframe:CenterWithinArea(unpack(demo.centerarea))
	end
	
	local clearbutton = loveframes.Create("button", frame)
	clearbutton:SetPos(252, 150)
	clearbutton:SetWidth(243)
	clearbutton:SetText("Clear Form")
	clearbutton.OnClick = function()
		textinput1:Clear()
		textinput2:Clear()
		textinput3:Clear()
		textinput4:Clear()
	end
	
end

demo.RegisterExample(example)