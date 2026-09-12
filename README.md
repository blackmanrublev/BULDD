# BULDD
.sh script for distributing LÖVE2D games to Windows, Linux and Web

## Step 1: Install WSL

Follow [this](https://learn.microsoft.com/en-us/windows/wsl/install) guide to install using powershell

Follow [this](https://learn.microsoft.com/en-us/windows/wsl/install) one to install it manually

## Step 2: Install CLI utilities

After installing WSL, run these commands in it:

These ones updates all installed packages to their latest versions:
```bash
sudo apt update
sudo apt upgrade -y
```
<br>

These ones download the tools needed for the script to work:
```bash
sudo apt install -y unzip wget sed libfuse2
```

The first is for extracting zip files 

The second is for downloading files over the internet using the CLI

The third is for text editing

The fourth is for extracting AppImages

<br>

These ones install npm and love.js:
```bash
sudo apt install -y nodejs npm
sudo npm install -g love.js
```
Love.js is used to build the web version

## Step 3: Distribution
- Download release
<img width="800" height="299" alt="2026-04-2715-40-05-ezgif com-video-to-gif-converter" src="https://github.com/user-attachments/assets/634c7c4a-4836-408c-8817-3ce8335db0f6" />

<br>

- Create a .love of the game files with the name "game"
<img width="800" height="450" alt="2026-04-2715-04-59-ezgif com-video-to-gif-converter" src="https://github.com/user-attachments/assets/442d9f7a-08ec-4d74-befc-e3cb7b6aff1a" />

<br>

- Put BULD.zip and game.love in a folder and extract BULD.zip
<img width="764" height="604" alt="2026-04-2715-43-40-ezgif com-video-to-gif-converter" src="https://github.com/user-attachments/assets/9f8e0611-35a8-4ab5-a55f-2c6fe2580a3f" />

<br>

- Type WSL into the addressbar. This will open a terminal at the directory of the folder
<img width="1155" height="465" alt="image" src="https://github.com/user-attachments/assets/646b9c28-b994-4685-ad38-a6aa372c757e" />

<br>

- Run this in the terminal
```bash
./buildd.sh
```
And you will be required to input the name of your game twice
If there is a space in the name, use a dash ( - ) or underscore ( _ )

<br>

- All the builds will be located in this folder
<img width="977" height="303" alt="image" src="https://github.com/user-attachments/assets/04ba958c-2909-4ac8-a8ff-c4dbf078d6c0" />
