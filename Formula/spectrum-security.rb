class SpectrumSecurity < Formula
  include Language::Python::Virtualenv

  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteam/spectrum"
  url "https://files.pythonhosted.org/packages/2e/98/f5585aeb4c447f2ffab23469940bbbb5e10fbb9d785ac41e04eaef712f37/spectrum_security-1.35.18.tar.gz"
  sha256 "7fdac9f06da6af7d659d3c42d70494e5c20ed05abb35c2e00af5714eadf9567b"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
