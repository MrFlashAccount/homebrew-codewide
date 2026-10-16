cask "codewide" do
  version "0.6.11"
  sha256 "6722dba5fbb33454c7ee273ab19762113db02ae36f9cfecfbdbc67ce33775a66"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-16.2/CodeWide-#{version}.dmg"
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
