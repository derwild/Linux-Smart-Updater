# Smart Updater

A Debian package that automatically updates APT and Flatpak packages when the system is idle.

This is especially useful if you linux does not come with a program that does automatic updates.

## Features

- Checks system idle time before running updates
- Updates both APT and Flatpak packages
- Runs automatically every 12 hours via systemd timer
- Starts 10 minutes after boot

## Installation

You can install the package directly from the GitHub releases:

1. Download the latest `.deb` file from the [Releases page](../../releases)
2. Install it using:
   ```
   sudo dpkg -i smart-updater_*.deb
   ```

## Development

### Building the package locally

To build the package locally:

```bash
# Build the package directly with a specific output filename
# Replace 1.0 with your desired version number
VERSION=1.0
dpkg-deb --build . smart-updater_${VERSION}-1.deb
```

### Releasing a new version

To release a new version:

1. Create and push a new tag with the version number:
   ```bash
   git tag v1.1
   git push origin v1.1
   ```

2. The GitHub Actions workflow will automatically:
   - Update the version in the DEBIAN/control file
   - Build the .deb package directly from the repository
   - Create a GitHub release with the .deb file as an asset

## Dependencies

- xprintidle
- flatpak
- apt
