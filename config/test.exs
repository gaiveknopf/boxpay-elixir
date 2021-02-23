use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :boxpay, Boxpay.Repo,
  username: "postgres",
  password: "1234",
  database: "boxpay_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  port: "38152",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :boxpay, BoxpayWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn