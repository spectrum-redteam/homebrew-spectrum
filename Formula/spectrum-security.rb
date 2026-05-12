class SpectrumSecurity < Formula
  include Language::Python::Virtualenv

  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteam/spectrum"
  url "https://files.pythonhosted.org/packages/77/fc/9da61fe5c4dc2826f94adbc598ad88d85ea23cc7d14be69cfb977a6d6484/spectrum_security-1.35.0.tar.gz"
  sha256 "b6712893b7d656b17d71fc6c882bf1cef6e6ec55107d287d16bbfb4386a12ad3"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
