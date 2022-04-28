sum(x,y) = x+y
sub(x,y) = x-y
multiply(x,y) = x*y

function divide(x,y)
  if(y == 0) throw(DomainError("Não é possivel dividir um número por zero."))
    return x/y
end

power(x,y) = x^y

