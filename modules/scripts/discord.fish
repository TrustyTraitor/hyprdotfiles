#!/usr/bin/fish

$is_discord_running = flatpak ps | grep discord | wc -l

if test $is_discord_running -gt 0
    hyprctl dispatch workspace 6
else
    hyprctl dispatch workspace 6
    flatpak run com.discordapp.Discord
end
