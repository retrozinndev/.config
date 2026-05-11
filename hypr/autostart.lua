
-- Wiki: https://wiki.hyprland.org/Configuring/Keywords/#executing

local autostart = {
    "uwsm-app colorshell";
    "systemctl start --user hyprpolkitagent";
    "systemctl start --user gnome-keyring-daemon";

    "colorshell run -c \"tuba --gapplication-service\"";
};


hl.on("hyprland.start", function ()
    for _, cmd in ipairs(autostart) do
        hl.exec_cmd(cmd);
    end
end);
