module Namekuji
  module ClassMethods
    def sluggable(options = {})
      cattr_accessor :sluggable_field, :slug_field
      self.sluggable_field = (options[:on_field] || :to_s).to_s
      self.slug_field = (options[:slug_field] || :slug).to_s

      before_validation :slugify

      validates self.slug_field.to_sym, presence: true, uniqueness: true, format: {
        with: %r{\A[0-9a-z-]+\Z},
        message: "may only contain lowercase letters (a-z), numbers (0-9), and dashes (-)"
      }

      include Namekuji::Sluggable
    end
  end
end
