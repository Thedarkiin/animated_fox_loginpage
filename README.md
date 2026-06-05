# Foxy Login Screen

A self-contained, single-file login page featuring an interactive fox mascot. The character reacts in real-time to user input—blinking, closing her eyes during password entry, and changing expressions based on authentication success or failure. 

All logic, styling, and assets are bundled into a single `.html` file. No external dependencies or build steps required.

![Login screen](docs/login-light.png)

## Features

- **Interactive Mascot:** Six smooth expression transitions based on state.
- **Contextual Feedback:** Fox covers her eyes while typing passwords and reacts if Caps Lock is enabled.
- **Idle State:** Random blinking and a sleepy animation after 10 seconds of inactivity.
- **Dark/Light Mode:** Includes an integrated theme toggle and respects system-level OS color preferences.
- **Fully Responsive:** Flexbox-driven layout that perfectly scales across desktop, tablet, and mobile screens without clipping.
- **Zero Dependencies:** Single-file deployment. All base64 image assets are embedded for immediate offline or online usage.

### Expressions

![Expressions](docs/expressions.png)

## Usage

Open `foxy-login.html` in any web browser to run locally.

To host it online, simply drop the file into any static hosting service like GitHub Pages, Vercel, or Netlify.

## Configuration

Login credentials and welcome text are configured near the top of the `<script>` block inside `foxy-login.html`:

```js
const AUTH = { email:"friend@home", password:"changeme" };
const WELCOME_TITLE = "Welcome back!";
const WELCOME_MSG   = "The computer's all yours. Have a great day!";
```

Save the file and refresh your browser to apply changes.

## Windows Startup Configuration

You can trigger the login page to launch automatically on Windows startup:

1. Press `Win`+`R`, type `shell:startup`, and press Enter to open your Startup folder.
2. Right-click inside the folder, select **New > Shortcut**.
3. For the location, enter your browser path followed by `--kiosk` and the path to your HTML file. For example:
   `"C:\Program Files\Google\Chrome\Application\chrome.exe" --kiosk "file:///C:/path/to/foxy-login.html"`
4. Click Next, name it "Foxy Login", and click Finish.
5. The login screen will now launch perfectly in full screen immediately after logging into Windows.

> **Note:** This screen is purely decorative and does not provide OS-level security. It runs after the native Windows login and can be bypassed via `Esc`, `Alt`+`Tab`, or `Alt`+`F4`.

## Advanced Customization

| Component | Location in Code |
|---|---|
| **Theme Colors** | `:root { … }` and `[data-theme="dark"] { … }` in the `<style>` block |
| **Expression Mapping** | The `FRAME_OF` object in the `<script>` block |
| **Blink Frequency** | `scheduleBlink()` and `doBlink()` functions |
| **Idle Timer Delay** | `10000` (ms) value inside `startIdleTimer()` |

## Credits

Character artwork was generated specifically for this project. Feel free to use, modify, and fork this code.
