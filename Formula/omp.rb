class Omp < Formula
  desc "AI coding agent for the terminal (read, bash, edit, write tools)"
  homepage "https://github.com/PfisterFactor/oh-my-pi"
  version "15.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-arm64"
      sha256 "30fc82b92717c1ce2be9bc1082c9e764b859fc2b4d25d9a08571ec34478a0a68"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-x64"
      sha256 "f0bd2eced846de7803d5f42ee659dd194b90b3a945024d5e0d180fc493540428"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-arm64"
      sha256 "f38920f83709f4532636c65c5c660e170ae9102a49e18d53ca56235d401a3a9b"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-x64"
      sha256 "415da16548b648230e4ecba919bf9bdf53a30bebc3cb29affc2aad5f7e7e16fa"
    end
  end

  def install
    # Release assets are bare executables, not archives.
    binary = Dir["omp-*"].first
    bin.install binary => "omp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omp --version")
  end
end
