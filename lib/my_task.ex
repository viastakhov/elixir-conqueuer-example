defmodule MyTask do
  use Task
  require Logger

  def start_link(arg) do
    Logger.debug "[#{inspect self()}] MyTask starting ..."
    Task.start_link(__MODULE__, :run, [arg])
  end

  def run(arg) do
    Enum.each(1..arg, fn(i) ->
      Conqueuer.work(:resolvers, {i, arg})
    end)

    Logger.debug "[#{inspect self()}] MyTask starting done."
  end
end
