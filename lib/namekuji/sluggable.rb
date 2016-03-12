module Namekuji
  module Sluggable
    def to_param
      send(self.class.slug_field)
    end

    protected

    # Generate the slug by removing parentheses, then running
    # `ActiveSupport::Inflector#parameterize` on the sluggable field.
    def slugify
      send("#{self.class.slug_field}=", send(self.class.sluggable_field).tr("'", "").parameterize)
    end
  end
end
