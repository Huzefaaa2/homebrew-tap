class TerraformGuardrail < Formula
  include Language::Python::Virtualenv

  desc "Terraform Guardrail MCP (TerraGuard) governance control plane"
  homepage "https://github.com/Huzefaaa2/terraform-guardrail"
  url "https://files.pythonhosted.org/packages/source/t/terraform-guardrail/terraform_guardrail-5.0.0.tar.gz"
  sha256 "897e6c6c6528e542ef765ff5c97f31cf7252322c4aafc815a36ba657b563063b"
  license "BUSL-1.1"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/terraform-guardrail", "--help"
  end
end
