# List of Map entry, keywordlist

listmap = [{:a, 1}, {:b, 2}] #keyword argument must be followed by space after: a:
listmap == [a: 1, b: 2]
listmap[:a]
# In general, when the keyword list is the last argument of a function, the square brackets are optional.
# https://elixir-lang.org/getting-started/keywords-and-maps.html

map = %{:a => 1, 2 => :b}
map[2]
%{:a => x, 2=>:b} = %{:a => 1, 2 => :b}
x
Map.get(%{:a => 1, 2 => :b}, :a)
Map.put(%{:a => 1, 2 => :b}, :c, 3)
%{map | 2 => "two"} #change value
Map.to_list(%{:a => 1, 2 => :b}) #[{2, :b}, {:a, 1}]

map = %{a: 1, b: 2} #all key are atom with keyword syntax
map.a #syntax for accessing atom keys

users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

put_in(users[:join].age, 20)
update_in users[:mary].languages, fn languages -> List.delete(languages, "Clojure") end #get_and_update_in/2

# https://hexdocs.pm/elixir/Kernel.html