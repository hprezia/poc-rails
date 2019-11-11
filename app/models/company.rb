require 'httparty'

class Company < ApplicationRecord
  before_save :check_rate

  private
    def check_rate
      if self.updated_at == nil || self.updated_at < Date.today - 30

        if self.limit > 1000000
          self.rate = "A"
        elsif self.limit > 100000
          self.rate = "B"
        else
          self.rate = "C"
        end

        # response = HTTParty.get("https://www.receitaws.com.br/v1/cnpj/#{self.federalId}")

        # if response.code != 200
        #   self.rate = "F";
        # else
        #   something = JSON.parse(response.body)
          
        #   puts something

        #   if something.capital_social.to_f >  100000
        #     self.rate = "A";
        #   else
        #     self.rate = "B";
        #   end
        # end
      end
    end
end
