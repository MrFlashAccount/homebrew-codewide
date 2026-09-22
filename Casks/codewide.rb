cask "codewide" do
  version "0.3.0"
  sha256 "e028e62df5c1a6fd8b236b846e1ac3e9f7051038986861a63f13ee7202ab2dc2"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/v#{version}/CodeWide-#{version}.dmg"
  name "CodeWide"
  desc "Native menu-bar host for CodeWide Companion"
  homepage "https://github.com/MrFlashAccount/CodeWide"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "CodeWide.app"

  caveats <<~EOS
    CodeWide is ad-hoc signed and is not notarized. Homebrew verifies the DMG
    checksum, and Sparkle verifies in-app updates, but macOS Gatekeeper can still
    block the first launch.
  EOS
end
