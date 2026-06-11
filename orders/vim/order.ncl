let { Order, .. } = import "../order.contract.ncl" in
{
  blend = {
    prefix = ["~/"],
    files = [
      {
        from_file = ".vimrc",
      },
      {
        from_file = ".vim/coc-settings.json",
      },
      {
        from_file = ".vim/autoload/plug.vim",
      },
    ],
  },
} | Order
