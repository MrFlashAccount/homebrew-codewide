cask "codewide" do
  version "0.5.1"
  sha256 "9d58be5e9c8335b32e318e46db04ff6138fe02497a6edc2c9f6e5d0c05236bbc"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-01.2/CodeWide-#{version}.dmg"
  name "CodeWide"
  desc "Native menu-bar host for CodeWide Companion"
  homepage "https://github.com/MrFlashAccount/CodeWide"

  auto_updates true
  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "CodeWide.app"

  caveats <<~EOS
    CodeWide is ad-hoc signed and is not notarized. Homebrew verifies the DMG
    checksum, and Sparkle verifies in-app updates, but macOS Gatekeeper can still
    block the first launch.
  EOS
end
