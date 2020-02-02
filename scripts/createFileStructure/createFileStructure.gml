folders = ds_list_create();

ds_list_add(folders, "Robot Controls", "Motor Values", "Diagnostics", "Compiler", "Decompiler", "Secondary Storage", "IO", "Memory", "Logs", "Security");

// Generate paths

/*
	Folder 1
		-> Folder 2
			-> Folder 3
			-> Folder 4
		-> Folder 5
	Folder 6
		-> Folder 7
			-> Folder 8
		-> Folder 9
			-> Folder 10
*/
 
// Folder 1
var folder1 = irandom(ds_list_size(folders)-1);
paths[0] = folder1;
directory_create(global.dataDir + paths[0]);
ds_list_delete(folders, folder1);

// Folder 2
var folder2 = irandom(ds_list_size(folders)-1);
paths[1] = paths[0] + "/" + folder2;
directory_create(global.dataDir + paths[1]);
ds_list_delete(folders, folder2);

// Folder 3
var folder3 = irandom(ds_list_size(folders)-1);
paths[2] = paths[1] + "/" + folder3;
directory_create(global.dataDir + paths[2]);
ds_list_delete(folders, folder3);

// Folder 4
var folder4 = irandom(ds_list_size(folders)-1);
paths[3] = paths[1] + "/" + folder4;
directory_create(global.dataDir + paths[3]);
ds_list_delete(folders, folder4);

// Folder 5
var folder5 = irandom(ds_list_size(folders)-1);
paths[4] = paths[0] + "/" + folder5;
directory_create(global.dataDir + paths[4]);
ds_list_delete(folders, folder5);

// Folder 6
var folder6 = irandom(ds_list_size(folders)-1);
paths[5] = folder6;
directory_create(global.dataDir + paths[5]);
ds_list_delete(folders, folder6);

// Folder 7
var folder7 = irandom(ds_list_size(folders)-1);
paths[6] = paths[5] + "/" + folder7;
directory_create(global.dataDir + paths[6]);
ds_list_delete(folders, folder7);

// Folder 8
var folder8 = irandom(ds_list_size(folders)-1);
paths[7] = paths[6] + "/" + folder8;
directory_create(global.dataDir + paths[7]);
ds_list_delete(folders, folder8);

// Folder 9
var folder9 = irandom(ds_list_size(folders)-1);
paths[8] = paths[5] + "/" + folder9;
directory_create(global.dataDir + paths[8]);
ds_list_delete(folders, folder9);

// Folder 8
var folder10 = irandom(ds_list_size(folders)-1);
paths[9] = paths[8] + "/" + folder10;
directory_create(global.dataDir + paths[9]);
ds_list_delete(folders, folder10);


//// Path 1 - Folder1/Folder2/
//pos1 = irandom(ds_list_size(folders)-1);
//do {
//	pos2 = irandom(ds_list_size(folders)-1);
//} until (pos1 != pos2);
//pathArray = createArray(ds_list_find_value(folders, pos1), ds_list_find_value(folders, pos2));
//paths[0] = pathArray;
//ds_list_delete(folders, pos1);
//if (pos1 > pos2) {
//	ds_list_delete(folders, pos2);
//}
//else {
//	ds_list_delete(folders, pos2 - 1);
//}

//// Path 2 - Folder1/File1.ini
//pos1 = irandom(ds_list_size(files)-1);
//pathArray = createArray(array_get(paths[0], 0), ds_list_find_value(files, pos1));
//paths[1] = pathArray;
//ds_list_delete(files, pos1);

//// Path 3 - Folder3/File2.ini
//pos1 = irandom(ds_list_size(folders)-1);
//pos2 = irandom(ds_list_size(files)-1);
//pathArray = createArray(ds_list_find_value(folders, pos1), ds_list_find_value(files, pos2));
//paths[2] = pathArray;
//ds_list_delete(folders, pos1);
//ds_list_delete(files, pos2);


//// Now make the actual files in Host OS
//dirToCopyInto = string_copy(program_directory, 1, string_length(program_directory)-5) + "data";
//directory_create(dirToCopyInto);
//dirToCopyInto += "/";

//// Path 1
//directory_create(dirToCopyInto + array_get(paths[0],0));
//directory_create(dirToCopyInto + array_get(paths[0],0) + "/" + array_get(paths[0],1));

//// Path 2
//ini_open(dirToCopyInto + array_get(paths[1],0) + "/" + array_get(paths[1],1));
//ini_write_string("1", "2", "3");
//ini_close();

//// Path 3
//directory_create(dirToCopyInto + array_get(paths[2],0));
//ini_open(dirToCopyInto + array_get(paths[2],0) + "/" + array_get(paths[2],1));
//ini_write_string("4", "5", "6");
//ini_close();

//// Put the txt files in random folders
//filenameString = "musicideas.txt";
//copyFile("junk files/" + filenameString, dirToCopyInto + filenameString);
//filenameString = "itsthisone.txt";
//copyFile("junk files/" + filenameString, dirToCopyInto + array_get(paths[0],0) + "/" + filenameString);
//filenameString = "space.txt";
//copyFile("junk files/" + filenameString, dirToCopyInto + array_get(paths[0],0) + "/" + filenameString);
//filenameString = "wow.txt";
//copyFile("junk files/" + filenameString, dirToCopyInto + array_get(paths[0],0) + "/" + array_get(paths[0],1) + "/" + filenameString);
//filenameString = "more_scales_and_info.txt";
//copyFile("junk files/" + filenameString, dirToCopyInto + array_get(paths[2],0) + "/" + filenameString);
