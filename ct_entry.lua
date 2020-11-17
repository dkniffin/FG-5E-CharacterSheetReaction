function onInit()
  -- Call the parent onInit function
  super.onInit();

	local sClass, sRecord = link.getValue();
	if sClass == "charsheet" then
    local nodeChar = link.getTargetDatabaseNode();
    if nodeChar then
      -- This is the important part. Link the reaction field to the one in the character sheet
      reaction.setLink(nodeChar.createChild("reaction", "number"));
    end
	end
end
