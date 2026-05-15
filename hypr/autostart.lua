
-- Wiki: https://wiki.hyprland.org/Configuring/Keywords/#executing

local autostart = {
    "colorshell";
    "systemctl start --user hyprpolkitagent";
    "systemctl start --user gnome-keyring-daemon";

    "tuba --gapplication-service";
    "fcitx5";
};


hl.on("hyprland.start", function ()
    for _, cmd in ipairs(autostart) do
        hl.exec_cmd(cmd);
    end

    -- support xdg autostart (no uwsm)
    local dirs = {
        os.getenv("XDG_CONFIG_HOME") .. "/autostart",
        "/etc/xdg/autostart"
    };

    for _, dir in ipairs(dirs) do
        hl.exec_cmd(
            "bash -c 'for entry in `find \"" .. dir .. "\" -type f -name \"*.desktop\"`; do gio launch $entry; done'"
        );
    end
end);
