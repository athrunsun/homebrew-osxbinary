class FzfBinary < Formula
    desc "A command-line fuzzy finder"
    homepage "https://github.com/junegunn/fzf"
    version "0.18.0"

    url "https://github.com/junegunn/fzf-bin/releases/download/#{version}/fzf-#{version}-darwin_amd64.tgz"
    sha256 "d338ab591c3bed2934eae5e0cee0b25ddb309a4d745bf616d8d8d8a83f0fac60"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/fzf")
    end

    def caveats; <<~EOS
        Executable is linked as "fzf".
        EOS
    end
end
