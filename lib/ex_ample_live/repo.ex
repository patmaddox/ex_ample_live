defmodule ExAmpleLive.Repo do
  use Ecto.Repo,
    otp_app: :ex_ample_live,
    adapter: Ecto.Adapters.Postgres
end
