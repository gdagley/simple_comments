module SimpleComments
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def simple_comments
      has_many :comments, :as => :commentable, :dependent => :destroy
    end    
  end
  
end
