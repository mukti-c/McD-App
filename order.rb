require_relative 'menu'
class Order
    def initialize
        @order = Hash.new(0)
        @cost_of_order = 0
    end
    
    def place_order(menu)
        loop do
            puts "Enter item: "
            item = gets.chomp.to_s
            if menu[item].nil? && item != "quit"
                puts "Item is not on the menu!"
            elsif item == "quit"
                puts "Your order has been placed as follows:"
                @order.each { |key, value| puts "#{key}: #{value}" }
                puts "Total cost is #{@cost_of_order}."
                return @order
                break
            else
                puts "Enter quantity: "
                count = gets.chomp.to_i
                @order[item] += count*menu[item]
                @cost_of_order += count*menu[item]
            end
        end
    end
end
