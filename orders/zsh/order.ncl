let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/"],
    files = [
      {
        from_file = ".zsh_profile",
      },
      {
        from_file = ".zshrc",
      },
      {
        from_file = ".zimrc",
      },
    ],
  },
} | Order
