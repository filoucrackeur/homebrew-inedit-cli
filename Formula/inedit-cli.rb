class IneditCli < Formula
  desc "A terminal-based INI/conf file editor with interactive TUI"
  homepage "https://github.com/filoucrackeur/inedit-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/filoucrackeur/inedit-cli/releases/download/v0.1.0/inedit-cli-macos-arm64.tar.gz"
      sha256 "59a48fbf889e30c6dab4f1f6b40d4a7bcc3eefa4ababd16500be725f44fb9cc2"
    else
      url "https://github.com/filoucrackeur/inedit-cli/releases/download/v0.1.0/inedit-cli-macos-x64.tar.gz"
      sha256 "d7dfb72a1924ca26223f9c5876248204c62085467bfc1484521f6996b37e9f33"
    end
  end

  on_linux do
    url "https://github.com/filoucrackeur/inedit-cli/releases/download/v0.1.0/inedit-cli-linux-x64.tar.gz"
    sha256 "2bee0e1bf25456fe3628596162e50293b19ab3c43dc7612533eb633e63a1c1e5"
  end

  def install
    bin.install "inedit-cli"
  end

  test do
    assert_match "inedit-cli", shell_output("#{bin}/inedit-cli --version 2>&1", 1)
  end
end