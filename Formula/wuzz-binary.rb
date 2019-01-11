class WuzzBinary < Formula
    desc "Interactive cli tool for HTTP inspection"
    homepage "https://github.com/asciimoo/wuzz"
    version "0.4.0"

    url "https://github.com/asciimoo/wuzz/releases/download/v#{version}/wuzz_darwin_amd64"
    sha256 "c8a4bc7eef2511093fd55a1e38b90aeabb4b0016b01875ec143ae19358342470"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/wuzz_darwin_amd64")
        bin.install_symlink("#{libexec}/wuzz_darwin_amd64" => "wuzz")
    end

    def caveats; <<~EOS
        Executable is linked as "wuzz".
        EOS
    end
end
