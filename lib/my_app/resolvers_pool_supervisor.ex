defmodule MyApp.ResolversPoolSupervisor do
  use Conqueuer.Pool, name: :resolvers,
                      worker: MyApp.ResolverWorker,
                      size: 5,
                      max_overflow: 2
end
