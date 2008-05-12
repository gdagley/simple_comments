class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :message
  
  def self.latest_comments(limit = 10)
    find(:all, :limit => limit, :order => 'created_at DESC')
  end
end