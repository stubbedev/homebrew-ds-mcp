class DsMcp < Formula
  desc "Multi-engine data-source MCP server (MySQL, Postgres, SQLite, DuckDB, MSSQL, ClickHouse, MongoDB, Redis)"
  homepage "https://github.com/stubbedev/ds-mcp"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.5/ds-mcp_v0.3.5_aarch64-apple-darwin.tar.gz"
      sha256 "3ff2d0b1e31daf72e9d206b6dc4dfcb9b5451bb3a039873654fe82f7018a1366"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.5/ds-mcp_v0.3.5_x86_64-apple-darwin.tar.gz"
      sha256 "2be4edd2220449f9545817bdd54311a98f667be85defc516cfba141b574c3abc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.5/ds-mcp_v0.3.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cafe55247a0a589a71bb3fb00a278e2d1800a10d106b2f292abec1e597e9a728"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.5/ds-mcp_v0.3.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "637431cfff754345253354e4b5c6c5c9709f58ce4441a040aa86972677c12fc5"
    end
  end

  def install
    bin.install "ds-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ds-mcp --version")
  end
end
