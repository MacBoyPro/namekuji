require 'namekuji/class_methods'
require 'namekuji/sluggable'

# Adds the sluggable class method to an ActiveModel model.
module Namekuji
  extend ActiveSupport::Concern

  included do
    include Namekuji::ClassMethods
  end
end
