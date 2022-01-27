class LuxBinary < Formula
    desc "Fast and simple video download library and CLI tool written in Go"
    homepage "https://github.com/iawia002/lux"
    version "0.12.0"

    url "https://github.com/iawia002/lux/releases/download/v#{version}/lux_#{version}_macOS_64-bit.tar.gz"
    sha256 "71761f67f05b2077e71a11b245d6bb6d5fdb36d95230f4c1d1b608acf51833bb"

    if Hardware::CPU.arm?
        url "https://github.com/iawia002/lux/releases/download/v#{version}/lux_#{version}_macOS_ARM64.tar.gz"
        sha256 "c2fae32c69e8a220ceaa0a4fb61d97a03945da2c5bb566709619507b26ed6f2a"
    end

    conflicts_with "lux"

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/lux")
        bin.install_symlink("#{libexec}/lux" => "lux")
    end

    def caveats; <<~EOS
        Executable is linked as "lux".
        EOS
    end
end
