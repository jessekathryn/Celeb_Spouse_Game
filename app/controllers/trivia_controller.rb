class TriviaController < ApplicationController

    def index
        random_couple = Marriage.order('RANDOM()').first
        spouses = []

        if rand(1..2) == 1

            @celeb = Celebrity.find(random_couple.husband)
            wife = Celebrity.find(random_couple.wife)
            spouses<< Celebrity.find(random_couple.wife)
            fakes = Celebrity.where.not(:name => wife.name, :gender => "male").limit(3).order('RANDOM()')

            
        else

            @celeb = Celebrity.find(random_couple.wife)
            husband = Celebrity.find(random_couple.husband)
            spouses << Celebrity.find(random_couple.husband)
            fakes = Celebrity.where.not(:name => husband.name, :gender => "female").limit(3).order('RANDOM()')

        end

        fakes.each do | fake |
            spouses.append fake
        end
        @random_spouses = spouses.shuffle

    end

end
