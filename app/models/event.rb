class Event < ActiveRecord::Base
  after_create :slugify_title

  private

  def slugify_title
    self.title_slug = title.parameterize
    self.save
  end
end
