-- Wiki: https://wiki.hyprland.org/Configuring/Binds

-- Uncomment if you want to press SUPER to launch application search
--hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("colorshell toggle -w apps-window"));

hl.bind("SUPER + F11", hl.dsp.window.fullscreen());
hl.bind(" + Print", hl.dsp.exec_cmd("colorshell screenshot"));
hl.bind("ALT + Print", hl.dsp.exec_cmd("colorshell screenshot active"));
hl.bind("SUPER + Print", hl.dsp.exec_cmd("colorshell screenshot full"));
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("colorshell runner"));
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("colorshell peek-workspaces"));


hl.bind("SUPER + N", hl.dsp.exec_cmd("colorshell toggle -w control-center"));
hl.bind("SUPER + M", hl.dsp.exec_cmd("colorshell toggle -w center-window"));
hl.bind("SUPER + L", hl.dsp.exec_cmd("colorshell lock"));
hl.bind("SUPER + V", hl.dsp.exec_cmd("colorshell runner -t '\\>'"));
hl.bind("SUPER + W", hl.dsp.exec_cmd("colorshell runner -t '\\#'"));
hl.bind("SUPER + K", hl.dsp.exec_cmd("kitty"));
hl.bind("SUPER + Q", hl.dsp.window.close());
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"));
hl.bind("SUPER + F", hl.dsp.window.float());
hl.bind("SUPER + P", hl.dsp.window.pseudo());
hl.bind("SUPER + T", hl.dsp.window.pin());
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"));
hl.bind("SUPER + R", hl.dsp.exec_cmd("hyprland-run")); -- for emergency reasons

hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("sound"));
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({
    workspace = "special:sound"
}));

hl.bind("SUPER + D", hl.dsp.workspace.toggle_special("chat"));
hl.bind("SUPER + SHIFT + D", hl.dsp.window.move({
    workspace = "special:chat"
}));

hl.bind("SUPER + H", hl.dsp.workspace.toggle_special("hide"));
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({
    workspace = "special:hide"
}));

-- Move focus with mainMod + arrow keys
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }));
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }));
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }));
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }));

-- Move windows with vim motions
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "left" }));
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "right" }));
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "up" }));
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "down" }));
hl.bind("SUPER + SHIFT + C", hl.dsp.window.center());

-- Resize windows with arrow keys / hjkl
hl.bind("SUPER + ALT + left", hl.dsp.window.resize({
    x = -60, y = 0
}), { repeating = true });
hl.bind("SUPER + ALT + down", hl.dsp.window.resize({
    x = 0, y = 60
}), { repeating = true });
hl.bind("SUPER + ALT + up", hl.dsp.window.resize({
    x = 0, y = -60
}), { repeating = true });
hl.bind("SUPER + ALT + right", hl.dsp.window.resize({
    x = 60, y = 0
}), { repeating = true });

hl.bind("SUPER + ALT + H", hl.dsp.window.resize({
    x = -60, y = 0
}), { repeating = true });
hl.bind("SUPER + ALT + J", hl.dsp.window.resize({
    x = 0, y = 60
}), { repeating = true });
hl.bind("SUPER + ALT + K", hl.dsp.window.resize({
    x = 0, y = -60
}), { repeating = true });
hl.bind("SUPER + ALT + L", hl.dsp.window.resize({
    x = 60, y = 0
}), { repeating = true });

hl.bind("CTRL + SUPER + right", hl.dsp.focus({
    workspace = "e+1"
}));
hl.bind("CTRL + SUPER + left", hl.dsp.focus({
    workspace = "e-1"
}));

-- Switch workspaces with SUPER + [1-9,0] &
-- move active window to workspace with SUPER + SHIFT + [1-9,0]
for i = 1, 10, 1 do
    local num = i >= 10 and 0 or i;

    hl.bind("SUPER + "..num, hl.dsp.focus({ workspace = i }));
    hl.bind("SUPER + SHIFT + "..num, hl.dsp.window.move({ workspace = i }));
end

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag());
hl.bind("SUPER + mouse:273", hl.dsp.window.resize());

-- Media & backlight
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("colorshell volume -d sink -m 5"), { repeating = true });
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("colorshell volume -d sink -p 5"), { repeating = true });
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("colorshell volume -d sink mute"));
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("colorshell media previous"));
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("colorshell media next"));
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("colorshell media play-pause"));

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -c backlight s 5%-"));
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -c backlight s +5%"));
