defmodule Mix.Tasks.Hello do
  use Mix.Task

  @shortdoc "My doc for hello task, which is useless "
  def run(_) do
    Mix.shell.info "hello"
  end
end


# elixirc hello.exs
# mix help