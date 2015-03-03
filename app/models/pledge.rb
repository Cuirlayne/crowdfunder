class Pledge < ActiveRecord::Base
  belongs_to :project
  belongs_to :funding_level
  validates :funding_level, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :amount, presence: true

  def pledge_amount
    amount > 0
  end
end
