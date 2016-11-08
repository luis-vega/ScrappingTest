class SiteSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_many :titles
  has_many :anchors
end
