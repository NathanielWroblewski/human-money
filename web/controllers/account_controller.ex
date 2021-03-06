defmodule MasonMoney.AccountController do
  use MasonMoney.Web, :controller

  def show(conn, _params) do
    balance = MasonMoney.AccountBalanceQuery.balance(_params["account_id"])
    data = %{balance: balance}
    render conn, "show.json", data: data
  end
end
