import os

def set_wallpaper(image_path):
    os.system("gsettings set org.gnome.desktop.background picture-uri file://" + image_path)

if __name__ == "__main__":
    wallpaper_path = "./wallpaper.jpg"
    set_wallpaper(wallpaper_path)