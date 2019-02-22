# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'
class User
  attr_accessor :name, :photos

  def initialize (name)
    self.name = name
    self.photos = []
  end

end

class Photo
  attr_reader :user
  attr_accessor :comments

  def initialize
    self.comments = []
  end

  def user= (user)
    @user = user
    user.photos << self
  end

  def make_comment (text)
    new_comment = Comment.new(text)
    self.comments << new_comment
  end


end

class Comment
  @@all = []

  attr_accessor :comment_text

  def initialize (comment_text)
    self.comment_text = comment_text
    @@all << self
  end

  def self.all
    @@all
  end

end


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
