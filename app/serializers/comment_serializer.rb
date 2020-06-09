class CommentSerializer < ActiveModel::Serializer
    belongs_to :player
    attributes :id, :name, :content, :player_id
  end