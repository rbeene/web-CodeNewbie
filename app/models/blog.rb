class Blog < ActiveRecord::Base
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, :use => :slugged
end
