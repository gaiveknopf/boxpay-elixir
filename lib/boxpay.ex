defmodule Boxpay do
  alias Boxpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
