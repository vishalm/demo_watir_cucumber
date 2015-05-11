class SimpleCalculator
  def initialize op1,op2
    @op1 = op1
    @op2 = op2
  end

  def addition op1 = @op1, op2 = @op2
    op1.to_i + op2.to_i
  end

  def subtraction op1 = @op1, op2 = @op2
    op1.to_i - op2.to_i
  end

  def multiplication op1 = @op1, op2 = @op2
    op1.to_i * op2.to_i
  end

  def division op1 = @op1, op2 = @op2
    op1.to_i / op2.to_i
  end

end