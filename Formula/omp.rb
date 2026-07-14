class Omp < Formula
  desc "AI coding agent for the terminal (read, bash, edit, write tools)"
  homepage "https://github.com/PfisterFactor/oh-my-pi"
  version "16.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-arm64"
      sha256 "dbc9d53323b7c509fa249573bf35b360c8d85e1ba532d7cb18a438c9640d7732"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-x64"
      sha256 "fc061ce9b5221bfe0d1da13ce3f490c639066d35fe7d88f2aae899957568d5be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-arm64"
      sha256 "085ba2d06de4097c73198dd899407cbd181f790e6ef6de2f651e56df0ea08925"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-x64"
      sha256 "486636321629ef43e088fcb5c15c93c7f54a7293d1816c852d370d013e3847d8"
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
