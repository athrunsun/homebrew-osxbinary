class Clash < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "0.19.0"

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-darwin-amd64-v#{version}.gz"
    sha256 "00b169fa8c25960f39c244a00cc4188e19575a248d8744da9719edddc44ddc66"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/clash-darwin-amd64" => "clash")
    end

    def caveats; <<~EOS
        Executable is linked as "clash".
        EOS
    end
end
