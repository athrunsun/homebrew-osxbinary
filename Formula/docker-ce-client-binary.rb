class DockerCeClientBinary < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition, and includes only client binary (no dockerd daemon)."
    homepage "https://docs.docker.com/install/linux/docker-ce/binaries/#install-client-binaries-on-macos"
    version "19.03.1"

    url "https://download.docker.com/mac/static/stable/x86_64/docker-#{version}.tgz"
    sha256 "8c30cee81e90f6d462823201e62243ceb4be954ec6a4c6e5391ebece3b10e73a"

    bottle :unneeded
    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
