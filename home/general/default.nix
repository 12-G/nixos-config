{ ... }:

{
  imports = [ ./fcitx5/fcitx5.nix ];
  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
  };

  home.file.".config/kitty" = {
    source = ./kitty;
    recursive = true;
  };

  home.file."Pictures/wallpapers" = {
    source = ./wallpapers;
    recursive = true;
  };
}
