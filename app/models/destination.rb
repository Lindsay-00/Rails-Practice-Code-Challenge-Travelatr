class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def recent
        self.posts.last(5)
    end

    def featured_post
        self.posts.max_by{|post| post.likes}
    end

    def ave_age
        bl = self.bloggers.uniq
        ave = bl.map{|blogger| blogger.age}
        ave.sum / ave.count
    end

end
