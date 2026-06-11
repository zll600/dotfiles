let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/"],
    files = [
      {
        from_file = ".bash_profile",
      },
      {
        from_file = ".bashrc",
      },
    ],
  },
} | Order
