cask "codewide" do
  version "0.6.14"
  sha256 "974824e59e35287aa92b3bfb4f6a6381d64a787374be053e34275762e275a42a"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-20.2/CodeWide-#{version}.dmg"
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
