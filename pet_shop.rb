def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sales)
  return pet_shop[:admin][:pets_sold] += sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, new_breed)
  pets = []
  for pet in pet_shop[:pets] 
    if pet[:breed] == new_breed
      pets << new_breed
    end    
  end
  return pets
end

def find_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet
    end
  end
  
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
    pet[:name].delete!(name)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(with_pet)
  total = []
    for customer in @customers
      total += customer[:pets]
    end
    return total.count
end 

def add_pet_to_customer(customer, new_pet)
  customer[:pet] << new_pet
  return customer[:pet].count
end