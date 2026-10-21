cask "codewide" do
  version "0.6.15"
  sha256 "dfa370b09fa46b6ed48dd4fcfe5c6afba925d2213c6192bcc8b8c8329053a4f5"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-21.1/CodeWide-#{version}.dmg"
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
