defmodule Identicon do
  @moduledoc """
  Generating identicon based on as string
  """
  @doc """
  Main function which would call all the helper function to complete the image generation process from the string
  """
  def main(input) do
    input
    |> hash_input
  end

  def hash_input(input) do
    hash =
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list()

    %Identicon.Image{hex: hash}
  end
end
