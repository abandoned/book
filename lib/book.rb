class Book < Structure
  key      :edition
  key      :format
  key      :isbn
  key      :pages,          :type => Integer
  key      :publisher
  key      :title
  key      :volumes,        :type => Integer
  key      :year_published, :type => Integer
  has_many :authors
  has_many :identifiers
  has_many :images
  has_many :other_editions

  def isbn
    identifier =
      identifiers.detect { |identifier| identifier.name == 'ISBN-13' } ||
      identifiers.detect { |identifier| identifier.name == 'ISBN-10' }

    identifier ? identifier.value : nil
  end
end
