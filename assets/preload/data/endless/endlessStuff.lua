function onCreate()

 	   makeLuaText('-', 'Infinite', 0, 505, 19)
 	   setTextColor('-', 'FFFFFF')
 	   makeLuaText('_', 'Fun Is Infinite !!', 0, 379, 665)
 	   setTextColor('_', 'FFFFFF')
  	  setObjectCamera('-', 'hud')
    	setObjectCamera('_', 'hud')
 	   setTextSize('_', 30)
 	   setTextSize('-', 30)
    makeLuaSprite('vg', 'BlueVG');
    setObjectCamera('vg', 'hud');
end

function onUpdate()
    if getProperty('vg.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'vg', 0, 1, 'quadInOut');
    end
end

function onTweenCompleted(tag)
    if tag == 'dothetweenvg' then
        doTweenAlpha('dothetweenvgagain', 'vg', 1, 1, 'quadInOut');
    end
end

function onStepHit()
    if curStep == 1 then
        addLuaSprite('vg', true);
        setProperty('vg.visible', false);
    end
    if curStep == 903 then 
  	     setProperty('scoreTxt.visible', false)
      	  setProperty('timeBar.visible', false)
  	     setProperty('timeTxt.visible', false)

setProperty("timeBarBG.color",getColorFromHex("0000FF"))

        addLuaText('_')	;
        addLuaText('-');
        setTextString("botplayTxt", "Fun!");
    if not lowQuality then
        setProperty('vg.visible', true);
    end
    end
    if curStep == 1688 then
        setProperty('vg.visible', false);
    end
end 






































