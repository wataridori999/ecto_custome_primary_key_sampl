defmodule EctoCustomePrimaryKeySample.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items, primary_key: false) do # "<-- , primary_key: false" を追加
      add :item_code, :string, primary_key: true # "<-- , primary_key: true" を追加
      add :category, :string
      add :name, :string

      timestamps()
    end

  end
end
