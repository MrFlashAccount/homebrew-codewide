cask "codewide" do
  version "0.6.1"
  sha256 "73a608e0ed30213fabb255989a56d0714eca7e07ff57580dbe0b778130bd9fff"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-12.1/CodeWide-#{version}.dmg"
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
