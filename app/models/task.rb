class Task < ApplicationRecord
  belongs_to :task_list, inverse_of: :tasks
  validates :description, presence: true
end
