class Array

	def rebuild!(&block)

  	  for element in self

  		if element.kind_of?(Array)
  			element.map!{ |e| yield(e) }                 if block.arity == 1
  			element.map!{ |e| yield(e, element.length) } if block.arity == 2
  		else
  			self.map! { |e|  e == element ? yield(element) : e }              if block.arity == 1
  			self.map! { |e|  e == element ? yield(element, self.length) : e } if block.arity == 2
  		end

  	  end

  	end
end
