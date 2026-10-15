cask "codewide" do
  version "0.6.8"
  sha256 "af6cf1bccb5a7853e22d298485bb527c6b4bd1afb5c6532c9a00b0769f1c4bd6"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-15.2/CodeWide-#{version}.dmg"
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
