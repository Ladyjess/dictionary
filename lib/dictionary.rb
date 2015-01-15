class Term
  @@all_words = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
    @id = @@all_words.length() +1
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:search) do |find_me|
    answer = ""
    @@all_words.each() do |terms|
    if terms.word.eql?(find_me)
      answer = terms.definition()
    end
  end
  answer
end



  define_method(:id) do
    @id
  end


  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end
end
