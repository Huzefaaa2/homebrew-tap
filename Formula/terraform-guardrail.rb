class TerraformGuardrail < Formula
  include Language::Python::Virtualenv

  desc "Terraform Guardrail MCP (TerraGuard) governance control plane"
  homepage "https://github.com/Huzefaaa2/terraform-guardrail"
  url "https://files.pythonhosted.org/packages/source/t/terraform-guardrail/terraform_guardrail-4.0.0.tar.gz"
  sha256 "fd0a8fbf9366df0f298f42bb0a68ecf29040f23730f8bd043b870c5d5d459c9e"
  license "BUSL-1.1"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/terraform-guardrail", "--help"
  end
end
