cask "codewide" do
  version "0.6.3"
  sha256 "4b1f2ca2ab14da69e2acd155ca21a8daf6bb91f3d6e2c80d58ecacb21c60d8f1"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-13.1/CodeWide-#{version}.dmg"
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
