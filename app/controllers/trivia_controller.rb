class TriviaController < ApplicationController

    def index
        random_couple = Marriage.order('RANDOM()').first
        spouses = []

        if rand(1..2) == 1

            @celeb = Celebrity.find(random_couple.husband)
            wife = Celebrity.find(random_couple.wife)
            spouses<< Celebrity.find(random_couple.wife)
            fakes = Celebrity.where.not(:name => wife.name).where.not(:gender => "male").limit(3).order('RANDOM()')

            
        else

            @celeb = Celebrity.find(random_couple.wife)
            husband = Celebrity.find(random_couple.husband)
            spouses << Celebrity.find(random_couple.husband)
            fakes = Celebrity.where.not(:name => husband.name).where.not(:gender => "female").limit(3).order('RANDOM()')

        end

        fakes.each do | fake |
            spouses.append fake
        end
        @random_spouses = spouses.shuffle

    end

    def guess
        @spouse1 = params[:spouse_id]
        @spouse2 = params[:guess]
        @guess = GuessLog.new()
        @guess.spouse1_id = params[:spouse_id]
        @guess.spouse_guess = params[:guess]
        @guess.guesser_ip = request.remote_ip
        if Marriage.find_by(husband: params[:spouse_id], wife: params[:guess])
            @guess.correct = true
            flash[:success] = "Correct"
        elsif Marriage.find_by(husband: params[:guess], wife: params[:spouse_id])
            @guess.correct = true
            flash[:success] = "Correct"
        else
            @guess.correct = false
            flash[:danger] = "Wrong"
        end
        @guess.save
        redirect_to root_url
    end

end
