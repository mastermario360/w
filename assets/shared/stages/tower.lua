function onCreate()
	-- background shit
	makeLuaSprite('bg_tower', 'bg_tower', -300, -200);
	setScrollFactor('bg_tower', 0.9, 0.9);

	makeLuaSprite('bg_tower-2', 'bg_tower-2', -300, -200);
	setScrollFactor('bg_tower-2', 0.9, 0.9);
	scaleObject('bg_tower-2', 1.8, 1.8);

	makeLuaSprite('bg_tower_ground', 'bg_tower_ground', -260, 600);
	setScrollFactor('bg_tower_ground', 1, 1);
	scaleObject('bg_tower_ground', 0.7, 0.7);
	
	makeLuaSprite('tower-ground-2', 'tower-ground-2', -260, 600);
	setScrollFactor('tower-ground-2', 1, 1);
	scaleObject('tower-ground-2', 0.7, 0.7);

	makeLuaSprite('bg_thing-2', 'bg_thing-2', -300, -100);
	setScrollFactor('bg_thing-2', 1, 1);
	
	addLuaSprite('bg_thing-2', false);
	setProperty('bg_thing-2.visible', true);
end

function onBeatHit()
	if curBeat == 88 then
		addLuaSprite('bg_tower', false);
		addLuaSprite('bg_tower_ground', false);
		setProperty('bg_tower.visible', true);
		setProperty('bg_tower_ground.visible', true);
		setProperty("bg_thing-2.visible", false);
	end
	if curBeat == 556 then
		addLuaSprite('bg_tower-2', false);
		addLuaSprite('tower-ground-2', false);
		setProperty('bg_tower.visible', false);
		setProperty('bg_tower_ground.visible', false);
		setProperty('bg_tower.visible', true);
		setProperty("tower-ground-2.visible", true);
	end
end