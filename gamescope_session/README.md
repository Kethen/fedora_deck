requires steam to be initialized once with just -gamepadui

otherwise -steamdeck mode would get stuck in the initial setup phase, while the said mode is required for gamescope integration in compositor mode

this is likely due to steamos update attempt during setup on a real deck

initialization state might be saved as cef local storage under ~/.local/share/Steam/config, not sure

to avoid issues, ideally login once with -gamepadui right after installation, before logging in in desktop mode

