require 'pry'

class Author
  # @@all = []
  attr_reader :name
  attr_accessor :posts

  def initialize(name)
    @name  = name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    # @@all << new_post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    # @@all << new_post
  end

  def self.post_count
    # @@all.length
  end
end
