require 'pry'

cart = [
  {"AVOCADO" => {:price => 3.00, :clearance => true}},
  {"KALE" => {:price => 3.00, :clearance => false}},
  {"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
  {"ALMONDS" => {:price => 9.00, :clearance => false}},
  {"TEMPEH" => {:price => 3.00, :clearance => true}},
  {"CHEESE" => {:price => 6.50, :clearance => false}},
  {"BEER" => {:price => 13.00, :clearance => false}},
  {"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
  {"BEETS" => {:price => 2.50, :clearance => false}},
  {"SOY MILK" => {:price => 4.50, :clearance => true}}
]

def consolidate_cart(cart)
  new_arr = {}

  cart.each do |i| #{"AVOCADO"=>{:price=>3.0, :clearance=>true}}
    i.each do |food_name, food_hash| #"AVOCADO", {:price=>3.0, :clearance=>true}
      new_arr[food_name] ||= {}

      food_hash.each do |key, value| #:price, 3.0
        new_arr[food_name][key] ||= value
        new_arr[food_name][:count] ||= 0
      end
    end
  end

  cart.each do |i| #{"AVOCADO"=>{:price=>3.0, :clearance=>true}}
    i.each do |food_name, food_hash| #"AVOCADO", {:price=>3.0, :clearance=>true}
      new_arr[food_name][:count] += 1
    end
  end

  new_arr
end



def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
