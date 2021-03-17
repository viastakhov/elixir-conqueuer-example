defmodule MyApp.Application do
  use Application
  require Logger

  @conqueuers 100

  def start(_type, _args) do
    Logger.debug "[#{inspect self()}] Application starting ..."

    children = Conqueuer.child_specs(:resolvers, MyApp.ResolversPoolSupervisor) ++ [{MyTask, @conqueuers}]

    opts = [strategy: :one_for_one, name: MyApp.Supervisor, max_restarts: 3000]
    Supervisor.start_link(children, opts)
  end
end
