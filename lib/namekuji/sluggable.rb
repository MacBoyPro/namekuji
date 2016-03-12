module Namekuji
  module Sluggable
    def to_param
      send(self.class.slug_field)
    end

    protected

    def slugify
      send("#{self.class.slug_field}=", send(self.class.sluggable_field).parameterize)
    end
  end
end
