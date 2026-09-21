# CodeWide Homebrew tap

This tap distributes release artifacts built by
[CodeWide](https://github.com/MrFlashAccount/CodeWide).

After the first macOS release:

```sh
brew install --cask MrFlashAccount/codewide/codewide
```

The macOS app is ad-hoc signed and not notarized. Its DMG is checksum-verified,
and in-app updates use a signed Sparkle feed, but Gatekeeper may still require
manual approval on first launch.

After the first Linux Companion release:

```sh
brew install MrFlashAccount/codewide/codewide-companion
```

The formula installs the headless Rust host. Follow the formula caveats to
initialize its administrator token, bundled Git provider, and user service.

Formulae and casks are updated only after their checksummed release artifacts
have been published. Until those first releases exist, this repository
intentionally contains no installable entries.
