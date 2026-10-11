cask "codewide" do
  version "0.6.0"
  sha256 "2a38b9d5f1aaa69b920ec53e8194b81b1f91208c647b808994f2999049994838"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-11.1/CodeWide-#{version}.dmg"
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
