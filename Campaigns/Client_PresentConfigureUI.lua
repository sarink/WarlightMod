
function Client_PresentConfigureUI(rootParent)
	PubRoot=rootParent;
	local initialValue1 = Mod.Settings.Campaign;
	if initialValue1 == nil then initialValue1 = {}; end
	
	lineCount=0;
	lines = {};
	fields = {};
	adresses = {};
	
        vert1 = UI.CreateVerticalLayoutGroup(PubRoot);
	UI.CreateLabel(vert1).SetText('Your Campaign. Enter Commands.');
	horz=UI.CreateHorizontalLayoutGroup(vert1);
	button1 = UI.CreateButton(horz);
	button1.SetText('Add Line');
	button1.SetOnClick(AddLine);
	button2 = UI.CreateButton(horz);
	button2.SetText('Delete Line');
	button2.SetOnClick(DeleteLine);
	numbin1 = UI.CreateNumberInputField(horz).SetValue(1).SetPreferredWidth(50).SetPreferredHeight(30).SetSliderMinValue(1).SetSliderMaxValue(1);
	lineCount=lineCount+1;
	lines[lineCount]=UI.CreateHorizontalLayoutGroup(PubRoot);
	local Numberindex=UI.CreateLabel(lines[lineCount]).SetText('l'..lineCount..':');
	fields[lineCount] = UI.CreateTextInputField(lines[lineCount]).SetPreferredWidth(500).SetPreferredHeight(30).SetPlaceholderText('Add Command').SetFlexibleHeight(1);
	

end

function AddLine()
	lineCount=lineCount+1;
	lines[lineCount]=UI.CreateHorizontalLayoutGroup(PubRoot);
	adresses[lineCount]=UI.CreateLabel(lines[lineCount]).SetText('l'..lineCount..':');
	fields[lineCount] = UI.CreateTextInputField(lines[lineCount]).SetPreferredWidth(500).SetPreferredHeight(30).SetPlaceholderText('Add Command').SetFlexibleHeight(1);
	local numbinValue=numbin1.GetValue();
	print(numbinValue);
	UI.Destroy(numbin1);
	numbin1 = UI.CreateNumberInputField(horz).SetSliderMinValue(1).SetSliderMaxValue(lineCount).SetValue(numbinValue).SetPreferredWidth(50).SetPreferredHeight(30);
end
function DeleteLine()
	lineCount=lineCount-1;
	--UI.Destroy(lines[numbin1.GetValue()]);
	local numbinValue=numbin1.GetValue();
	print(numbinValue);
	UI.Destroy(numbin1);
	numbin1 = UI.CreateNumberInputField(horz).SetSliderMinValue(1).SetSliderMaxValue(lineCount).SetValue(numbinValue).SetPreferredWidth(50).SetPreferredHeight(30);
	for i=1,lineCount+1,1 do
		print('i:'..i);
		if(i>numbinValue) then
			print('Accepted i:'..i);
			--if (i-1>numbinValue) then
			UI.Destroy(lines[i-1]);
			--end
			lines[i-1]=UI.CreateHorizontalLayoutGroup(PubRoot);
			adresses[i-1]=UI.CreateLabel(lines[i-1]).SetText('l'..(i-1)..':');
			fields[i-1] = UI.CreateTextInputField(lines[i-1]).SetPreferredWidth(500).SetPreferredHeight(30).SetText(fields[i].GetText()).SetFlexibleHeight(1);
	
			if(i==lineCount+1)then
				print('Deleted i:'..i);
				lines[i]=nil;
				UI.Destroy(lines[i]);
			end
		end		
	end
end


