//createReadme(args*);

filename = argument[0];
copyFile(filename, string_copy(program_directory, 1, string_length(program_directory)-5) + "data/" + filename);