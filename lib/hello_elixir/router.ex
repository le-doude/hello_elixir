defmodule HelloElixir.Router do
  use Sugar.Router
  plug Sugar.Plugs.HotCodeReload

  if Sugar.Config.get(:sugar, :show_debugger, false) do
    use Plug.Debugger, otp_app: :hello_elixir
  end

  plug Plug.Static, at: "/static", from: :hello_elixir

  # Uncomment the following line for session store
  # plug Plug.Session, store: :ets, key: "sid", secure: true, table: :session

  # Define your routes here
  get "/", HelloElixir.Controllers.Main, :index
end
