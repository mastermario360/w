function onCreate()

    if not lowQuality then
        addLuaScript('lua_characters/Neo Sky')
        setProperty('Neo Sky.x', -450)
        setProperty('Neo Sky.y', 200)

        addLuaScript('lua_characters/Player Sky')
        setProperty('Player Sky.x', -650)
        setProperty('Player Sky.y', 250)

        addLuaScript('lua_characters/FL Sky')
        setProperty('FL Sky.x', -850)
        setProperty('FL Sky.y', 300)

        addLuaScript('lua_characters/RU Sky')
        setProperty('RU Sky.x', -1050)
        setProperty('RU Sky.y', 350)

        addLuaScript('lua_characters/bfbside')
        setProperty('bfbside.x', 1100)
        setProperty('bfbside.y', 400)

        addLuaScript('lua_characters/bfneo')
        setProperty('bfneo.x', 1300)
        setProperty('bfneo.y', 450)

        addLuaScript('lua_characters/bfplayer')
        setProperty('bfplayer.x', 1400)
        setProperty('bfplayer.y', 525)

        addLuaScript('lua_characters/bffl')
        setProperty('bffl.x', 1550)
        setProperty('bffl.y', 600)

        addLuaScript('lua_characters/bfrs')
        setProperty('bfrs.x', 1750)
        setProperty('bfrs.y', 675)

    end

end
    