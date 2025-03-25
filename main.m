% This file contains the game NIM. (https://en.wikipedia.org/wiki/Nim)

% Initialize variables
state = "game"; % game, title
board = [
    " ", " ", " ", "I", " ", " ", " ";
    " ", " ", "I", "I", "I", " ", " ";
    " ", "I", "I", "I", "I", "I", " ";
    "I", "I", "I", "I", "I", "I", "I";
    ];

% Switch statement to differentiate between title screen and game
switch state
    case "title"
        % Placeholder

    case "game"
        disp(board);
end