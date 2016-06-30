def find_employees_role(name)
  $employees.find do |employee|
    employee['first_name'] + ' ' + employee['last_name']==name
  end['role'] rescue "Does not work here!"
end

def break_chocolate(n, m)
  n == 0 || m == 0 ? 0 : n * m - 1
end