defmodule Boxpay.Users.Create do
  alias Boxpay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
