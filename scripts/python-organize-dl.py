import os
import shutil

source_folder = "/home/b0nz1cu5/Downloads"
destination_folders = {
    "Images": [".jpg", ".png", ".gif"],
    "Documents": [".pdf", ".docx", ".txt"],
    "Videos": [".mp4", ".mov", ".avi"],
}

for file in os.listdir(source_folder):
    file_path = os.path.join(source_folder, file)
    if os.path.isfile(file_path):
        for folder, extensions in destination_folders.items():
            if any(file.endswith(ext) for ext in extensions):
                os.makedirs(os.path.join(source_folder, folder), exist_ok=True)
                shutil.move(file_path, os.path.join(source_folder, folder))

