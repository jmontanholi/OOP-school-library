require_relative '../Classes/corrector'

describe Corrector do 
  context 'Testing Corrector class' do
    before(:each) do
      @corrector = Corrector.new
    end

    it 'Corrects the name passed to it if the name has the right length' do
      name = 'jOAo'
      expect(@corrector.correct_name(name)).to eq('Joao')
    end

    it 'Trims and corrects a name if it is larger than 10 characters' do 
      name = 'joao vitor montanholi'
      expect(@corrector.correct_name(name)).to eq('Joao vitor')
    end
  end
end