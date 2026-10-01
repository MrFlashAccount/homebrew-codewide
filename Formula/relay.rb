class Relay < Formula
  desc "Blind WebSocket relay for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-01.1/codewide-relay-x86_64-unknown-linux-musl", using: :nounzip
  version "0.5.0"
  sha256 "d4219821fb794dab4e5285d54a02822a33b476d3b11f5135aebd5c524f567dea"
  license "MIT"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "codewide-relay-x86_64-unknown-linux-musl" => "codewide-relay"
    chmod 0755, bin/"codewide-relay"
  end

  test do
    assert_match "codewide-relay #{version}", shell_output("#{bin}/codewide-relay --version")
  end
end
