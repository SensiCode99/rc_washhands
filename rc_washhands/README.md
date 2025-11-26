# rc_washhands

Immersive hand‑washing interaction resource for FiveM, bundled with a custom InteractSound module.

## Features
- Interactive sink zones using ox_target.
- Plays custom sound (WATER_SPLASH.ogg) via rc_interact_sound.
- Emotes (/e cleanhands, /e shakeoff) for immersion.
- 5‑second progress bar with cancel support.
- Random hygiene messages for flavor.
- Graceful cancel handling with notifications.

## Installation
1. Download or clone this repo into your server's resources folder.
2. Add the following line to your server.cfg:
   ensure rc_washhands
3. Done — sinks are ready to use!

## Configuration
- Edit sink locations in client/washhands.lua:
  local sinks = {
      vec3(-1197.54, -902.83, 13.62), -- Example 1
      vec3(-1201.20, -901.70, 14.30), -- Example 2
      vec3(-1195.10, -897.40, 14.30), -- Example 3
  }

- Add .ogg sound files to:
  modules/rc_interact_sound/client/sounds/

## Dependencies
- ox_lib
- ox_target
- oxmysql
- NativeUI
- Emote system such as RPEmotes or DPEmotes (/e cleanhands, /e shakeoff)

## Credits
- rc_washhands by SensiCode99
- rc_interact_sound adapted from InteractSound, bundled for convenience