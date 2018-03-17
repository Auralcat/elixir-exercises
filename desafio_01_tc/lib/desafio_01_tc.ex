defmodule Desafio_01Tc do
  def mostrar_dica do
    # Escolhe um string aleatório de dica para mostrar
    dicas = ["Poção mágica", "líquido encantado em frasco"]
    "Dica: " <> Random.choice(dicas)
  end

  def adivinhar_palavra() do
    # Receber a entrada
    tentativa = IO.gets("Digite a palavra >> ") |> String.replace(~r/\r|\n/, "")
    if (String.downcase(tentativa) == "elixir") do
      IO.puts("Parabéns, você acertou!")
    else
      IO.puts("Errado, você perdeu.")
    end
  end

  def main do
    # Apresentando o programa
    IO.puts("Olá, prepare-se para adivinhar a palavra!")
    IO.puts(mostrar_dica())
    adivinhar_palavra()
  end
end

Desafio_01Tc.main
