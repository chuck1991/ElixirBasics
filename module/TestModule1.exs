# ExUnit.start()

defmodule TestExample do
	use ExUnit.Case
	doctest Example

	test "Test greeting" do
		assert Example.greeting("Stub") == "Hello Stub"
	end

end

# ExUnit.Server.cases_loaded() or ExUnit.Server.modules_loaded() after 1.6
# ExUnit.run()
# https://hexdocs.pm/ex_unit/ExUnit.html
# https://stackoverflow.com/questions/40805663/how-to-run-exunit-tests-within-iex