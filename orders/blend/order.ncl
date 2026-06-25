let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/.config/blend/"],
    ignore = [
      # This points to the local checkout location. Most people do not need to
      # persist changes to it in their dotfile repo; remove this ignore if you
      # intentionally keep blend at a stable path such as ~/dotfiles.
    ],
    files = [
      {
        name = "config.toml",
        from_config = {
          sandbox = "force",
        },
      },
    ],
  },
} | Order
