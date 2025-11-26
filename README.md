# rc_washhands – Immersive Hygiene Script

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Lua](https://img.shields.io/badge/language-Lua-blue.svg)
![FiveM](https://img.shields.io/badge/framework-FiveM-orange.svg)
[![Discord](https://img.shields.io/badge/Discord-Join%20Community-5865F2?logo=discord&logoColor=white)](https://discord.gg/dWkjpCqscu)

### Overview
`rc_washhands` is an immersive hygiene interaction for FiveM. It lets players wash their hands with emotes, custom sounds, and polished roleplay immersion.  

The script introduces **interactive sink zones** where players can trigger emotes, hear sound effects, and see a progress bar. A simple action like washing hands becomes a detailed RP interaction with flavor text and graceful cancel handling.

---

### ✨ Features
- **Interactive sink zones** using ox_target  
- **Custom sound playback** (`WATER_SPLASH.ogg`) via bundled rc_interact_sound  
- **Immersive emotes** (`/e cleanhands`, `/e shakeoff`)  
- **Progress bar** (5 seconds, cancelable)  
- **Random hygiene messages** for flavor  
- **Graceful cancel handling** with notifications  

---

### 🎮 Usage
Players simply walk up to a sink and interact.  
The script handles emotes, sound, progress bar, and notifications automatically.

<img width="748" height="689" alt="image" src="https://github.com/user-attachments/assets/66e95804-99a1-41a4-b0bb-9e346df0c3b7" />
<img width="1797" height="1392" alt="image" src="https://github.com/user-attachments/assets/14b682ab-9601-47b6-abd3-ad994262e3a4" />


---

### 📂 Installation
1. Download or clone this repo into your server’s `resources` folder.  
2. Add the following line to your `server.cfg`:  
   ```
   ensure rc_washhands
   ```
3. Restart your server — sinks are ready to use!

---

### ⚙️ Configuration
- Edit sink locations in `client/washhands.lua`:
  ```
  local sinks = {
      vec3(-1197.54, -902.83, 13.62),
      vec3(-1201.20, -901.70, 14.30),
      vec3(-1195.10, -897.40, 14.30),
  }
  ```
- Add `.ogg` sound files to:
  ```
  modules/rc_interact_sound/client/sounds/
  ```

---

### 📦 Dependencies
- ox_lib  
- ox_target  
- oxmysql  
- NativeUI  
- Emote system (RPEmotes or DPEmotes)  

---

### 📜 License
This project is licensed under the MIT License.  
See the [LICENSE](LICENSE) file for details.

---

### 🤝 Contributing
Contributions are welcome! If you’d like to improve `rc_washhands` or add new features:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add my feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

Please keep code clean, modular, and well‑documented.  
For major changes, open an issue first to discuss what you’d like to add.

### 👤 Credits
- rc_washhands by **SensiCode99**  
- rc_interact_sound adapted from InteractSound, bundled for convenience
---

### 🛠️ Support
If you run into issues or have questions:

- Open an [Issue](../../issues) here on GitHub
- Join the community on Discord:  
  [![Discord](https://img.shields.io/badge/Discord-Join%20Community-5865F2?logo=discord&logoColor=white)](https://discord.gg/dWkjpCqscu)
