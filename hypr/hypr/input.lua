-- Wiki: https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs

hl.config {
    input = {
        kb_layout = "us";
        kb_variant = "intl";
        kb_model = "pc105";

        numlock_by_default = true;
        follow_mouse = true;

        sensitivity = 0;

        natural_scroll = true;

        touchpad = {
            natural_scroll = true;
        };
    };
};

-- Wiki: https://wiki.hyprland.org/Configuring/Variables/#gestures

hl.gesture({
    fingers = 3;
    direction = "horizontal";
    action = "workspace"
});
