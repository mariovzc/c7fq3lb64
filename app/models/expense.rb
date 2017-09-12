class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  def self.search(concept: nil, category_id: nil)
    with_concept(concept)
      .with_category_id(category_id)
  end
  scope :with_concept, proc { |concept|
    if concept.present?
      where("concept like ?", "%#{concept}%")
    end
  }
  scope :with_category_id, proc { |category_id|
    if category_id.present?
      where(category_id: category_id)
    end
  }
  scope :with_user, proc { |user|
    if user.present?
      where(user: user)
    end
  }

end
