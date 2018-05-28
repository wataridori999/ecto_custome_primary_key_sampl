defmodule EctoCustomePrimaryKeySample.Items.Item do
  use Ecto.Schema
  import Ecto.Changeset


  @primary_key {:item_code, :string, []} # <-- 主キー項目と型を指定
  @derive {Phoenix.Param, key: :item_code} # <-- Phoenixになんのパラメータキーとするか指定
  schema "items" do
    field :category, :string
    # field :item_code, :string   <-- 重複定義となるためfield指定は削除する
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:item_code, :category, :name])
    |> validate_required([:item_code, :category, :name])
  end
end
