class Omp < Formula
  desc "AI coding agent for the terminal (read, bash, edit, write tools)"
  homepage "https://github.com/PfisterFactor/oh-my-pi"
  version "16.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-arm64"
      sha256 "c2642c7a038131e15d5808175070e4549d32921513a2870f9acef0c56f9e9a47"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-x64"
      sha256 "fefe2c7157713505e9b0117d3be204200ede972c56053b823fe3d52e92e0d22e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-arm64"
      sha256 "7e7e978d13d850bb5a9fd54e4f6a248eb04646787af6aa0733939ec0591bf245"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-x64"
      sha256 "5543e941d82127814a7c75c4a668628d83589e50b7ebc9ee59e40d9c9abe0e9f"
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
