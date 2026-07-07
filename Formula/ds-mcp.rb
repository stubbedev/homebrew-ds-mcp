class DsMcp < Formula
  desc "Multi-engine data-source MCP server (MySQL, Postgres, SQLite, DuckDB, MSSQL, ClickHouse, MongoDB, Redis)"
  homepage "https://github.com/stubbedev/ds-mcp"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_aarch64-apple-darwin.tar.gz"
      sha256 "3928614835a203a24d0129b12c08b641636b2c47fa786dbd2bbafef109ba66f4"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_x86_64-apple-darwin.tar.gz"
      sha256 "bbc416ce7875b3f4ba95466d3ea619ed4b25a771793d546855b3e70c31b17fad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65b861cba07e12b3469264e82f7977cfecd7aa7f4e6aee2d3f5b3e9ee613e294"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53845af04606c0f84da7f6acc0b377064882d8464eb9cadb4a7266551b7dacad"
    end
  end

  def install
    bin.install "ds-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ds-mcp --version")
  end
end
