function feedback = bayOne (s1, s2, turnCW, turnCCW, gatesAllUp, gatesAllDown, gatesTwoUp, gatesTwoDown)

%Bay one is at the far left

    %Pulley servo
    writePosition (s1, 0.5);             % Ensure pulley servo is stopped
    pause(0.5);

    %Positioning servo
    writePosition (s2, 0);           % Rotate counter-clockwise 
    pause(turnCCW);
    writePosition (s2, 0.5);         % Stop
    
    fprintf('The steel disc has been sorted into bay one');
    
    feedback = 1;
end
