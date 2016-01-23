class Ferret    #classes start with a capital letter
 
	def set_name=(ferret_name)    # = should be part of setter method name, no spaces
		@name = ferret_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chincilla
 
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end
	
	def get_name               #added missing getter method for class Chincilla
	    return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeek
		return "eeeep"
	end
 
end
 
class Parrot
 
	def set_name=(parrot_name)
		@name = parrot_name       #corrected name of variable passed to method
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
    
    def tweet                   #added missing tweet method
        return "chirp"
    end 
end
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name
 
my_chincilla = Chincilla.new
my_chincilla.set_name= "Dali"
chincillaname = my_chincilla.get_name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.tweet}, 
and #{chincillaname} says #{my_chincilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect

#all of these classes have very similar methods, a name, an owner, and a sound
#one pet class could be defined with an adittional method to set/get type of pet

class Pet    
	def set_type=(type)
	    @type = type
	end
	    
	def get_type
	    return @type
	end
	
	def set_name=(pet_name)   
		@name = pet_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def sound(type)
		case type
		when "ferret" 
		    return "squeeee"
		when "chincilla" 
		    return "eeeep"
		when "parrot" 
		    return "chirp"
		end
	end
end

my_ferret = Pet.new
my_ferret.set_type= "ferret"
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name

my_parrot = Pet.new
my_parrot.set_type= "parrot"
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name

my_chincilla = Pet.new
my_chincilla.set_type= "chincilla"
my_chincilla.set_name= "Dali"
chincillaname = my_chincilla.get_name

 
puts "#{ferretname} says #{my_ferret.sound(my_ferret.get_type)}, 
#{parrotname} says #{my_parrot.sound(my_parrot.get_type)}, 
and #{chincillaname} says #{my_chincilla.sound(my_chincilla.get_type)}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect
