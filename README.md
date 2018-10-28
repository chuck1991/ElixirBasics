# ElixirBasics
Examples of using elixir


1. To start interactive elixir(iex) shell and run codes 
$iex

2. To load scripts from elixir script(exs) file 
$elixir name.exs

https://elixir-lang.org/getting-started/introduction.html

Features
Binary modifier
<<0,1, x::binary>> <<0,1, x::size(16)>> <<0,1, x::utf8>>
To Understand string hełło
UTF8 codepoints 
https://www.charset.org/utf-8
h 104 1 byte 
e 101 1 byte
ł 322 2 bytes
o 111 1 byte

byte_size("hełło") = 1 + 1 + 2 + 2 + 1 = 7
String.length("hełło") = 5
There, byte_size/1 counts the underlying raw bytes, and String.length/1 counts characters.

| Character | -> | codepoint |
| --- | --- | --- |
| a | ?a | 97 |
| Character | <- | codepoint |
| --- | --- | --- |
| a | <<97>> | 97 |
| String | -> | characters |
| --- | --- | --- |
| "ab" | String.codepoints("ab") | ["a","b"] |
| String | -> | binaries |
| --- | --- | --- |
| "ab" | "ab" <> <<0>>| <<97,98,0>> |
| String | -> | charlist |
| --- | --- | --- |
| "ab" | to_charlist "ab" | [97,98] |
| String | <- | charlist |
| --- | --- | --- |
| "ab" | to_string [97,98] | [97,98] |

Binary (number of bunch of bits is divisible by 8)
Represent <<0,1,2,3>> === 0000 0000, 0000 0001, 0000 0010, 0000 0011
Concat <<0,1>> <> <<2,3>> 
Modifier <<256::size(16),1>> === <<1,0,1>> ===0000 0001 1111 1111, 0000 0001

Bitstring (bit)
Represent <<1::size(1)>> or <<0::size(1)>>
Match pattern <<0, 1, x :: binary>> = <<0, 1, 2, 3>>

Charlists(list of codepoints)
Represent 'hello' = [104, 101, 322, 322, 111], don't believe the sheel note that by default IEx will only output code points if any of the integers is outside the ASCII range, try 'hełło'
Concat [0,1] ++ [1,2]

