class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :bio, length: { minimum: 30 }
    validates :age, numericality: { greater_than: 0 }

    # def total_likes
    #     all_likes = self.posts.map{|post| post.likes}
    #     all_likes.sum
    # end

    def featured_post
        # self.posts.max_by{|post| post.likes}
        self.posts.order(likes: :desc)[0]
    end

    
end
