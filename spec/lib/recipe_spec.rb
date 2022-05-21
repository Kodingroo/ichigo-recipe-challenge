require "spec_helper"
require "recipe"

describe Recipe do
  /* Recipes should have a name and allow multiple ingredients and methods */
  describe 'Pancake' do
    /* Context allows several tests to be run off a single test subject */
    subject {
      described_class.new(name: 'Pancake',
                          ingredients: ["Store-bought pancake mix", "Water"],
                          method_steps: ['Mix the ingredients', 'Cook them in a pan']
      ) }
    /* Seperate tests to Keep It Simple. */
    context 'when created' do
      it 'records the recipe name' do
        expect(subject.name).to eq 'Pancake'
      end
      it 'records ingredients' do
        expect(subject.ingredients).to eq ["Store-bought pancake mix", "Water"]
      end
      it 'records methods' do
        expect(subject.method_steps).to eq ['Mix the ingredients', 'Cook them in a pan']
      end
    end
  end

  describe 'Miso Soup' do
    subject {
      described_class.new(name: 'Miso Soup',
                          ingredients: ['Tofu', 'White miso paste'],
                          method_steps: ['Mix miso paste into boiling water', 'Add tofu and serve']
      ) }

    context 'when created' do
      it 'records the recipe name' do
        expect(subject.name).to eq 'Miso Soup'
      end
      it 'records ingredients' do
        expect(subject.ingredients).to eq ['Tofu', 'White miso paste']
      end
      it 'records methods' do
        expect(subject.method_steps).to eq ['Mix miso paste into boiling water', 'Add tofu and serve']
      end
    end
  end
end