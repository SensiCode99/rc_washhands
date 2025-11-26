# rc_interact_sound

Custom InteractSound module bundled inside rc_washhands.

## Usage
- Place .ogg files in:
  modules/rc_interact_sound/client/sounds/

- Trigger sounds from other scripts using:
  TriggerServerEvent('InteractSound_SV:PlayOnSource', 'WATER_SPLASH', 0.5)

  Replace WATER_SPLASH with the filename (without extension).
  The second argument is volume (0.0–1.0).

## Events
- InteractSound_SV:PlayOnSource → plays a sound for the triggering player.
- InteractSound_SV:PlayOnAll → plays a sound for all players.

## Notes
- Ensure rc_washhands is started in server.cfg.
- Volume defaults to 1.0 if not specified.
- All sound files must be .ogg format.