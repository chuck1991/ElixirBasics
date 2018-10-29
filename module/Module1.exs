defmodule Example do
  @moduledoc """
     This is the first mix module I used to test basic functions when learning, compile and run 'h Example'
  """
  @greeting "Hello"
  @bye "Bye"
  
  @doc """
  Prints a hello message

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Greeter.greeting("Sean")
      "Hello, Sean"

      iex> Greeter.greeting("pete")
      "Hello, pete"

  """
  
  def greeting(name) do
    "#{@greeting} #{name}."
  end

  def buy(name) do
  	"#{@bye}"
  end

end

# command line
# $elixirc Module1.exs
# $iex
# $Example.greeting "kai"

#or 

# $iex
# $c "Module1.exs"
# $Example.greeting "kai"
