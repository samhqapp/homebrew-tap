# samhqapp Homebrew tap

Homebrew casks for samhqapp Mac apps.

## Install

| App | Install |
| --- | --- |
| Hushpen: local speech-to-text dictation and file transcription (Apple silicon, macOS 13 or later) | `brew install --cask samhqapp/tap/hushpen` |
| Sam's Network Utilities: network scanner, diagnostics, and Wi-Fi tools (macOS 15 or later) | `brew install --cask samhqapp/tap/sams-network-utilities` |
| Sam's Partition Master: partition, format, and image disks (macOS 15 or later) | `brew install --cask samhqapp/tap/sams-partition-master` |
| ThrottleControl: cap background downloads (Apple silicon, macOS 14 or later) | `brew install --cask samhqapp/tap/throttlecontrol` |
| Task Manager Pro (macOS 15 or later) | `brew install --cask samhqapp/tap/task-manager-pro` |
| Task Manager Classic (macOS 15 or later) | `brew install --cask samhqapp/tap/task-manager-classic` |
| Switch | `brew install --cask samhqapp/tap/switch` |
| MacPowerToys | `brew install --cask samhqapp/tap/macpowertoys` |

## Updates

Apps on GitHub Releases (Hushpen) have a workflow in `.github/workflows/` that
checks every 6 hours and updates the cask's version and sha256. Apps on
github.com/samhqapp/releases get their cask update from the app's own release script.
