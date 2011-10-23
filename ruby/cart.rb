#
# Copyright (c) 2010 Sairam Kunala
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE. 
#

# Trying to figure out what would be a in a cart class
# 

class Cart 
  # yes, one can 
  # we have @userid with us 
  
  def :before 
    # make sure both item and store are valid and we already have verification done for that
    # check qty is positive and limit to availabilty . Also checked during check out 
    # make sure these are not XSS requests
  end
  
	def add_item (item, qty, store)
    # get the current price of the item from the cost of the item. 
    
    # update cart with item and add this item price to cart along with the qty requested
    

  end
  
  def merge_carts
   # if the user logged in after placing some items in the cart, we would want to merge them into the cart 
  end
  
  def list_cart
    # to be shown in the view as key, value pairs
    @cart[@user_id]
  end
  
  def update_cart ( item, qty )
    @cart[@userid][item]
  end
  
  def check_items_in_cart 
    # cross check if any of the values were changed. 
    # update the cart and alert 
  end
  
  def remove_item (item , qty)

    update_cart(item,-qty)

  end
  
  public :add_item, :remove_item, :list_cart
  private :update_cart, :check_items_in_cart
end
