defmodule HelloPhoenix.Message do
  use HelloPhoenix.Web, :model

  schema "messages" do
    field :content, :string
    belongs_to :user, HelloPhoenix.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
