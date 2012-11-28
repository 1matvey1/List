class List
Element = Struct.new(:value, :prev, :next)
 @@i = 1
def initialize(element) 
  @element = Element.new(element,nil,nil) 
  @list = []
  @list << @element.prev << @element.value << @element.next 
end

def add(size)
 @list[-1] = size
  @list << nil     
end 

def right  
 @@i = @@i + 1
if @@i == @list.length-1
 @@i = @@i - 1
 return "nil. Last element: " + @element.value
else
 @element.value = @list[@@i]
end 
 @element.value   
end

def left
 @@i = @@i - 1
 if @@i==0
    puts "nil. First element:"
    @@i = @@i + 1
 else
    @element.value = @list[@@i]      
 end
 @element.value
end

def insert(size)
  @list.insert(@@i+1,size)  
end

def delete(size)
  @list.delete(size)
end

def prev
   @element.prev = @list[@@i-1]
   @element.prev
end

def next
   @element.next = @list[@@i+1]
   @element.next
end

def value
   @element.value = @list[@@i]
end

end
h=List.new('a')
h.add('b')
h.add('c')
 h.insert('d')
p h
h.delete('d')
p h

