class SpectrumSecurity < Formula
  include Language::Python::Virtualenv
  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteamer/spectrum-project"
  url "https://files.pythonhosted.org/packages/21/95/66c0bfef348e9acbadc072da221532776db974e822928c4d66976cc65ca7/spectrum_security-1.35.2.tar.gz"
  sha256 "40d95676a65991f3ba3289718fed39c01c938f229c942069d384a497834fd7b4"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
