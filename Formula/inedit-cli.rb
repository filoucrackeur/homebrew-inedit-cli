class IneditCli < Formula
  desc "A terminal-based INI/conf file editor with interactive TUI"
  homepage "https://github.com/filoucrackeur/inedit-cli"
  url "https://github.com/filoucrackeur/inedit-cli/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "e306d977df81fcac598974698eb8f18086d65f14e1c470a5e836c4dd29343ede"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/inedit-cli"
  end

  test do
    assert_match "^inedit-cli", shell_output("#{bin}/inedit-cli --version 2>&1", 1)
  end
end