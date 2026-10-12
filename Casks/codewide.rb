cask "codewide" do
  version "0.6.2"
  sha256 "4dbed8be917eb0cf56c75cdb2bee1f198dc2999ae2ccf99f5c2a73f9d8039b36"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-12.2/CodeWide-#{version}.dmg"
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
