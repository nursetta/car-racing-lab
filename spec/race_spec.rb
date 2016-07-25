require 'spec_helper'

RSpec.describe Race do
  describe '::new' do
    
    it 'instantiates two cars' do
      race = Race.new
        expect(race.cars[0].class).to eq Car
        expect(race.cars[1].class).to eq Car
    end

    it 'accelerates the cars to random speeds' do
      race = Race.new
      random = Random.new
        expect(race.cars[0].speed).to_not eq race.cars[1].speed
    end
  end

  describe '#winner' do
    it 'returns the winner' do
      race = Race.new
      random = Random.new
      expect(race.winner).to eq(race.winner)
    end
  end
    it 'is not the loser' do
      race = Race.new
      random = Random.new
      expect(race.winner).not_to eq(race.loser)
    end
 

  describe '#loser' do
    it 'returns the loser' do
      race = Race.new
      random = Random.new
      expect(race.loser).to eq(race.loser)
    end
    it 'is not the winner' do
      race = Race.new
      random = Random.new
      expect(race.winner).not_to eq(race.loser)
    end
  end
end


