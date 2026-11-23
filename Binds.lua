local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("foot"))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("kate"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("librewolf"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("vscodium"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- wallpapers
hl.bind(mainMod .. " + CONTROL + 1", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/hollow.jpg'"))
hl.bind(mainMod .. " + CONTROL + 2", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/hollow-knight.png'"))
hl.bind(mainMod .. " + CONTROL + 3", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/dithered/marketplace.png'"))
hl.bind(mainMod .. " + CONTROL + 4", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/dithered/lighthouse.png'"))
hl.bind(mainMod .. " + CONTROL + 5", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/landscapes/evening-sky.png'"))
hl.bind(mainMod .. " + CONTROL + 6", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/landscapes/Clearday.jpg'"))
hl.bind(mainMod .. " + CONTROL + 7", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/landscapes/tropic_island_morning.jpg'"))
hl.bind(mainMod .. " + CONTROL + 8", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/os/gentoo-black-4k.png'"))
hl.bind(mainMod .. " + CONTROL + 9", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/landscapes/Cloudsnight.jpg'"))
hl.bind(mainMod .. " + CONTROL + 0", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/catppuccin-wallpapers/landscapes/shaded_landscape.png'"))

hl.bind(mainMod .. " + CONTROL + q", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/1.png'"))
hl.bind(mainMod .. " + CONTROL + w", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/2.png'"))
hl.bind(mainMod .. " + CONTROL + e", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/3.png'"))
hl.bind(mainMod .. " + CONTROL + r", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/4.png'"))
hl.bind(mainMod .. " + CONTROL + t", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/5.png'"))
hl.bind(mainMod .. " + CONTROL + y", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/6.png'"))
hl.bind(mainMod .. " + CONTROL + u", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/7.png'"))
hl.bind(mainMod .. " + CONTROL + i", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/8.png'"))
hl.bind(mainMod .. " + CONTROL + o", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/9.png'"))
hl.bind(mainMod .. " + CONTROL + p", hl.dsp.exec_cmd("hyprctl hyprpaper wallpaper 'LVDS-1, /home/robert/.config/backgrounds/tk/10.png'"))
