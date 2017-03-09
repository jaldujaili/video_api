module Jsonfiable

  def to_h
    attributes.compact.merge({})
  end

end