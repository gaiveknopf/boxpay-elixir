defmodule Boxpay.Repo do
  use Ecto.Repo,
    otp_app: :boxpay,
    adapter: Ecto.Adapters.Postgres
end
