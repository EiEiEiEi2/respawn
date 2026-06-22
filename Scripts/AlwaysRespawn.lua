local AlwaysRespawn = GameMain:GetMod("AlwaysRespawn");

function allItemsRespawn()
	print("initialized")
	xlua.private_accessible(CS.XiaWorld.FightMapMgr);
	local FightMapMgr = CS.XiaWorld.FightMapMgr.Instance;
	for name, map in pairs(FightMapMgr.MapDatas) do
		map.RemoveItem:Clear();
		map.Flags:Clear();
	end
end

AlwaysRespawn.OnInit = allItemsRespawn;