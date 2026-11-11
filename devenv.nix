{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    cmake
    gnumake
    git
    typos-lsp
    nixfmt
    taplo
  ];

  # https://devenv.sh/languages/
  languages = {
    c = {
      enable = true;
      lsp.enable = true;
    };
  };

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    typos.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
