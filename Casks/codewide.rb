cask "codewide" do
  version "0.5.0"
  sha256 "8fa8686a5f67986e5f60abb924880229ba877491df6dcd92b77aeea0e920afe2"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-01.1/CodeWide-#{version}.dmg"
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
