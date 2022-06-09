class Author < ApplicationRecord
    has_many(
        :posts,
        class_name: 'Post',
        foreign_key: 'author_id',
        inverse_of: :author,
        dependent: :destroy
      )
end