class SpectrumSecurity < Formula
  include Language::Python::Virtualenv
  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteamer/spectrum-project"
  url "https://files.pythonhosted.org/packages/8a/22/fdba5f4d557e748ff817ade423d734b6304e04901c805b022b1d235699e4/spectrum_security-1.35.5.tar.gz"
  sha256 "4192b44dfd79bea1694b9b5266ea64923789e2d57163f042ccbe877f3b9eeb29"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
