class Term
  @@all_terms = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end

  define_singleton_method(:all) do
    @@all_terms
  end

  define_method(:create) do
    @word
  end

  define_method(:definition) do
    @definition
  end

=begin
  define_method(:list) do
    @ = []
  end
=end

  define_method(:save) do
    @@all_terms.push(self)
  end

  define_singleton_method(:clear) do
    @@all_terms = []
  end
end
