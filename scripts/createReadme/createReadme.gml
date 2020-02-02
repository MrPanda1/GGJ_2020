//createReadme(args*);

switch (global.gameState) {
	case 1: copyFile("reademes/" + filename, string_copy(program_directory, 1, string_length(program_directory)-5) + @"data\" + filename)
}


filename = argument[0];
copyFile("reademes/" + filename, string_copy(program_directory, 1, string_length(program_directory)-5) + @"data\" + filename);