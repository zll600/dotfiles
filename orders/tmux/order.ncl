let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/"],
    files = [
      {
        name = ".tmux.conf",
        format = "space_pair_lines",
        from_config = [
          [
            "set",
            "-g extended-keys on",
          ],
          [
            "set",
            "-g extended-keys-format csi-u",
          ],
        ],
      },
    ],
  },
} | Order
