class Project < ActiveRecord::Base
  has_many :funding_levels, dependent: :nullify
  has_many :pledges, dependent: :nullify
  validates :name, presence: true
  validates :description, presence: true

  def project_name
    name.length > 2
  end
end
