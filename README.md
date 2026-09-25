# CodeWide Homebrew tap

This tap distributes release artifacts built by
[CodeWide](https://github.com/MrFlashAccount/CodeWide).

Install CodeWide on macOS:

```sh
brew install --cask MrFlashAccount/codewide/codewide
```

The macOS app is ad-hoc signed and not notarized. Its DMG is checksum-verified,
and in-app updates use a signed Sparkle feed, but Gatekeeper may still require
manual approval on first launch.

Install CodeWide on Linux x86_64:

```sh
brew install --formula MrFlashAccount/codewide/codewide
```

The formula installs the headless Rust host. Follow the formula caveats to
initialize its administrator token, bundled Git provider, and user service.

If you installed the old `codewide-companion` formula, migrate it once:

```sh
brew update
brew trust --formula MrFlashAccount/codewide/codewide
brew migrate --formula codewide
```

Install Relay on Linux x86_64:

```sh
brew install --formula MrFlashAccount/codewide/relay
```

The Relay executable remains `codewide-relay`.

Formulae and casks are updated only after their checksummed release artifacts
have been published.
