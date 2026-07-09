local function setInvisible(character, invisible)
	for _, obj in ipairs(character:GetDescendants()) do
		if obj:IsA("BasePart") then
			obj.Transparency = invisible and 1 or 0
			obj.CanCollide = not invisible
		elseif obj:IsA("Decal") then
			obj.Transparency = invisible and 1 or 0
		end
	end
end

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		wait(5)
		setInvisible(character, true)
		wait(5)
		setInvisible(character, false)
	end)
end)
