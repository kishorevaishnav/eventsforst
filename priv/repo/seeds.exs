alias PhoenixTrello.{Repo, User}

[
  %{
    first_name: "John",
    last_name: "Doe",
    email: "test@test.com",
    password: "test567890"
  },
]
|> Enum.map(&User.changeset(%User{}, &1))
|> Enum.each(&Repo.insert!(&1))
