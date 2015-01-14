require('rspec')
require('dictionary')

describe(Term) do
  before() do
   Term.clear()
  end

  describe("#create") do
    it("creates a dictionary word entry") do
      test_word = Term.new("carrot", "A delicious vegetable")
      expect(test_word.create()).to(eq("carrot"))
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
end
