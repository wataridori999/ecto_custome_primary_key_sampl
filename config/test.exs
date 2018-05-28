use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ecto_custome_primary_key_sample, EctoCustomePrimaryKeySampleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ecto_custome_primary_key_sample, EctoCustomePrimaryKeySample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ecto_custome_primary_key_sample_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
