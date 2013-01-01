def string_shuffle(s)
	s.split('').shuffle.join
end

class String
	def shuffle
		self.split('').shuffle.join
	end
end

def make
person1 = {first: "daniel",last: "pedder"}
person2 = {first: "Terry", last: "pedder"}
person3 = {first: "Alan", last: "green"}

params = {father: person3, mother: person2, child: person1}
end


