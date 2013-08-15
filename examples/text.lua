local example = {}
example.title = "Text"
example.category = "Object Demonstrations"

local loremipsum = 
[[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean laoreet massa mattis tortor faucibus non congue mauris mattis. Aliquam ultricies scelerisque mi, sit amet tempor metus pharetra vel. Etiam eu arcu a dolor porttitor condimentum in malesuada urna. Mauris vel nulla mi, quis aliquet neque. In aliquet turpis eget purus malesuada tincidunt. Donec rutrum purus vel diam suscipit vehicula. Cras sem nibh, tempus at dictum non, consequat non justo. In sed tellus nec orci scelerisque scelerisque id vitae leo. Maecenas pharetra, nibh eget commodo gravida, augue nisl blandit dui, ut malesuada augue dui nec erat. Phasellus nec mauris pharetra metus iaculis viverra sit amet ut tortor. Duis et viverra magna. Nunc orci dolor, placerat a iaculis non, mattis sed nibh. 
 
 Mauris ac erat sit amet ante condimentum scelerisque. Cras eleifend lorem dictum mi euismod non placerat lorem gravida. Vestibulum sodales dapibus eros, non iaculis risus commodo eu. Maecenas dapibus purus accumsan metus euismod suscipit. Etiam eleifend lorem eget quam ornare interdum sed at nulla. Suspendisse viverra sapien ut felis viverra pellentesque. Ut convallis hendrerit est, in imperdiet purus placerat ut. Curabitur sapien nibh, molestie et elementum a, sagittis et tortor. Vestibulum sed quam eu velit euismod rutrum vitae et sem. Morbi accumsan quam vitae sapien scelerisque tincidunt. Nulla ipsum leo, scelerisque at consequat sit amet, venenatis eget mauris. Aliquam at nibh vel lorem hendrerit dignissim. Cras et risus sit amet est vehicula auctor at a leo. Curabitur euismod mi sit amet nunc consequat sed fringilla justo sagittis. 
 
 Nulla ut arcu felis, a laoreet tellus. Vivamus ligula nibh, bibendum ut ultrices sed, ullamcorper et est. Pellentesque nisi diam, sollicitudin lacinia fermentum quis, aliquam fermentum elit. Donec egestas vestibulum mollis. Vivamus sollicitudin nisl vestibulum nisi fermentum scelerisque. Nunc enim magna, posuere ornare faucibus a, bibendum vestibulum felis. Etiam laoreet molestie elit, vitae ultrices sem faucibus in. Fusce rutrum convallis lacus, vitae scelerisque eros tincidunt sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
 
 Quisque ornare arcu sed enim sodales dictum. Suspendisse at convallis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas et nibh odio, eu lacinia lacus. Mauris at pulvinar urna. Pellentesque vel justo erat, a congue nibh. Nunc tristique mattis euismod. Suspendisse potenti. 
 
 Sed dictum faucibus cursus. Integer nisi ipsum, dapibus vel blandit laoreet, bibendum congue massa. Vestibulum tincidunt vulputate nunc, facilisis consequat lacus posuere at. Aenean sed mollis urna. Vivamus congue neque non arcu malesuada lobortis. Curabitur suscipit pretium massa eu rutrum. Nulla vehicula imperdiet dui in blandit. Curabitur vitae felis ut massa scelerisque consequat. Nulla a magna quis risus consequat hendrerit. Maecenas quis lacus sit amet ipsum condimentum interdum. Proin condimentum erat id enim elementum ut tincidunt neque vulputate.
]]

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Text")
	frame:SetSize(500, 330)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local list = loveframes.Create("list", frame)
	list:SetPos(5, 30)
	list:SetSize(490, 265)
	list:SetPadding(5)
	list:SetSpacing(5)
		
	local text = loveframes.Create("text")
	text:SetText(loremipsum)
	text:SetShadowColor(200, 200, 200, 255)
	list:AddItem(text)
		
	local shadowbutton = loveframes.Create("button", frame)
	shadowbutton:SetSize(490, 25)
	shadowbutton:SetPos(5, 300)
	shadowbutton:SetText("Toggle Text Shadow")
	shadowbutton.OnClick = function()
		text:SetShadow(not text:GetShadow())
	end
	
end

demo.RegisterExample(example)