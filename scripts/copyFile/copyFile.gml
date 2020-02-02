///copyFile(*args);

filename = argument[0]
filepath = argument[1]

fileid = file_text_open_read(filename);
text = file_text_read_string(fileid);
file_text_close(fileid);

fileid = file_text_open_write(filepath);
file_text_write_string(fileid, text);
file_text_close(fileid);