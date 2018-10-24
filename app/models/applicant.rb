class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :jobs, join_table: 'job_applications', dependent: :destroy
  def full_name
    "#{first_name} #{last_name}"
  end

  def already_applied?(job)
    jobs.include?(job)
  end
end
