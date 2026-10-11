class Relay < Formula
  desc "Blind WebSocket relay for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-11.1/codewide-relay-x86_64-unknown-linux-musl", using: :nounzip
  version "0.6.0"
  sha256 "d419c54f0848d50ce23ffca3ef7e835924ed9bd692199674ab8d7ed62e4d3fc4"
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
