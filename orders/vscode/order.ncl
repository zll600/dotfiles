# VSCode settings configuration
let metadata = import "../metadata.ncl" in
let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix =
      metadata.os
      |> match {
        "darwin" => ["~/Library/Application Support/Code/User/"],
        "linux" => ["~/.config/Code/User/"],
        _ => []
      },
    files = [
      {
        name = "settings.json",
        format = "jsonc",
        # These settings are not suitable for sync.
        ignore = [
          "window.zoomLevel",
          "workbench.colorTheme",
          "workbench.iconTheme",
          "playwright.env",
          "chat.commandCenter.enabled",
        ],
        from_config = {
          # Editor settings
          # JetBrains Mono
          # https://github.com/JetBrains/JetBrainsMono/wiki/OpenType-features
          # Monaspace
          # "editor.fontLigatures" = "'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08'",

          # Terminal

          # Window

          # Workbench

          # Git

          # GitHub Copilot
          "github.copilot.enable" = {
            "*" = false,
            markdown = true,
            plaintext = false,
            scminput = false,
          },

          # TypeScript

          # JavaScript

          # ESLint
          # make ESLint use current Node.js version instead of VSCode's

          # Diff

          # Problems

          # Update

          # Zen mode

          # Chat
          "claudeCode.preferredLocation" = "panel",

          # File associations

          # Cursor

          # Debug

          # Telemetry
          "redhat.telemetry.enabled" = true,

          # Even Better TOML

          # Graphviz

          # Jsonnet

          # Playwright

          # Settings Sync

          # Extensions
          "extensions.ignoreRecommendations" = true,

          # OXC

          # GitLens

          # Todo Highlight

          # SemanticDiff

          # YAML
          # GitLab's custom tag
          # https://docs.gitlab.com/ee/ci/yaml/yaml_optimization.html#configure-your-ide-to-support-reference-tags

          # Tinymist

          # Language-specific settings
          "[dockercompose]" = {
            "editor.autoIndent" = "advanced",
            "editor.defaultFormatter" = "redhat.vscode-yaml",
            "editor.insertSpaces" = true,
            "editor.tabSize" = 2,
          },
          "[github-actions-workflow]" = { "editor.defaultFormatter" = "redhat.vscode-yaml" },
          "zig.zls.enabled" = "on",
          "workbench.secondarySideBar.defaultVisibility" = "hidden",
          "terminal.integrated.scrollback" = 20000,
          "python.defaultInterpreterPath" = "/opt/homebrew/bin/python3",
          "notebook.lineNumbers" = "on",
          "makefile.configureOnOpen" = true,
          "gitlens.ai.vscode.model" = "copilot:gpt-4.1",
          "gitlens.ai.model" = "vscode",
          "diffEditor.ignoreTrimWhitespace" = false,
          "cmake.pinnedCommands" = [
            "workbench.action.tasks.configureTaskRunner",
            "workbench.action.tasks.runTask",
          ],
          "chat.mcp.gallery.enabled" = true,
          "C_Cpp.default.compilerPath" = "/usr/bin/clang++",
        },
      },
      {
        name = "keybindings.json",
        format = "jsonc",
        from_config = [
          {
            args = { text = "\\\r\n" },
            command = "workbench.action.terminal.sendSequence",
            key = "shift+enter",
            when = "terminalFocus",
          },
        ]
      }
    ],
    when = { os = ["linux", "darwin"] },
  },
} | Order
