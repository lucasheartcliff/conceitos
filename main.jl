sum(x::Float64,y::Float64) = x+y
sub(x::Float64,y::Float64) = x-y
multiply(x::Float64,y::Float64) = x*y
power(x::Float64,y::Float64) = x^y

function divide(x::Float64,y::Float64)
  if(y==0) 
    throw(DomainError("Não é possivel dividir um número por zero."))
  end
  return x/y
end


function getEntries()
  println("Digite o valor do 1° número")
  input1 = readline()
  num1 = parse(Float64, isNumber(input1) ? input1 : 0)
  
  println("Digite o valor do 2° número")
  input2 = readline()
  num2 = parse(Float64, isNumber(input2) ? input2 : 0)
  
  return [num1,num2]
end

function isNumber(a)
  try
    return tryparse(Int64, a) != nothing
  catch
    return false
  end
end

function main()
  operation = 0

  while(operation != -1)
    result = 0
    println("Digite um número respectivo à operação desejada:\n1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n5 - Potenciação\n\nDigite -1 para sair do programa.") 
    input = readline()
    operation = parse(Int64, isNumber(input) ? input : 0) # Transforma a entrada digitada em um número
    
    if(operation < 1 ||operation > 5 )
      continue
    end
    
    entries = getEntries()
    
    if(operation == 1)
      result = sum(entries[1],entries[2])
    elseif(operation ==2)
      result = sub(entries[1],entries[2])
    elseif(operation ==3)
      result = multiply(entries[1],entries[2])
    elseif(operation ==4)
      result = divide(entries[1],entries[2])
    elseif(operation ==5)
      result = power(entries[1],entries[2])
    end
    
    println("Resultado: ", result)
  end
end