class Recipe < ActiveRecord::Base
  #
  after_initialize :init

  validates :title,:description,:rating, presence: true

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user , :foreign_key => :user_id
  mount_uploader :image, ImageUploader
  #isfavorite set to false by default
   def init
      self.isfavorite  ||= false
    end

  #select recipes from database where title and description look like the searched recipe
  def self.search(search)
    where('description LIKE ? OR title LIKE ? ', "%#{search}%", "%#{search}%")
  end
  #Override the as_json method to include the user and recipe ingredients:
  def as_json(options = {})
    super(options.merge(include: {
                            ingredients: {only: [:name,:id]},
                            user: { only: [:name,:id]}
                                 }
          ))
  end




 

end

