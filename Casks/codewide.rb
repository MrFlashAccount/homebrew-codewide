cask "codewide" do
  version "0.6.9"
  sha256 "2d2de38b5bb6fdd90289c219949093dcda2d4a7efcf6869a0fec5637bdf5629e"

  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-15.3/CodeWide-#{version}.dmg"
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
