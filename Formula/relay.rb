class Relay < Formula
  desc "Blind WebSocket relay for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-15.3/codewide-relay-x86_64-unknown-linux-musl", using: :nounzip
  version "0.6.7"
  sha256 "e852f7aa81c9434fb922cfa7b00c0291edee31b6024dbf9e32f17bd28acf10d0"
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
