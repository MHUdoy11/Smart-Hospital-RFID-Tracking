% ------------------------------------------------
% TEST 1 (FINAL FIX): OVERWRITE MODE
% ------------------------------------------------
clear; clc;

% 1. YOUR PROJECT ID
projectID = 'rfid-hospital-twin-default-rtdb'; 

% 2. URL
dbURL = ['https://' projectID '.firebaseio.com/test_data.json'];

% 3. The Data
dataStruct.message = 'Hello Unity';
dataStruct.value = randi(100); 

% 4. Send it with 'PUT' (This forces Overwrite!)
options = weboptions('RequestMethod', 'put', 'MediaType', 'application/json');

disp(['>> Sending Data to: ' dbURL]);
try
    response = webwrite(dbURL, dataStruct, options);
    disp('>> SUCCESS: Data Updated (Overwrite Mode).');
catch ME
    disp('>> ERROR:');
    disp(ME.message);
end