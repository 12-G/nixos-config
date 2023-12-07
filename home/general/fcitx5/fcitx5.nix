{ pkgs, ... }:

{
  home.file.".local/share/fcitx5/rime" = {
    source = ./rime;
    recursive = true;
  };
  home.file.".local/share/fcitx5/themes" = {
    source = ./Tokyonight-Storm;
    recursive = true;
  };

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-rime
      fcitx5-configtool
      fcitx5-chinese-addons
      fcitx5-gtk # gtk in module
    ];
  };

  systemd.user.sessionVariables = {
    GLFW_IM_MODULE = "fcitx";
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMDOIFIERS = "@im=fcitx";
    INPUT_METHOD = "fcitx";
    IMSETTINGS_MODULE = "fcitx";
  };
}
