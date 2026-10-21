cask "codewide" do
  version "0.6.16"
  sha256 "54f356fae22097e6fab62b8fe4c0b2fa6cc8a5c8dd4438d8005f369a475a0d3d"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-21.2/CodeWide-#{version}.dmg"
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
