class Merchant < ActiveRecord::Base
  def self.search(filters)
    @scoped = where(nil)
    filters.map do |key, val|
      @scoped = @scoped.send("search_#{key}", val)
    end
    @scoped
  end

  def self.search_id(search)
    where(id: search)
  end

  def self.search_created_at(search)
    where(created_at: search)
  end

  def self.search_updated_at(search)
    where(updated_at: search)
  end

  def self.search_name(search)
    where("name ilike '%#{search}%'")
  end
end
