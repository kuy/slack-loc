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

Create `scripts/config.sh` from `scripts/config.sh.example` and `known_ssids` from `known_ssids.example`.

- `TOKENS`: Bash array of all Slack API tokens. See below.
- `DEFAULT_EMOJI`: Slack status emoji when no known Wi-Fi SSID can be found
- `DEFAULT_STATUS`: Slack status text when no known Wi-Fi SSID can be found
- The `known_ssids` file is a semi-colon seperated value file of the format:
	- Note: remember Slack-emoji-codes are surrounded in colons
```
SSID;EMOJI_CODE;STATUS_TEXT
```

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
