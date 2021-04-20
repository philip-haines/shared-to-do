class User < ApplicationRecord
    has_many :memberships
    has_many :communities, through: :memberships
    has_many :user_tasks
    has_many :tasks, through: :user_tasks
    has_secure_password
end
