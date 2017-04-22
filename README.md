# slack-loc

Update Slack status based on your location (using Wi-Fi SSID).

## Requirements

- macOS 10.12 Sierra
- Bash
- curl

## Configuration

Create `scripts/config.sh` from `scripts/config.sh.example`.

- `TOKEN`: Slack API token. See below.
- `OFFICE`: Wi-Fi SSID of your work place.
- `EMOJI_*`: Emoji notation.
- `TEXT_*`: Status text.

### Get your "Legacy" token

Here:
[https://api.slack.com/custom-integrations/legacy-tokens](https://api.slack.com/custom-integrations/legacy-tokens)

If you don't have a token, create app for integration.
- [https://api.slack.com/apps](https://api.slack.com/apps)

## Enable/Disable periodic task with `launchd` on macOS

### Enable

`./macos/enable.sh`

### Disable

`./macos/disable.sh`

## Trouble Shooting

### Doesn't working

Disable launchd job, append below lines, and enable launchd.

```
<key>StandardOutPath</key>
<string>/Users/<< USERNAME >>/stdout.txt</string>
<key>StandardErrorPath</key>
<string>/Users/<< USERNAME >>/stderr.txt</string>
```

Please post error message to [GitHub issue](https://github.com/kuy/slack-loc/issues).
