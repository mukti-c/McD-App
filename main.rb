require_relative 'menu'
require_relative 'order'

menu = Menu.new
pending_orders = Hash.new
id = 1

loop do
    puts "1. Create menu\n2. Update menu\n3. Place order\n4. Serve order\n5. Exit"
    choice = gets.chomp.to_i
    
    case choice
    when 1
        loop do
            puts "Continue creating/quit?"
            c = gets.chomp.to_s.downcase
            c == "quit" ? break : menu.add_item
        end
            
    when 2
        puts "1. Delete item\n2. Update item"
        c = gets.chomp.to_i
        
        case choice
        when 1 then menu.remove_item
        when 2 then menu.update_item
        end
        
    when 3
        menu.display
        order = Order.new
        pending_orders[id] = order.place_order(menu.menu)
        id += 1
    
    when 4
        pending_orders.delete(pending_orders.keys.min)
        # the recently served order will be the oldest order
        # remaining in the hash. hence min key.
       
    else
        break
    end
end
