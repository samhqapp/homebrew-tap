# homebrew-tap

Homebrew tap `samhqapp/tap` with casks for samhqapp Mac apps. Install with
`brew install --cask samhqapp/tap/<app>`. Public repo.

```text
Casks/<app>.rb                      one cask per app: version, sha256, url, depends_on
.github/workflows/update-<app>.yml  checks the app's latest release every 6 hours, bumps version and sha256
README.md                           the install table
```

Casks today: hushpen, macpowertoys, sams-network-utilities, sams-partition-master, switch, task-manager-classic, task-manager-pro, throttlecontrol. Apps hosted on the public `samhqapp/releases` repo (private-source apps) update their cask from samhq_backend/scripts/publish-release.zsh.

## Add or change a cask

1. The cask downloads a notarized, versioned DMG or zip from a public URL. A private repo's release
   assets are not public, so host those files somewhere public.
2. Set `version` and `sha256` from the real file (`shasum -a 256 <file>`). Use `auto_updates true`
   when Sparkle updates the app.
3. Add a workflow copied from `update-hushpen.yml` for a new app, and a row in `README.md`.
4. Check before pushing:

```sh
brew style Casks/<app>.rb
brew audit --cask --online Casks/<app>.rb
brew install --cask ./Casks/<app>.rb   # then uninstall it again
```

## Rules

- Each app release updates its cask version and sha256 in the same task.
- Never point a cask at a file whose hash you did not compute.
- Public repo: no tokens, keys, or private paths.
