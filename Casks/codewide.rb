cask "codewide" do
  version "0.4.0"
  sha256 "e7beacacf5939fcbcee5d9622af8123e2e3770b0a237c45c0c03695a09c3544f"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/v#{version}/CodeWide-#{version}.dmg"
  name "CodeWide"
  desc "Native menu-bar host for CodeWide Companion"
  homepage "https://github.com/MrFlashAccount/CodeWide"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "CodeWide.app"

  caveats <<~EOS
    CodeWide is ad-hoc signed and is not notarized. Homebrew verifies the DMG
    checksum, and Sparkle verifies in-app updates, but macOS Gatekeeper can still
    block the first launch.
  EOS
end
