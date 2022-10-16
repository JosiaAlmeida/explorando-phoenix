defmodule MyApp.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MyApp.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        description: "some description",
        email: "some email",
        name: "some name"
      })
      |> MyApp.Users.create_user()

    user
  end
end
