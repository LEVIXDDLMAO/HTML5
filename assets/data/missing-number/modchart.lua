function update(elapsed)
    local currentBeat = (songPos / 1000)*(bpm/90)
        if curStep > 256 and curStep < 640 then
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0)), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 8,i)
            end
        end
        if curStep > 641 and curStep < 1024 then
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.2) * math.pi) + 5, i)
                setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.2) * math.pi), i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.2) * math.pi) + 5, i)
                setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.2) * math.pi), i)
            end
        end
        if curStep > 1282 and curstep < 1411 then
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*3.5) * math.pi) + 15 ,i)
            end
        end
        if curStep > 1411 then
                setActorX(_G['defaultStrum'..i..'X'])
        end
        if curStep > 1024 and curStep < 1282 then
                setActorX(_G['defaultStrum'..i..'X'])
        end
    end
function stepHit (step)
    if curStep == 640 or curStep == 1025 or curStep == 1282 then
        for i = 0, 7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 7200000000, 100.9, 'setDefault')
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'],getActorAngle(i) + 7200000000, 100.9, 'setDefault')
        end
    end
end