# slack-loc

Update Slack status based on your location (using Wi-Fi SSID).


## Requirements

- macOS 10.12 Sierra
- Bash
- curl

### Linux?

I'm waiting your [PR](https://github.com/kuy/slack-loc/pulls) :)


## Installation

### 1. Download

```
git clone https://github.com/kuy/slack-loc.git
cd slack-loc
```

### 2. Configure

Create `scripts/config.sh` from `scripts/config.sh.example`.

- `TOKEN`: Slack API token. See below.
- `OFFICE`: Wi-Fi SSID of your work place.
- `EMOJI_*`: Emoji notation.
- `TEXT_*`: Status text.

#### Get your "Legacy" token

Here:
[https://api.slack.com/custom-integrations/legacy-tokens](https://api.slack.com/custom-integrations/legacy-tokens)

If you don't have a token, [create new app](https://api.slack.com/apps) for an integration.

### 3. Enable

```
./macos/enable.sh
```


## Uninstall

```
./macos/disable.sh
```


## Trouble Shooting

### Doesn't working

Disable the job, append below lines, and re-enable it.

```
<key>StandardOutPath</key>
<string>/Users/<< USERNAME >>/stdout.txt</string>
<key>StandardErrorPath</key>
<string>/Users/<< USERNAME >>/stderr.txt</string>
```

Please post error message to [GitHub issue](https://github.com/kuy/slack-loc/issues).


## License

MIT


## Author

Yuki Kodama / [@kuy](https://twitter.com/kuy)
