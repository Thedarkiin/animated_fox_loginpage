# Foxy Login Screen

A self-contained, single-file login page with an interactive fox mascot. The mascot reacts to user input: she blinks, closes her eyes during password entry, and changes expressions based on login success or failure. All assets and code are contained within a single `.html` file.

![Login screen](docs/login-light.png)

## Features

* **Interactive character:** Six expressions that transition smoothly.
* **Idle animations:** Random blinking and a sleepy state after 10 seconds of inactivity.
* **Password feedback:** She closes her eyes while you type and reacts when Caps Lock is enabled.
* **Login validation:** Displays a grumpy expression on incorrect passwords and a welcome screen on success.
* **Single file deployment:** All images are embedded, allowing offline usage and easy hosting.

### Expressions

![Expressions](docs/expressions.png)

## Usage

Open `foxy-login.html` in any web browser to run the application locally.

To host it online, upload the file to any static hosting service like Netlify or GitHub Pages.

## Configuration

To set the login credentials, edit the `AUTH` object near the top of the `<script>` section in `foxy-login.html`:

```js
const AUTH = { email:"friend@home", password:"changeme" };
const WELCOME_TITLE = "Welcome back!";
const WELCOME_MSG   = "The computer's all yours. Have a great day!";
```

Save the file and reload the page to apply the changes.

## Windows Startup Configuration

You can configure the login page to launch automatically on Windows startup.

1. Place `foxy-login.html` and `Start-Foxy.bat` in the same folder.
2. Test the script by running `Start-Foxy.bat` (press `Alt`+`F4` to close).
3. Create a shortcut to `Start-Foxy.bat`.
4. Press `Win`+`R`, type `shell:startup`, and press Enter. Move the shortcut into the startup folder.
5. The login screen will now appear after logging into Windows. 

To remove this behavior, delete the shortcut from the `shell:startup` folder.

> Note: This is purely a decorative screen and does not provide real security. It appears after the Windows login and can be bypassed using `Esc`, `Alt`+`Tab`, or `Alt`+`F4`.

## Customization

| Item | Location |
|---|---|
| Colors | `:root { … }` in the `<style>` block |
| Expressions mapping | The `FRAME_OF` object in the `<script>` block |
| Blink frequency | `scheduleBlink()` and `doBlink()` |
| Idle timer | The value `10000` in `startIdleTimer()` |

## Credits

Character artwork was generated specifically for this project. The code is available for use and modification.
