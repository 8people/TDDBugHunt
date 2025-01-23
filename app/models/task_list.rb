class TaskList < ApplicationRecord
  has_many :tasks, inverse_of: :task_list
end
