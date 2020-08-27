function feedback = bayTwo (s1, s2, turnCW, turnCCW, gatesAllUp, gatesAllDown, gatesTwoUp, gatesTwoDown)

%Bay two is second (From the left)

    %Pulley servo (Pull in cable)
    writePosition (s1, 0.5);             % Ensure pulley servo is stopped
    pause(0.5);
    writePosition (s1, 1);               %Rotate clockwise to pull in cable
    pause(gatesTwoUp)
    writePosition (s1, 0.5);             % Stop
    pause(0.5);
    
    %Positioning servo
    writePosition (s2, 0);           % Rotate counter-clockwise 
    pause(turnCCW);
    writePosition (s2, 0.5);         % Stop
    
    %Pulley servo (Let out cable)
    writePosition (s1, 0.5);             % Ensure pulley servo is stopped
    pause(0.5);
    writePosition (s1, 0);               %Rotate counter-clockwise to let out cable
    pause(gatesTwoDown)
    writePosition (s1, 0.5);             % Stop
    pause(0.5);
    
    fprintf('The aluminum disc has been sorted into bay two');
    
    feedback = 1;
end