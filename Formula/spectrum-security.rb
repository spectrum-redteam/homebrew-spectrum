class SpectrumSecurity < Formula
  include Language::Python::Virtualenv
  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteamer/spectrum-project"
  url "https://files.pythonhosted.org/packages/source/s/spectrum-security/spectrum-security-1.35.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855 "
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
