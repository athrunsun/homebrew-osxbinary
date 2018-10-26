class WuzzBinary < Formula
    desc "Interactive cli tool for HTTP inspection"
    homepage "https://github.com/asciimoo/wuzz"
    version "0.4.0"

    if MacOS.prefer_64_bit?
        url "https://github.com/asciimoo/wuzz/releases/download/v#{version}/wuzz_darwin_amd64"
        sha256 "c8a4bc7eef2511093fd55a1e38b90aeabb4b0016b01875ec143ae19358342470"
    else
        url "https://github.com/asciimoo/wuzz/releases/download/v#{version}/wuzz_darwin_386"
        sha256 "263d49596680a85f6e5b96ee46d7308138ee42357ddabace283e7fb93e9ec14e"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        
        if MacOS.prefer_64_bit?
            chmod(0755, "#{libexec}/wuzz_darwin_amd64")
            bin.install_symlink("#{libexec}/wuzz_darwin_amd64" => "wuzz")
        else
            chmod(0755, "#{libexec}/wuzz_darwin_386")
            bin.install_symlink("#{libexec}/wuzz_darwin_386" => "wuzz")
        end
    end

    def caveats; <<~EOS
        Executable is linked as "wuzz".
        EOS
    end
end
