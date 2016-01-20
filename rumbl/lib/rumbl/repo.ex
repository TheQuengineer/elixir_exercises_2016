defmodule Rumbl.Repo do
  #use Ecto.Repo, otp_app: :rumbl
  @moduledoc """
    In Memory repository.
  """

  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "Quentin", username: "q", password: "qt"},
      %Rumbl.User{id: "2", name: "Meeo", username: "mdawg", password: "meeo"},
      %Rumbl.User{id: "3", name: "Meena", username: "lilmamma", password: "meena"},
      %Rumbl.User{id: "4", name: "Isabelle", username: "izzie", password: "ilmforever"}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find(all(module), fn(map) -> map.id == id end)
  end

  def get_by(module, params) do
    Enum.find(all(module), fn map -> Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end) end)
  end
end
