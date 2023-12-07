local ui = {}

ui.onenord = {
  theme = dark, 
  borders = true, -- Split window borders
  fade_nc = false, -- Fade non-current windows, making them more distinguishable
  -- Style that is applied to various groups: see `highlight-args` for options
  styles = {
    comments = "Italic",
    strings = "Italic",
    keywords = "Bold",
    functions = "NONE",
    variables = "NONE",
    diagnostics = "underline",
  },
  disable = {
    background = false, -- Disable setting the background color
    cursorline = false, -- Disable the cursorline
    eob_lines = true, -- Hide the end-of-buffer lines
  },
  -- Inverse highlight for different groups
  inverse = {
    match_paren = false,
  },
  custom_highlights = {}, -- Overwrite default highlight groups
  custom_colors = {}, -- Overwrite default colors
}

ui.blankline = {
  indentLine_enabled = 1,
  filetype_exclude = {
    "help",
    "terminal",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  show_current_context = true,
  show_current_context_start = true,
}

ui.treesitter = {
  ensure_installed = { "lua" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },

}

ui.devicons = {
  override = {
    default_icon = {
      icon = "󰈚",
      name = "Default",
    },

    c = {
      icon = "",
      name = "c",
    },

    css = {
      icon = "",
      name = "css",
    },

    dart = {
      icon = "",
      name = "dart",
    },

    deb = {
      icon = "",
      name = "deb",
    },

    Dockerfile = {
      icon = "",
      name = "Dockerfile",
    },

    html = {
      icon = "",
      name = "html",
    },

    jpeg = {
      icon = "󰉏",
      name = "jpeg",
    },

    jpg = {
      icon = "󰉏",
      name = "jpg",
    },

    js = {
      icon = "󰌞",
      name = "js",
    },

    kt = {
      icon = "󱈙",
      name = "kt",
    },

    lock = {
      icon = "󰌾",
      name = "lock",
    },

    lua = {
      icon = "",
      name = "lua",
    },

    mp3 = {
      icon = "󰎆",
      name = "mp3",
    },

    mp4 = {
      icon = "",
      name = "mp4",
    },

    out = {
      icon = "",
      name = "out",
    },

    png = {
      icon = "󰉏",
      name = "png",
    },

    py = {
      icon = "",
      name = "py",
    },

    ["robots.txt"] = {
      icon = "󰚩",
      name = "robots",
    },

    toml = {
      icon = "",
      name = "toml",
    },

    ts = {
      icon = "󰛦",
      name = "ts",
    },

    ttf = {
      icon = "",
      name = "TrueTypeFont",
    },

    rb = {
      icon = "",
      name = "rb",
    },

    rpm = {
      icon = "",
      name = "rpm",
    },

    vue = {
      icon = "󰡄",
      name = "vue",
    },

    woff = {
      icon = "",
      name = "WebOpenFontFormat",
    },

    woff2 = {
      icon = "",
      name = "WebOpenFontFormat2",
    },

    xz = {
      icon = "",
      name = "xz",
    },

    zip = {
      icon = "",
      name = "zip",
    },
  },
}

ui.lualine = {
  options = {
    theme = "onenord",
  },
}

return ui
