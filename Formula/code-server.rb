class CodeServer < Formula
    desc "Run VS Code on a remote server."
    homepage "https://github.com/cdr/code-server"
    version "1.939"

    url "https://github.com/cdr/code-server/releases/download/#{version}-vsc1.33.1/code-server#{version}-vsc1.33.1-darwin-x64.zip"
    sha256 "aeaab2cd42a595fb035ecf0353290cb21c76041f2f571f1cbfe5eae6cf516959"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/code-server")
    end

    def caveats; <<~EOS
        Executable is linked as "code-server".
        EOS
    end
end
