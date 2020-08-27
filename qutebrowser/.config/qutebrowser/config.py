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
c.confirm_quit = ["multiple-tabs", "downloads"]
c.content.autoplay = False
c.downloads.location.suggestion = "both"
c.downloads.position = "bottom"
c.editor.command = ["alacritty", "-e", "nvim", "{file}", "+{line}"]
c.fonts.default_family = "Hack"
c.hints.padding = {"bottom": 2, "top": 2, "left": 2, "right": 2}
c.prompt.radius = 0
c.statusbar.padding = {"bottom": 2, "top": 2, "left": 4, "right": 4}
c.statusbar.show = "always"
c.tabs.background = True
c.tabs.favicons.scale = 1.25
c.tabs.indicator.padding = {"bottom": 2, "top": 2, "left": 2, "right": 2}
c.tabs.indicator.width = 4
c.tabs.last_close = "close"
c.tabs.max_width = 300
c.tabs.min_width = 100
c.tabs.padding = {"bottom": 2, "top": 2, "left": 4, "right": 4}
c.tabs.pinned.frozen = True
c.tabs.show = "always"
c.tabs.title.alignment = "center"
c.tabs.title.format = "{perc}{audio}{index}{title_sep}{current_title}"
c.tabs.title.format_pinned = "{audio}{index}"
c.window.title_format = "{perc}{current_title}"

base00 = "#2E3440"
base01 = "#3B4252"
base02 = "#434C5E"
base03 = "#4C566A"
base04 = "#D8DEE9"
base05 = "#E5E9F0"
base06 = "#ECEFF4"
base07 = "#8FBCBB"
base08 = "#BF616A"
base09 = "#D08770"
base0A = "#EBCB8B"
base0B = "#A3BE8C"
base0C = "#88C0D0"
base0D = "#81A1C1"
base0E = "#B48EAD"
base0F = "#5E81AC"

c.colors.completion.fg = base05
c.colors.completion.odd.bg = base01
c.colors.completion.even.bg = base00
c.colors.completion.category.fg = base0A
c.colors.completion.category.bg = base00
c.colors.completion.category.border.top = base00
c.colors.completion.category.border.bottom = base00
c.colors.completion.item.selected.fg = base05
c.colors.completion.item.selected.bg = base02
c.colors.completion.item.selected.border.top = base02
c.colors.completion.item.selected.border.bottom = base02
c.colors.completion.item.selected.match.fg = base0B
c.colors.completion.match.fg = base0B
c.colors.completion.scrollbar.fg = base05
c.colors.completion.scrollbar.bg = base00
c.colors.contextmenu.disabled.bg = base01
c.colors.contextmenu.disabled.fg = base04
c.colors.contextmenu.menu.bg = base00
c.colors.contextmenu.menu.fg = base05
c.colors.contextmenu.selected.bg = base02
c.colors.contextmenu.selected.fg = base05
c.colors.downloads.bar.bg = base00
c.colors.downloads.start.fg = base00
c.colors.downloads.start.bg = base0D
c.colors.downloads.stop.fg = base00
c.colors.downloads.stop.bg = base0C
c.colors.downloads.error.fg = base08
c.colors.hints.fg = base00
c.colors.hints.bg = base0A
c.colors.hints.match.fg = base05
c.colors.keyhint.fg = base05
c.colors.keyhint.suffix.fg = base05
c.colors.keyhint.bg = base00
c.colors.messages.error.fg = base00
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base08
c.colors.messages.warning.fg = base00
c.colors.messages.warning.bg = base0E
c.colors.messages.warning.border = base0E
c.colors.messages.info.fg = base05
c.colors.messages.info.bg = base00
c.colors.messages.info.border = base00
c.colors.prompts.fg = base05
c.colors.prompts.border = base00
c.colors.prompts.bg = base00
c.colors.prompts.selected.bg = base02
c.colors.statusbar.normal.fg = base0B
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.insert.fg = base00
c.colors.statusbar.insert.bg = base0D
c.colors.statusbar.passthrough.fg = base00
c.colors.statusbar.passthrough.bg = base0C
c.colors.statusbar.private.fg = base00
c.colors.statusbar.private.bg = base01
c.colors.statusbar.command.fg = base05
c.colors.statusbar.command.bg = base00
c.colors.statusbar.command.private.fg = base05
c.colors.statusbar.command.private.bg = base00
c.colors.statusbar.caret.fg = base00
c.colors.statusbar.caret.bg = base0E
c.colors.statusbar.caret.selection.fg = base00
c.colors.statusbar.caret.selection.bg = base0D
c.colors.statusbar.progress.bg = base0D
c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.error.fg = base08
c.colors.statusbar.url.hover.fg = base05
c.colors.statusbar.url.success.http.fg = base0C
c.colors.statusbar.url.success.https.fg = base0B
c.colors.statusbar.url.warn.fg = base0E
c.colors.tabs.bar.bg = base00
c.colors.tabs.indicator.start = base0D
c.colors.tabs.indicator.stop = base0C
c.colors.tabs.indicator.error = base08
c.colors.tabs.odd.fg = base05
c.colors.tabs.odd.bg = base01
c.colors.tabs.even.fg = base05
c.colors.tabs.even.bg = base00
c.colors.tabs.pinned.even.bg = base0C
c.colors.tabs.pinned.even.fg = base07
c.colors.tabs.pinned.odd.bg = base0B
c.colors.tabs.pinned.odd.fg = base07
c.colors.tabs.pinned.selected.even.bg = base02
c.colors.tabs.pinned.selected.even.fg = base05
c.colors.tabs.pinned.selected.odd.bg = base02
c.colors.tabs.pinned.selected.odd.fg = base05
c.colors.tabs.selected.odd.fg = base05
c.colors.tabs.selected.odd.bg = base02
c.colors.tabs.selected.even.fg = base05
c.colors.tabs.selected.even.bg = base02
# c.colors.webpage.bg = base00
