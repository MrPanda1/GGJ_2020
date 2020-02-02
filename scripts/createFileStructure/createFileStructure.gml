folders = ds_list_create();

ds_list_add(folders, "Robot Controls", "Motor Values", "Diagnostics", "Compiler", "Decompiler", "Secondary Storage", "IO", "Memory", "Logs", "Security");

/// Generate folder paths
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
paths[0] = ds_list_find_value(folders, folder1);
directory_create(global.dataDir + paths[0]);
ds_list_delete(folders, folder1);

// Folder 2
var folder2 = irandom(ds_list_size(folders)-1);
paths[1] = paths[0] + "/" + ds_list_find_value(folders, folder2);
directory_create(global.dataDir + paths[1]);
ds_list_delete(folders, folder2);

// Folder 3
var folder3 = irandom(ds_list_size(folders)-1);
paths[2] = paths[1] + "/" + ds_list_find_value(folders, folder3);
directory_create(global.dataDir + paths[2]);
ds_list_delete(folders, folder3);

// Folder 4
var folder4 = irandom(ds_list_size(folders)-1);
paths[3] = paths[1] + "/" + ds_list_find_value(folders, folder4);
directory_create(global.dataDir + paths[3]);
ds_list_delete(folders, folder4);

// Folder 5
var folder5 = irandom(ds_list_size(folders)-1);
paths[4] = paths[0] + "/" + ds_list_find_value(folders, folder5);
directory_create(global.dataDir + paths[4]);
ds_list_delete(folders, folder5);

// Folder 6
var folder6 = irandom(ds_list_size(folders)-1);
paths[5] = ds_list_find_value(folders, folder6);
directory_create(global.dataDir + paths[5]);
ds_list_delete(folders, folder6);

// Folder 7
var folder7 = irandom(ds_list_size(folders)-1);
paths[6] = paths[5] + "/" + ds_list_find_value(folders, folder7);
directory_create(global.dataDir + paths[6]);
ds_list_delete(folders, folder7);

// Folder 8
var folder8 = irandom(ds_list_size(folders)-1);
paths[7] = paths[6] + "/" + ds_list_find_value(folders, folder8);
directory_create(global.dataDir + paths[7]);
ds_list_delete(folders, folder8);

// Folder 9
var folder9 = irandom(ds_list_size(folders)-1);
paths[8] = paths[5] + "/" + ds_list_find_value(folders, folder9);
directory_create(global.dataDir + paths[8]);
ds_list_delete(folders, folder9);

// Folder 10
var folder10 = irandom(ds_list_size(folders)-1);
paths[9] = paths[8] + "/" + ds_list_find_value(folders, folder10);
directory_create(global.dataDir + paths[9]);
ds_list_delete(folders, folder10);

// Generate property file paths
var pathDictionary = ds_map_create();
var properties = file_text_open_read("allProperties.txt");
while (!file_text_eof(properties)) {
	var propertyName = file_text_readln(properties);
	var filepath = paths[irandom(array_length_1d(paths)-1)] + "/" + propertyName + ".txt";
	copyFile(propertyName + ".txt", filepath);
	if(propertyName = "acceleration" || propertyName = "password" || propertyName = "RadioFreq" || propertyName = "rArmPower") {
		ds_map_add(pathDictionary,propertyName, filepath);
	}
}

// Generate correct values for the useful properties
var correctValueDictionary = ds_map_create();
ds_map_add(correctValueDictionary, "acceleration", irandom_range(10,99));
ds_map_add(correctValueDictionary, "password", irandom_range(10000000,99999999));
ds_map_add(correctValueDictionary, "RadioFreq", irandom_range(100,999));
ds_map_add(correctValueDictionary, "rArmPower", irandom_range(10,99));

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
