class DsMcp < Formula
  desc "Multi-engine data-source MCP server (MySQL, Postgres, SQLite, DuckDB, MSSQL, ClickHouse, MongoDB, Redis)"
  homepage "https://github.com/stubbedev/ds-mcp"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.2.0/ds-mcp_v0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "59ac883b91d774b4545ef64bf7c958c1c82bf2080605c430dea6b90f4cf6d245"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.2.0/ds-mcp_v0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "459b45b0633e273a390c29d46ca60136c9d5ae77f303130dd47df903415ee714"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.2.0/ds-mcp_v0.2.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "722b451f6133f0e258f29e30bbbc8fd512e5ef88e6b03087273de9fa63c680fe"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.2.0/ds-mcp_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c15ea7155a90c866252aa053f0379eee5cc72fb7b978aacbc01dc3542f31959"
    end
  end

  def install
    bin.install "ds-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ds-mcp --version")
  end
end
