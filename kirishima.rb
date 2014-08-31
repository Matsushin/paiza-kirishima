
class Kirishima
  def initialize(worker_number, company_number, company_information)
    @worker_number = worker_number
    @company_number = company_number
    @company_information = company_information
  end

  def relieve
    answer = 999999999999
    @company_number.times do |index|
      @company_information.combination(index + 1) {|combination|
        worker_count = 0
        costs = 0
        combination.each {|information|
          worker_count += information[0].to_i
          costs += information[1].to_i
        }

        if costs > 0 && worker_count >= @worker_number
          if costs < answer
            answer = costs
          end
        end
      }
    end
    answer
  end
end
