require 'rspec/expectations'

Given /^un conversor$/ do
	@conversor = Conversor.new

  #pending # express the regexp above with the code you wish you had
end

When /^le paso (\d+)$/ do |numero|
	@resultado=@conversor.convertir_romano(numero.to_i)
  #pending # express the regexp above with the code you wish you had
end

Then /^lo convierte a ([A-Z]*)/ do |valor_romano|
	@resultado.should == valor_romano
  #pending # express the regexp above with the code you wish you had
end

class Conversor
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
			when 11 then "XI"
			when 12 then "XII"
			when 13 then "XIII"
			when 14 then "XIV"
			when 15 then "XV"
			when 16 then "XVI"
			when 17 then "XVII"
			when 18 then "XVIII"
			when 19 then "XIX"
			when 20 then "XX"
			# else decena_romano(numero)
			#when 11 then "XI"

		end
	end
	#def decena_romano(numero1)
	#	residuo=numero1/10
	#	return "XI" if numero1 == 11
	#end
end