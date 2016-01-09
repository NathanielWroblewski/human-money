defmodule HelloPhoenix.TransactionView do
  use HelloPhoenix.Web, :view
  @attributes ~W(id)

  def render("index.json", %{data: data}) do
    %{transactions: render_many(data, HelloPhoenix.TransactionView, "transaction.json")}
  end

  def render("transaction.json", %{transaction: transaction}) do
    transaction
    |> Map.take([:id, :amount,:from_address, :from_public_key, :to_public_key, :to_address])
  end
end