cask "codewide" do
  version "0.6.7"
  sha256 "680d4fb93b54638f1f35cd7d27e66575e614b8ea623a7e31f120728484941405"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-14.2/CodeWide-#{version}.dmg"
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
