require('rspec')
require('dictionary')
require('pry')

describe(Term) do
  before() do
   Term.clear()
  end

  describe("#word") do
    it("creates a dictionary word entry") do
      test_word = Term.new("carrot", "A delicious vegetable")
      expect(test_word.word()).to(eq("carrot"))
    end
  end

  describe(".all") do
      it("is empty at first") do
        expect(Term.all()).to(eq([]))
      end
    end

  describe("#definition") do
    it("creates a definition linked to a word") do
      test_word = Term.new("dog", "A cute animal")
      expect(test_word.definition()).to(eq("A cute animal"))
    end
  end

  describe(".search") do
    it("lets user search word and get back the definition") do
      test_word = Term.new("dog", "A cute animal")
      test_word.save()
    expect(Term.search("dog")).to(eq("A cute animal"))
   end
  end

  describe("#id") do
    it("returns id of the word") do
      test_word = Term.new("dog", "A cute animal")
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end


  describe("#save") do
    it("adds new data to master list") do
      test_word = Term.new("dog", "A cute animal")
      test_word2 = Term.new("panther", "A lithe animal")
      test_word.save()
      test_word2.save()
      expect(Term.all()).to(eq([test_word, test_word2]))
    end
  end

  describe('.clear') do
    it("clears the term entry") do
      test_word = Term.new("dog", "A cute animal")
      test_word2 = Term.new("panther", "A lithe animal")
      Term.clear()
      expect(Term.all()).to(eq([]))
    end
  end
end
