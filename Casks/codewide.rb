cask "codewide" do
  version "0.6.10"
  sha256 "68f2b26594fcdd569496f5388d030bc163787a03cd81e3fd7ca6bc15fcf8b3c5"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-16.1/CodeWide-#{version}.dmg"
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
