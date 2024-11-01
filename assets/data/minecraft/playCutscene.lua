playVideo = true;

function onStartCountdown()
	if isStoryMode and not seenCutscene then
		if playVideo then
			startVideo('cutscene');
			playVideo = false;
			seenCutscene = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end