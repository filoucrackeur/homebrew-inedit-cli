class IneditCli < Formula
  desc "A terminal-based INI/conf file editor"
  homepage "https://github.com/filoucrackeur/inedit-cli"
  url "https://github.com/filoucrackeur/inedit-cli/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "sha256_hash_here"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/inedit-cli"
  end

  test do
    system "#{bin}/inedit-cli", "--version"
  end
end