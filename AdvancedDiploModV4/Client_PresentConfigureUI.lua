
function Client_PresentConfigureUI(rootParent)
	rootParentobj = rootParent;
	AIDeclerationinit = Mod.Settings.AllowAIDeclaration;
	if(AIDeclerationinit == nil)then
		AIDeclerationinit = false;
	end
	SeeAllyTerritoriesinit = Mod.Settings.SeeAllyTerritories;
	if(SeeAllyTerritoriesinit == nil)then
		SeeAllyTerritoriesinit = true;
	end
	DisableAlliesinit = Mod.Settings.DisableAllies;
	if(DisableAlliesinit == nil)then
		DisableAlliesinit = false;
	end
	PublicAlliesinit = Mod.Settings.PublicAllies;
	if(PublicAlliesinit == nil)then
		PublicAlliesinit = true;
	end
	AIsdeclearAIsinit = Mod.Settings.AIsdeclearAIs;
	if(AIsdeclearAIsinit == nil)then
		AIsdeclearAIsinit = false;
	end
	SanctionCardRequireWarinit = Mod.Settings.SanctionCardRequireWar;
	if(SanctionCardRequireWarinit == nil)then
		SanctionCardRequireWarinit = true;
	end
	SanctionCardRequirePeaceinit = Mod.Settings.SanctionCardRequirePeace;
	if(SanctionCardRequirePeaceinit == nil)then
		SanctionCardRequirePeaceinit = false;
	end
	SanctionCardRequireAllyinit = Mod.Settings.SanctionCardRequireAlly;
	if(SanctionCardRequireAllyinit == nil)then
		SanctionCardRequireAllyinit = false;
	end
	BombCardRequireWarinit = Mod.Settings.BombCardRequireWar;
	if(BombCardRequireWarinit == nil)then
		BombCardRequireWarinit = true;
	end
	BombCardRequirePeaceinit = Mod.Settings.BombCardRequirePeace;
	if(BombCardRequirePeaceinit == nil)then
		BombCardRequirePeaceinit = false;
	end
	BombCardRequireAllyinit = Mod.Settings.BombCardRequireAlly;
	if(BombCardRequireAllyinit == nil)then
		BombCardRequireAllyinit = false;
	end
	SpyCardRequireWarinit = Mod.Settings.SpyCardRequireWar;
	if(SpyCardRequireWarinit == nil)then
		SpyCardRequireWarinit = true;
	end
	SpyCardRequirePeaceinit = Mod.Settings.SpyCardRequirePeace;
	if(SpyCardRequirePeaceinit == nil)then
		SpyCardRequirePeaceinit = false;
	end
	SpyCardRequireAllyinit = Mod.Settings.SpyCardRequireAlly;
	if(SpyCardRequireAllyinit == nil)then
		SpyCardRequireAllyinit = false;
	end
	GiftCardRequireWarinit = Mod.Settings.GiftCardRequireWar;
	if(GiftCardRequireWarinit == nil)then
		GiftCardRequireWarinit = false;
	end
	GiftCardRequirePeaceinit = Mod.Settings.GiftCardRequirePeace;
	if(GiftCardRequirePeaceinit == nil)then
		GiftCardRequirePeaceinit = true;
	end
	GiftCardRequireAllyinit = Mod.Settings.GiftCardRequireAlly;
	if(GiftCardRequireAllyinit == nil)then
		GiftCardRequireAllyinit = true;
	end
	SeePeaceTerritoriesinit = Mod.Settings.SeePeaceTerritories;
	if(SeePeaceTerritoriesinit == nil)then
		SeePeaceTerritoriesinit = true;
	end
	ShowUI();
end
function ShowUI()
	horzlist = {};
	horzlist[0] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[0]).SetText('AI Settings');
   	horzlist[1] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	AIDeclerationcheckbox = UI.CreateCheckBox(horzlist[1]).SetText('Allow AIs to declare war on Player').SetIsChecked(AIDeclerationinit);
	horzlist[1] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	AIsdeclearAIsinitcheckbox = UI.CreateCheckBox(horzlist[1]).SetText('Allow AIs to declare war on AIs').SetIsChecked(AIsdeclearAIsinit);
	horzlist[2] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[2]).SetText(' ');
	horzlist[3] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[3]).SetText('Allianze Settings');
	horzlist[5] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	DisableAlliesCheckbox = UI.CreateCheckBox(horzlist[5]).SetText('Disable alliance system').SetIsChecked(DisableAlliesinit);
	horzlist[6] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	SeeAllyTerritoriesCheckbox = UI.CreateCheckBox(horzlist[6]).SetText('Allow Players to see the territories of their allies(requires spy card)').SetIsChecked(SeeAllyTerritoriesinit);
	horzlist[7] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	PublicAlliesCheckbox = UI.CreateCheckBox(horzlist[7]).SetText('Allow everyone to see every ally').SetIsChecked(PublicAlliesinit);
	horzlist[8] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[8]).SetText(' ');
	horzlist[9] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[9]).SetText('Card Settings');
	horzlist[10] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[10]).SetText('Sanction Card');
	horzlist[11] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSanctionCardRequireWar = UI.CreateCheckBox(horzlist[11]).SetText('Sanction Cards can be played on enemy').SetIsChecked(SanctionCardRequireWarinit);
	horzlist[12] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSanctionCardRequirePeace = UI.CreateCheckBox(horzlist[12]).SetText('Sanction Cards can be played on players you are in peace with').SetIsChecked(SanctionCardRequirePeaceinit);
	horzlist[13] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSanctionCardRequireAlly = UI.CreateCheckBox(horzlist[13]).SetText('Sanction Cards can be played on ally').SetIsChecked(SanctionCardRequireAllyinit);
	horzlist[14] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[14]).SetText(' ');
	horzlist[15] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[15]).SetText('Bomb Card');
	horzlist[16] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputBombCardRequireWar = UI.CreateCheckBox(horzlist[16]).SetText('Bomb Cards can be played on enemy').SetIsChecked(BombCardRequireWarinit);
	horzlist[17] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputBombCardRequirePeace = UI.CreateCheckBox(horzlist[17]).SetText('Bomb Cards can be played on players you are in peace with').SetIsChecked(BombCardRequirePeaceinit);
	horzlist[18] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputBombCardRequireAlly = UI.CreateCheckBox(horzlist[18]).SetText('Bomb Cards can be played on ally').SetIsChecked(BombCardRequireAllyinit);
	horzlist[19] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[19]).SetText(' ');
	horzlist[22] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[22]).SetText('Spy Card');
	horzlist[23] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSpyCardRequireWar = UI.CreateCheckBox(horzlist[23]).SetText('Spy Cards can be played on enemy').SetIsChecked(SpyCardRequireWarinit);
	horzlist[24] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSpyCardRequirePeace = UI.CreateCheckBox(horzlist[24]).SetText('Spy Cards can be played on players you are in peace with').SetIsChecked(SpyCardRequirePeaceinit);
	horzlist[25] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSpyCardRequireAlly = UI.CreateCheckBox(horzlist[25]).SetText('Spy Cards can be played on ally').SetIsChecked(SpyCardRequireAllyinit);
	horzlist[26] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[26]).SetText(' ');
	horzlist[27] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[27]).SetText('Gift Card');
	horzlist[29] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputGiftCardRequireWar = UI.CreateCheckBox(horzlist[29]).SetText('Gift Cards can be played on enemy').SetIsChecked(GiftCardRequireWarinit);
	horzlist[30] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputGiftCardRequirePeace = UI.CreateCheckBox(horzlist[30]).SetText('Gift Cards can be played on players you are in peace with').SetIsChecked(GiftCardRequirePeaceinit);
	horzlist[31] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputGiftCardRequireAlly = UI.CreateCheckBox(horzlist[31]).SetText('Gift Cards can be played on ally').SetIsChecked(GiftCardRequireAllyinit);
	horzlist[32] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(horzlist[32]).SetText('Other Settings');
	horzlist[33] = UI.CreateHorizontalLayoutGroup(rootParentobj);
	SeePeaceTerritoriesCheckbox = UI.CreateCheckBox(horzlist[33]).SetText('Allow Players to see the territories of players they are in peace with(requires spy card)').SetIsChecked(SeePeaceTerritoriesinit);
end
