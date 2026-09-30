# win11-taskbar-linux

A native, standalone Windows 11 Taskbar, Start Menu, and Notification Center for Linux desktops (Arch Linux, Ubuntu, Debian, Fedora), completely driven by an XML layout file (`TaskbarLayout.xml`).

![Windows 11 Taskbar on Linux](https://casey-ultimate-debug-seems.trycloudflare.com/shot-desktop-faithful.png)

---

## Features

- **Centered Taskbar Dock**: Windows 11 style centered application dock with live running process indicators (blue glow bar).
- **Floating Start Menu**:
  - Windows 11 Fluent dark theme with Acrylic glass styling.
  - **Pinned Apps Grid (6x2)**: Configured purely via XML.
  - **All Apps Directory (A-Z)**: Alphabetical list of installed tools.
  - **Interactive Search**: Real-time filtering as you type.
  - **Recommended Files**: Quick access to recent files.
- **Notification & Calendar Center**: Click the bottom-right clock to reveal real system notifications and full monthly calendar.
- **Quick Settings Flyout**: Click Wi-Fi / Audio tray to reveal Quick Action tiles and sliders.
- **Taskbar Right-Click Menu**: Access Task Manager and Settings directly.
- **XML-Driven**: Modify `TaskbarLayout.xml` to add, remove, or customize apps without touching code.

---

## Installation on Arch Linux

### 1. Install Dependencies
```bash
sudo pacman -S --needed python-gobject webkit2gtk-4.1 gtk3
```

### 2. Clone and Install
```bash
git clone https://github.com/fajrisilmi12-cyber/win11-taskbar-linux.git
cd win11-taskbar-linux
sudo bash install.sh
```

### 3. Run
```bash
win11-taskbar
```

---

## How to Customize via XML

Edit `/etc/win11-taskbar/TaskbarLayout.xml` or `~/.config/win11-taskbar/TaskbarLayout.xml`:

```xml
<PinnedList>
  <App name="Firefox" exec="firefox" icon="edge" category="Web" />
  <App name="Terminal" exec="xfce4-terminal" icon="terminal" category="System" />
</PinnedList>
```

Save the file and restart the taskbar!

---

## Compatibility

Works alongside any Window Manager or Desktop Environment:
- **XFWM4 / Openbox / i3 / bspwm** (Recommended for standalone minimalist setups)
- **XFCE4** (Hide the default XFCE panel and use `win11-taskbar`)
- **GNOME / KDE / Cinnamon**

---

## License
MIT License
