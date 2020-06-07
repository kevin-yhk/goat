class PlayerSerializer < ActiveModel::Serializer
    has_many :comments
    attributes :id, :name, :ppg, :rpg, :apg, :description
  end