class SpectrumSecurity < Formula
  include Language::Python::Virtualenv
  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteamer/spectrum-project"
  url "https://files.pythonhosted.org/packages/c0/cc/c5152bc9c4f7d56b70a0b171060b0fe16beb7e039bbfdf351048cbc15f70/spectrum_security-1.35.8.tar.gz"
  sha256 "7a06efb87d915c847ef19cd1c446b4684a75c4a024931f901a3214941d4b79eb"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
