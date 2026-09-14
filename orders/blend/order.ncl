let { Order, BlendOrder, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/.config/blend/"],
    files = [
      {
        name = "config.toml",
        from_config = {
          sandbox = "force",
        },
      },
    ],
  },
} | Order | BlendOrder
