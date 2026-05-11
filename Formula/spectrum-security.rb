class SpectrumSecurity < Formula
  include Language::Python::Virtualenv
  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteamer/spectrum-project"
  url "https://files.pythonhosted.org/packages/b7/f4/d7ce4b30d6438c16bec4e95cfceccb5c608d94ee5890bccc08efdbb3c8fc/spectrum_security-1.35.3.tar.gz"
  sha256 "642ee8600d9c5670371e41b7d72c8c2d1cdc660382fec73a86707a524c52d39f"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
