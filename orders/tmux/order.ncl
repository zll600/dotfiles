let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/"],
    files = [
      {
        name = ".tmux.conf",
        format = "space_pair_lines",
        from_config = [
          ["set-option", "-g status-position top"],
          ["set", "-g default-terminal \"tmux-256color\""],
          ["set", "-ga terminal-overrides \",*256col*:Tc\""],
          ["set", "-g mouse on"],
          ["setw", "-g mode-keys vi"],
          ["bind-key", "] copy-mode"],
          ["bind", "P paste-buffer"],
          ["bind", "C-c run \"tmux save-buffer - | xclip -i -sel clipboard\""],
          ["bind", "C-v run \"tmux set-buffer \"$(xclip -o -sel clipboard)\"; tmux paste-buffer\""],
          ["bind-key", "-T copy-mode-vi \"v\" send -X begin-selection"],
          ["bind-key", "-T copy-mode-vi \"V\" send -X rectangle-toggle"],
          ["bind-key", "-T copy-mode-vi \"y\" send -X copy-selection-and-cancel"],
          ["bind-key", "-T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel"],
          ["bind-key", "-T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe \"$yank\""],
          ["bind-key", "-T copy-mode-vi MouseDown1Pane select-pane \\; send-keys -X clear-selection"],
          ["set", "-g renumber-windows on"],
          ["setw", "-g monitor-activity on"],
          ["set", "-sg escape-time 0"],
          ["set", "-g history-limit 65536"],
          ["set", "-g display-panes-active-colour colour166"],
          ["set", "-g display-panes-colour colour33"],
          ["setw", "-g clock-mode-colour colour64"],
        ],
      },
    ],
  },
} | Order
