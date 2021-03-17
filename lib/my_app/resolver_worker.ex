defmodule MyApp.ResolverWorker do
  use Conqueuer.Worker
  require Logger

  def perform({current, total}, _state) do
    Logger.debug "[#{inspect self()}] Conqueuer.Worker starting [#{current} / #{total}] ..."
    :timer.sleep 1000
    Logger.debug "[#{inspect self()}] Conqueuer.Worker [#{current} / #{total}] done."
  end
end
