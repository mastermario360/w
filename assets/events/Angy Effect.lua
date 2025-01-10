enabled_angy = false

function onCreate()
    math.randomseed(score)
end
function onEvent(name, value1, value2)
	if name == 'Angy Effect' then
        enabled_angy = not enabled_angy

        if enabled_angy then

            doTweenAlpha('angynesseffectalpha', 'angynesseffect', 1, 0.5, 'linear')

        else

            doTweenAngle('camHUDangle', 'camHUD', 0, 0.01, 'linear')

        end

    end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    if enabled_angy then
        doTweenZoom('zoomhit', 'camGame', 0.9, 0.01, 'linear')
    end
end

function onTweenCompleted(tag)
    if tag == 'zoomhit' then
        doTweenZoom('zoomback', 'camGame', 0.8, 0.05, 'linear')
    end
end

function onStepHit()
    if enabled_angy then
        doTweenAlpha('angynesseffectalpha', 'angynesseffect', math.random(), 0.01, 'linear')
        doTweenAngle('camHUDangle', 'camHUD', math.random(2,-2), 0.01, 'linear')
    else
        doTweenAlpha('angynesseffectalpha', 'angynesseffect', 0, 0.01, 'linear')
    end
end