-- Wiki: https://wiki.hyprland.org/Configuring/Binds

-- Uncomment if you want to press SUPER to launch application search
--hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("colorshell toggle -w apps-window"));

hl.bind("SUPER + F11", hl.dsp.window.fullscreen());


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


-- Switch workspaces with SUPER + [0-9]
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }));
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }));
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }));
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }));
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }));
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }));
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }));
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }));
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }));
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }));


-- Move active window to a workspace with SUPER + SHIFT + [0-9]
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }));
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }));
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }));
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }));
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }));
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }));
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }));
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }));
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }));
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }));

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag());
hl.bind("SUPER + mouse:273", hl.dsp.window.resize());
