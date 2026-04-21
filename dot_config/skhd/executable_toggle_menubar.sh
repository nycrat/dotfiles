if [ $(yabai -m config menubar_opacity | awk '{print int($1)}') -eq 0 ]; then
	yabai -m config menubar_opacity 1.0
else
	yabai -m config menubar_opacity 0.0
fi
