echo "Enter Game Name:"
read name

cat love.exe game.love > builds/windows/$name.exe

./love-11.5-x86_64.AppImage --appimage-extract
cat squashfs-root/bin/love game.love > squashfs-root/bin/$name

chmod +x squashfs-root/bin/game
rm squashfs-root/bin/love

sed -i 's|#FUSE_PATH="$APPDIR/my_game.love"|FUSE_PATH="$APPDIR/game.love"|g' "squashfs-root/AppRun"
sed -i 's|#FUSE_PATH="$APPDIR/my_game"|FUSE_PATH="$APPDIR/game"|g' "squashfs-root/AppRun"
sed -i 's|exec "$APPDIR/bin/love" "$@"|exec "$APPDIR/bin/game" "$@"|g' "squashfs-root/AppRun"
sed -i 's|exec "$APPDIR/bin/love" --fused "$FUSE_PATH" "$@"|exec "$APPDIR/bin/game" --fused "$FUSE_PATH" "$@"|g' "squashfs-root/AppRun"
sed -i 's/Exec=love %f/Exec=game %f/g' "squashfs-root/love.desktop"

./appimagetool.AppImage squashfs-root ./builds/linux/$name.AppImage

love.js game.love ./builds/web -c


sed -i 's|color: rgb( 11, 86, 117 );|color: rgb( 58, 108, 154 );|g' "builds/web/theme/love.css"
sed -i 's|color: rgb( 28, 78, 104 );|color: rgb( 58, 108, 154 );|g' "builds/web/theme/love.css"
sed -i 's|background-color: rgb( 154, 205, 237 );|background-color: rgb( 10, 10, 10 );|g' "builds/web/theme/love.css"

sed -i '/background-image: url(bg.png);/d' "builds/web/theme/love.css"
sed -i '/<h1>Game</h1>/d' "builds/web/index.html"

unzip LOVE.zip -d ./builds/windows
unzip inc.zip -d ./builds/web