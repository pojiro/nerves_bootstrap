defmodule Mix.Tasks.Nerves.Clean do
  use Mix.Task

  @switches [package: :string]

  def run(argv) do
    {opts, _, _} = OptionParser.parse(argv, switches: @switches)
    package = opts[:package]
    Mix.Tasks.Nerves.Env.run([])
    Nerves.Env.clean(package)
  end

end
