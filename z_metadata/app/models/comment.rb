class Comment < Content

  belongs_to :article
  
  scope :approved, where(:approved => true)
  scope :unapproved_comments, where(:approved => false)
  


end
