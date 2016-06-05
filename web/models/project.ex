defmodule PhoenixPortfolio.Project do
  use PhoenixPortfolio.Web, :model

  schema "projects" do
    field :name, :string
    field :url, :string
    field :description, :string
    field :thumbnailUrl, :string
    field :priority, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :url, :description, :thumbnailUrl, :priority])
    |> validate_required([:name, :url, :description, :thumbnailUrl, :priority])
  end
end
