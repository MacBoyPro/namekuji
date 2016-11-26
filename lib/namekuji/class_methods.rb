module Namekuji
  module ClassMethods
    # Takes the field name passed in the `:on_field` option (or the output of
    # the model's `to_s` method), parameterizes it, and saves it in the field
    # name passed in the `:slug_field` option (or the `slug` field).
    def sluggable(options = {})
      cattr_accessor :sluggable_field, :slug_field
      self.sluggable_field = (options[:on_field] || :to_s).to_s
      self.slug_field = (options[:slug_field] || :slug).to_s

      before_validation :slugify, :unless => Proc.new { |model| model.send(slug_field.to_sym).nil? }

      validates self.slug_field.to_sym, allow_blank: false, allow_nil: true, uniqueness: true, format: {
        with: %r{\A[0-9a-z-]+\Z},
        message: "may only contain lowercase letters (a-z), numbers (0-9), and dashes (-)"
      }

      include Namekuji::Sluggable
    end
  end
end
