-- Wiki: https://wiki.hyprland.org/Configuring/Keywords/#setting-the-environment

--- append a directory to the $PATH env variable
---@param path string
local function env_path_append(path)
    hl.env("PATH", os.getenv("PATH") .. ":" .. path);
end

local cursor_theme = "macOS";
local cursor_size = 24;


local home = os.getenv("HOME");
local env = {
    -- Cursor
    XCURSOR_THEME = cursor_theme;
    XCURSOR_SIZE = cursor_size;
    HYPRCURSOR_THEME = cursor_theme;
    HYPRCURSOR_SIZE = cursor_size;

    MOZ_ENABLE_WAYLAND = 1;
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";

    -- IME
    XMODIFIERS = "@im=fcitx";
    QT_IM_MODULE = "fcitx5";
    QT_IM_MODULES = "wayland;fcitx5";
    SDL_IM_MODULE = "fcitx5";

    GSK_RENDERER = "vulkan";

    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATFORMTHEME = "kde";
    QT_AUTO_SCREEN_SCALE_FACTOR = 1;

    SSH_AUTH_SOCK = os.getenv("XDG_RUNTIME_DIR") .. "/gcr/ssh";

    JAVA_HOME = "/lib/jvm/default";

    -- XDG
    XDG_CACHE_HOME = home .. "/.cache";
    XDG_DATA_HOME = home .. "/.local/share";
    XDG_CONFIG_HOME = home .. "/.config";
};

for name, val in pairs(env) do
    hl.env(name, val);
end

env_path_append(home .. "/.local/bin");
env_path_append(home .. "/.cargo/bin");
env_path_append(home .. "/node_modules/.bin");
