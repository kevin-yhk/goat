class CommentSerializer < ActiveModel::Serializer
    belongs_to :player
    attributes :id, :dog_id, :name, :content
  end