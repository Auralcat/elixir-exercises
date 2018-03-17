defmodule Desafio_01Tc do
  def mostrar_dica do
    # Escolhe um string aleatório de dica para mostrar
    dicas = ["Poção mágica", "líquido encantado em frasco"]
    Random.choice(dicas)
  end

  def adivinhar_palavra() do
    # Receber a entrada
    tentativa = IO.gets("Digite a palavra >> ") |> String.replace(~r/\r|\n/, "")
    if (tentativa == "elixir") do
      IO.puts("Parabéns, você acertou!")
    else
      IO.puts("Errado, você perdeu.")
    end
  end
end

# Apresentando o programa
IO.puts("Olá, prepare-se para adivinhar a palavra!")
