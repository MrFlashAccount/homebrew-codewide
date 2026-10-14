cask "codewide" do
  version "0.6.5"
  sha256 "fba6c9740ea6d23cc447f003b7eb2b25afc3e122a7c7bc8ab5c337fb58dc50a1"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-13.3/CodeWide-#{version}.dmg"
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
