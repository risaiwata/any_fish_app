class AddImageToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :image, :string
  end
end
