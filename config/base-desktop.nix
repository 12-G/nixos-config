{ config, pkgs, flake, lib, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # system-wide priviledges
  security.polkit = {
    enable = true;
    adminIdentities = [ "unix-user:ethan" ];
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
    configPackages = with pkgs; [ xdg-desktop-portal-hyprland ];
  };

  systemd = {
    user.services.polkit-mate-authentication-agent-1 = {
      description = "polkit-mate-authentication-agent-1";
      wantedBy = [ "hyprland-session.target" ];
      wants = [ "hyprland-session.target" ];
      after = [ "hyprland-session.target" ];
      serviceConfig = {
        Type = "simple";
	ExecStart = "${pkgs.mate.mate-polkit}/libexec/polkit-mate-authentication-agent-1";
	Restart = "on-failure";
	RestartSec = 1;
	TimeoutStopSec = 10;
      };
    };
  };

  # For Nvidia GPU
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    modesetting.enable = true;
    open = false;
    powerManagement.enable = true;
  };

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  programs.firefox.enable = true;
  security.pam.services.swaylock = {};
  programs.light.enable = true;
  programs.dconf.enable = true;

  services = {
    gvfs.enable = true;
    tumbler.enable = true;
    xserver = {
      # Nvidia GPU
      videoDrivers = [ "nvidia" ];
      displayManager = {
        defaultSession = "hyprland";
	lightdm.enable = false;
	gdm = {
	  enable = true;
	  wayland = true;
	};
      };
    };
  };

  environment.systemPackages = with pkgs; [
    wget
    curl
    linux-firmware
    gcc
    clang
    zig
    gdb
    p7zip
    unzip
    zip
    xdg-utils

    qq
    swaylock-effects

    mate.mate-polkit

    wttrbar
    wl-clipboard
    wf-recorder
    slurp
    libnotify
    imagemagick
    ffmpeg

    alsa-utils

    cinnamon.nemo
    cinnamon.nemo-fileroller

    python3
  ] ++ [
    config.nur.repos.xddxdd.rime-ice
  ];
}
