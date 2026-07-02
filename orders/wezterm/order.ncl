# Kitty terminal configuration
let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/.config/"],
    files = [
      {
        from_file = "wezterm"
      },
    ],
    when = { os = ["darwin", "linux"] },
  },
} | Order
