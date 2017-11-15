class ShadowsocksGoClientBinary < Formula
    desc "Go port of shadowsocks, client binary."
    homepage "https://github.com/shadowsocks/shadowsocks-go"

    url "https://github.com/shadowsocks/shadowsocks-go/releases/download/1.1.5/shadowsocks-local-mac64-1.1.5.gz"
    sha256 "ebb0f0fab732efba2f20e428822ea982da0f6de1cb74ceb7ccaab40d8fe9f23d"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install("#{libexec}/shadowsocks-local-mac64-1.1.5" => "ssgo_local")
    end

    test do
        assert_equal "shadowsocks-go version 1.1.5\n", shell_output("ssgo_local --version")
    end
end
