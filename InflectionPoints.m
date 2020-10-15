function [inflectionPoints] = InflectionPoints(posArray)
    inflectionPoints = 0;
    % Take first and second derivative of position
    velArray = diff(posArray);
    accArray = diff(velArray);
    % Find points of inflection
    for i = 1:width(accArray)
        % When the current val is 0, the one before is pos, and after is
        % neg
        if( i>1 && i<width(accArray) && accArray(i) == 0 && accArray(i-1)>0 && accArray(i+1)<0)
            inflectionPoints = inflectionPoints + 1;
        % When the current val is 0, the one before is neg, and after is
        % pos
        elseif( i>1 && i<width(accArray) && accArray(i) == 0 && accArray(i-1)<0 && accArray(i+1)>0)
            inflectionPoints = inflectionPoints + 1;
        % When the current val is neg and the next is pos
        elseif(i<width(accArray) && accArray(i)<0 && accArray(i+1)>0)
            inflectionPoints = inflectionPoints + 1;
        % When the current val is pos and the next is neg
        elseif(i<width(accArray) && accArray(i)>0 && accArray(i+1)<0)
            inflectionPoints = inflectionPoints + 1;
        end
    end
    
end