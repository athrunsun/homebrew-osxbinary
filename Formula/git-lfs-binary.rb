class GitLfsBinary < Formula
    desc "Git extension for versioning large files."
    homepage "https://git-lfs.github.com/"
    version "2.3.4"

    url "https://github.com/git-lfs/git-lfs/releases/download/v#{version}/git-lfs-darwin-amd64-#{version}.tar.gz"
    sha256 "b16d4b7469b1fa34e0e27bedb1b77cc425b8d7903264854e5f18b0bc73576edb"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/git-lfs")
    end

    def caveats; <<~EOS
        Executable is linked as "git-lfs".
        EOS
    end
end
