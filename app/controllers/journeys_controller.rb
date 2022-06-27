class JourneysController < ApplicationController
  def index
    #@journeys = Journey.all
  end

  def result
    #kgCO2e
    @km = params[:km]
    @transports = Transport.all
    @i = 0
    @results = []

    @transports.each do |transport|
      @results[@i]= {
        'co2' => @km.to_f * transport.multiplier,
        'name' => transport.name
      }
      @i += 1
    end

    @journey = Journey.new
    @journey.distance = @km
    @journey.result_walk = @results[0]['co2']
    @journey.result_train = @results[1]['co2']
    @journey.result_electrical_car = @results[2]['co2']
    @journey.result_bus = @results[3]['co2']
    @journey.result_plane = @results[4]['co2']
    @journey.result_car = @results[5]['co2']
    @journey.user_id = current_user.id
    @journey.save

  end

end
