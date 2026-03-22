{

  description = "flake for develop nvf config module.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = { self, nixpkgs, nvf }:

  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };

    myNeovim =
      (nvf.lib.neovimConfiguration {
        inherit pkgs;

        modules = [
          ./nvim
        ];

      }).neovim;

  in {

    packages.${system}.my-neovim = myNeovim;

    devShells.${system}.default = pkgs.mkShell {
      packages = [
        myNeovim
        pkgs.tmux
        pkgs.nodejs_20
        pkgs.tree-sitter
        pkgs.wl-clipboard
        pkgs.prisma-language-server
      ];
    };

  };

}

