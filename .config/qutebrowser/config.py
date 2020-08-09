#              _       _
#             | |     | |
#   __ _ _   _| |_ ___| |__  _ __ _____      _____  ___ _ __
#  / _` | | | | __/ _ \ '_ \| '__/ _ \ \ /\ / / __|/ _ \ '__|
# | (_| | |_| | ||  __/ |_) | | | (_) \ V  V /\__ \  __/ |
#  \__, |\__,_|\__\___|_.__/|_|  \___/ \_/\_/ |___/\___|_|
#     | |
#     |_|

# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

c.completion.shrink = True
c.content.autoplay = False
c.downloads.location.suggestion = "both"
c.downloads.position = "bottom"
c.editor.command = ["alacritty", "-e", "nvim", "{file}", "+{line}"]
c.fonts.default_family = "Hack"
c.hints.padding = {"bottom": 2, "top": 2, "left": 2, "right": 2}
c.prompt.radius = 0
c.statusbar.padding = {"bottom": 2, "top": 2, "left": 4, "right": 4}
c.tabs.background = True
c.tabs.favicons.scale = 1.25
c.tabs.indicator.padding = {"bottom": 0, "top": 0, "left": 0, "right": 2}
c.tabs.indicator.width = 4
c.tabs.last_close = "close"
c.tabs.max_width = 300
c.tabs.min_width = 100
c.tabs.padding = {"bottom": 2, "top": 2, "left": 0, "right": 4}
c.tabs.pinned.frozen = True
c.tabs.title.alignment = "center"
c.tabs.title.format = "{perc}{audio}{index}{title_sep}{current_title}"
c.tabs.title.format_pinned = "{audio}{index}"
c.window.title_format = "{perc}{current_title}"

c.aliases["fullfullscreen"] = "set tabs.show never ;; set statusbar.show never ;; fullscreen ;; enter-mode passthrough"

base00 = "#282828"
base01 = "#3c3836"
base02 = "#504945"
base03 = "#665c54"
base04 = "#bdae93"
base05 = "#d5c4a1"
base06 = "#ebdbb2"
base07 = "#fbf1c7"
base08 = "#fb4934"
base09 = "#fe8019"
base0A = "#fabd2f"
base0B = "#b8bb26"
base0C = "#8ec07c"
base0D = "#83a598"
base0E = "#d3869b"
base0F = "#d65d0e"

# c.colors.webpage.bg = base00
c.colors.completion.category.bg = base00
c.colors.completion.category.border.bottom = base00
c.colors.completion.category.border.top = base00
c.colors.completion.category.fg = base0A
c.colors.completion.even.bg = base00
c.colors.completion.fg = base05
c.colors.completion.item.selected.bg = base0A
c.colors.completion.item.selected.border.bottom = base0A
c.colors.completion.item.selected.border.top = base0A
c.colors.completion.item.selected.fg = base01
c.colors.completion.item.selected.match.fg = base08
c.colors.completion.match.fg = base0B
c.colors.completion.odd.bg = base01
c.colors.completion.scrollbar.bg = base00
c.colors.completion.scrollbar.fg = base05
c.colors.contextmenu.disabled.bg = base01
c.colors.contextmenu.disabled.fg = base04
c.colors.contextmenu.menu.bg = base00
c.colors.contextmenu.menu.fg = base05
c.colors.contextmenu.selected.bg = base0A
c.colors.contextmenu.selected.fg = base01
c.colors.downloads.bar.bg = base00
c.colors.downloads.error.fg = base08
c.colors.downloads.start.bg = base0D
c.colors.downloads.start.fg = base00
c.colors.downloads.stop.bg = base0C
c.colors.downloads.stop.fg = base00
c.colors.hints.bg = base0A
c.colors.hints.fg = base00
c.colors.hints.match.fg = base05
c.colors.keyhint.bg = base00
c.colors.keyhint.fg = base05
c.colors.keyhint.suffix.fg = base05
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base08
c.colors.messages.error.fg = base00
c.colors.messages.info.bg = base00
c.colors.messages.info.border = base00
c.colors.messages.info.fg = base05
c.colors.messages.warning.bg = base0E
c.colors.messages.warning.border = base0E
c.colors.messages.warning.fg = base00
c.colors.prompts.bg = base00
c.colors.prompts.border = base00
c.colors.prompts.fg = base05
c.colors.prompts.selected.bg = base0A
c.colors.statusbar.caret.bg = base0E
c.colors.statusbar.caret.fg = base00
c.colors.statusbar.caret.selection.bg = base0D
c.colors.statusbar.caret.selection.fg = base00
c.colors.statusbar.command.bg = base00
c.colors.statusbar.command.fg = base05
c.colors.statusbar.command.private.bg = base00
c.colors.statusbar.command.private.fg = base05
c.colors.statusbar.insert.bg = base0D
c.colors.statusbar.insert.fg = base00
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.normal.fg = base0B
c.colors.statusbar.passthrough.bg = base0C
c.colors.statusbar.passthrough.fg = base00
c.colors.statusbar.private.bg = base01
c.colors.statusbar.private.fg = base00
c.colors.statusbar.progress.bg = base0D
c.colors.statusbar.url.error.fg = base08
c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.hover.fg = base05
c.colors.statusbar.url.success.http.fg = base0C
c.colors.statusbar.url.success.https.fg = base0B
c.colors.statusbar.url.warn.fg = base0E
c.colors.tabs.bar.bg = base00
c.colors.tabs.even.bg = base00
c.colors.tabs.even.fg = base05
c.colors.tabs.indicator.error = base08
c.colors.tabs.indicator.start = base0D
c.colors.tabs.indicator.stop = base0C
c.colors.tabs.odd.bg = base01
c.colors.tabs.odd.fg = base05
c.colors.tabs.pinned.even.bg = base0C
c.colors.tabs.pinned.even.fg = base07
c.colors.tabs.pinned.odd.bg = base0B
c.colors.tabs.pinned.odd.fg = base07
c.colors.tabs.pinned.selected.even.bg = base05
c.colors.tabs.pinned.selected.even.fg = base00
c.colors.tabs.pinned.selected.odd.bg = base05
c.colors.tabs.pinned.selected.odd.fg = base0E
c.colors.tabs.selected.even.bg = base05
c.colors.tabs.selected.even.fg = base00
c.colors.tabs.selected.odd.bg = base05
c.colors.tabs.selected.odd.fg = base00
c.colors.webpage.prefers_color_scheme_dark = True
