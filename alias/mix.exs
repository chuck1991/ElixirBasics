defmodule MyApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_app,
      version: "1.0.0",
      aliases: aliases()
    ]
  end

  defp aliases do
    [
      c: "compile",
      hello: &hello/1
    ]
  end

  defp hello(_) do
    Mix.shell.info "Hello world"
  end
end

# $mix c
# #mix hello