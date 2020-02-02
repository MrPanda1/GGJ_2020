// Check to see if data folder already exists. If it does, terminate script.
if(directory_exists(string_copy(program_directory, 1, string_length(program_directory)-5) + "data/")) {
	exit;
}

// Make sure each generation of the data folder is unique
randomize();

// Create data directory and set path as global variable
var dataDir = string_copy(program_directory, 1, string_length(program_directory)-5) + "data";
directory_create(dataDir);
global.dataDir = dataDir + @"\";

// Create the Properties file in Data Folder
createPropertiesFile();

// Create the folder structure within the data table
createFileStructure();