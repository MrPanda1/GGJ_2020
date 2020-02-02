/* 
	Array[0] = rArmPower
	Array[1] = RadioFreq
	Array[2] = password
	Array[3] = acceleration
*/

var pathsCorrect = createArray(false, false, false, false);
var valuesCorrect = createArray(false, false, false, false);

/// Check to see if values in properties.ini are correct

ini_open(global.dataDir + "properties.ini");

// rArmPower
if(ini_read_string("paths","tCtoRqyg", "N/A") = ds_map_find_value(global.correctPaths,"rArmPower")) {
	pathsCorrect[0] = true;
} else {
	pathsCorrect[0] = false;
}

// RadioFreq
if(ini_read_string("paths","TcfkqHtg", "N/A") = ds_map_find_value(global.correctPaths,"RadioFreq")) {
	pathsCorrect[1] = true;
} else {
	pathsCorrect[1] = false;
}

// password
if(ini_read_string("paths","rcuuyqtf", "N/A") = ds_map_find_value(global.correctPaths,"password")) {
	pathsCorrect[2] = true;
} else {
	pathsCorrect[2] = false;
}

// acceleration
if(ini_read_string("paths","ceegngtc", "N/A") = ds_map_find_value(global.correctPaths,"acceleration")) {
	pathsCorrect[3] = true;
} else {
	pathsCorrect[3] = false;
}

ini_close();

/// Check to see if the values in the .txt files are correct

// rArmPower
var rArmPowerFile = file_text_open_read(ds_map_find_value(global.correctPaths,"rArmPower"));
if(ds_map_find_value(global.correctValues,"rArmPower") = file_text_read_string(rArmPowerFile)) {
	valuesCorrect[0] = true;
} else {
	valuesCorrect[0] = false;
}
file_text_close(rArmPowerFile);

// RadioFreq
var RadioFreqFile = file_text_open_read(ds_map_find_value(global.correctPaths,"RadioFreq"));
if(ds_map_find_value(global.correctValues,"RadioFreq") = file_text_read_string(RadioFreqFile)) {
	valuesCorrect[1] = true;
} else {
	valuesCorrect[1] = false;
}
file_text_close(RadioFreqFile);

// password
var passwordFile = file_text_open_read(ds_map_find_value(global.correctPaths,"password"));
if(ds_map_find_value(global.correctValues,"password") = file_text_read_string(passwordFile)) {
	valuesCorrect[2] = true;
} else {
	valuesCorrect[2] = false;
}
file_text_close(passwordFile);

// accleration
var accelerationFile = file_text_open_read(ds_map_find_value(global.correctPaths,"acceleration"));
if(ds_map_find_value(global.correctValues,"acceleration") = file_text_read_string(accelerationFile)) {
	valuesCorrect[3] = true;
} else {
	valuesCorrect[3] = false;
}
file_text_close(accelerationFile);


// If both the path and value is correct, mark the section as complete
for (var i = 0; i < 4; i++) {
	global.SectionComplete[i] = pathsCorrect[i] && valuesCorrect[i];
}