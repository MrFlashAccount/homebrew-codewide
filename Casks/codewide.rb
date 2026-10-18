cask "codewide" do
  version "0.6.12"
  sha256 "6658040f9176742ff91756636ac7b458dbf8b9eb5c8b8cd61da31869523bc948"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-18.1/CodeWide-#{version}.dmg"
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
