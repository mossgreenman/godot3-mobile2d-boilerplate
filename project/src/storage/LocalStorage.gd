class_name LOCAL_STORAGE

# --------------------------------------------------
# Save data
func save_data(data, file_path):
	var file = File.new()
	file.open(file_path, File.WRITE)
	file.store_var(data)
	file.close()
# --------------------------------------------------

# --------------------------------------------------
# Load data
func load_data(file_path):
	var file = File.new()
	file.open(file_path, File.READ_WRITE)
	var data = file.get_var()
	file.close()
	return data
# --------------------------------------------------
