require 'rspec/expectations'

Given /^un conversor$/ do
	@conversor = Conversor.new

  #pending # express the regexp above with the code you wish you had
end

When /^le paso (\d+)$/ do |numero|
	@resultado=@conversor.convertir_arabigo(numero.to_i)
	#@resultado=@conversor.convertir_romano(numero.to_i)
  #pending # express the regexp above with the code you wish you had
end

Then /^lo convierte a ([A-Z]*)/ do |valor_romano|
	@resultado.should == valor_romano
  #pending # express the regexp above with the code you wish you had
end

class Conversor

	def convertir_arabigo(numero_arabigo)
		if numero_arabigo <11
			convertir_romano(numero_arabigo)
		else
			decena_romano(numero_arabigo)
		end
	end

	def convertir_romano(numero)
		case numero
			when 1 then "I"
			when 2 then "II"
			when 3 then "III"
			when 4 then "IV"
			when 5 then "V"
			when 6 then "VI"
			when 7 then "VII"
			when 8 then "VIII"
			when 9 then "IX"
			when 10 then "X"
			#else decena_romano(numero)
		end
	end

	def decena_romano(numero)
			return "X"+convertir_romano(numero%10)
	end	
end