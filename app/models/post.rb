class Post < ApplicationRecord
    belongs_to(
        :author,
        class_name: 'Author',
        foreign_key: 'author_id',
        inverse_of: :posts
      )
end 