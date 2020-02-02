if(directory_exists(string_copy(program_directory, 1, string_length(program_directory)-5) + "data/")) {
	exit;
}

randomize();

folders = ds_list_create();
files = ds_list_create();

ds_list_add(folders, "A", "B", "C");
ds_list_add(files, "f1.ini", "f2.ini");

// Generate paths

// Path 1 - Folder1/Folder2/
pos1 = irandom(ds_list_size(folders)-1);
do {
	pos2 = irandom(ds_list_size(folders)-1);
} until (pos1 != pos2);
pathArray = createArray(ds_list_find_value(folders, pos1), ds_list_find_value(folders, pos2));
paths[0] = pathArray;
ds_list_delete(folders, pos1);
if (pos1 > pos2) {
	ds_list_delete(folders, pos2);
}
else {
	ds_list_delete(folders, pos2 - 1);
}

// Path 2 - Folder1/File1.ini
pos1 = irandom(ds_list_size(files)-1);
pathArray = createArray(array_get(paths[0], 0), ds_list_find_value(files, pos1));
paths[1] = pathArray;
ds_list_delete(files, pos1);

// Path 3 - Folder3/File2.ini
pos1 = irandom(ds_list_size(folders)-1);
pos2 = irandom(ds_list_size(files)-1);
pathArray = createArray(ds_list_find_value(folders, pos1), ds_list_find_value(files, pos2));
paths[2] = pathArray;
ds_list_delete(folders, pos1);
ds_list_delete(files, pos2);


// Now make the actual files in Host OS
dirToCopyInto = string_copy(program_directory, 1, string_length(program_directory)-5) + "data";
directory_create(dirToCopyInto);
dirToCopyInto += "/";

// Path 1
directory_create(dirToCopyInto + array_get(paths[0],0));
directory_create(dirToCopyInto + array_get(paths[0],0) + "/" + array_get(paths[0],1));

// Path 2
ini_open(dirToCopyInto + array_get(paths[1],0) + "/" + array_get(paths[1],1));
ini_write_string("1", "2", "3");
ini_close();

// Path 3
directory_create(dirToCopyInto + array_get(paths[2],0));
ini_open(dirToCopyInto + array_get(paths[2],0) + "/" + array_get(paths[2],1));
ini_write_string("4", "5", "6");
ini_close();

// Put the txt files in random folders
filename
copyFile("junk files/musicideas.txt", dirToCopyInto + "musicideas.txt");
