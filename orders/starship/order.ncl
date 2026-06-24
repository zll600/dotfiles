# Kitty terminal configuration
let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/.config"],
    files = [
      {
        name = "starship.toml",
        format = "space_pair_lines",
        from_config = [
            [
              "format",
              "= \"\"\"",
            ],
            [
              "$directory\\",
              "",
            ],
            [
              "$git_branch\\",
              "",
            ],
            [
              "$git_status\\",
              "",
            ],
            [
              "$php\\",
              "",
            ],
            [
              "$nodejs\\",
              "",
            ],
            [
              "$docker_context\\",
              "",
            ],
            [
              "$cmd_duration\\",
              "",
            ],
            [
              "$line_break\\",
              "",
            ],
            [
              "$character\"\"\"",
              "",
            ],
            [
              "[directory]",
              "",
            ],
            [
              "truncation_length",
              "= 3",
            ],
            [
              "truncate_to_repo",
              "= true",
            ],
            [
              "[git_branch]",
              "",
            ],
            [
              "format",
              "= \"[$symbol$branch(:$remote_branch)]($style) \"",
            ],
            [
              "[git_status]",
              "",
            ],
            [
              "format",
              "= '([\\[$all_status$ahead_behind\\]]($style) )'",
            ],
            [
              "[php]",
              "",
            ],
            [
              "format",
              "= \"[$symbol($version)]($style) \"",
            ],
            [
              "[nodejs]",
              "",
            ],
            [
              "format",
              "= \"[$symbol($version)]($style) \"",
            ],
            [
              "detect_extensions",
              "= []",
            ],
            [
              "[cmd_duration]",
              "",
            ],
            [
              "min_time",
              "= 2_000",
            ],
            [
              "[character]",
              "",
            ],
            [
              "success_symbol",
              "= \"[>](bold green)\"",
            ],
            [
              "error_symbol",
              "= \"[>](bold red)\"",
            ],
          ],
      },
    ],
    when = { os = ["darwin", "linux"] },
  },
} | Order
