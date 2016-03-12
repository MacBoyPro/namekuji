require 'namekuji/class_methods'
require 'namekuji/sluggable'

module Namekuji
  extend ActiveSupport::Concern

  included do
    include Namekuji::ClassMethods
  end
end
