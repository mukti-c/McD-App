class Menu
    #attr_accessor :menu
    
    def initialize
        # will be of the form item => price
        @menu = {}
    end
    
    public
    def menu
        @menu
    end
    
    def add_item
        puts "Enter the name of the item: "
        item_name = gets.chomp
        puts "Enter the price of the item: "
        item_price = gets.chomp
        @menu[item_name] = item_price.to_f
    end
    
    def remove_item
        puts "Enter the name of the item to be deleted: "
        item_name = gets.chomp
        if @menu[item_name].nil?
            puts "Item doesn't exist!"
        else
            @menu.delete(item_name)
            puts "#{item_name} has been deleted."
        end
    end
    
    def update_item
        puts "Enter the item to be updated: "
        item_name = gets.chomp
        if @menu[item_name].nil? 
            puts "Item doesn't exist!"
        else
            puts "Enter the updated price: "
            price = gets.chomp.to_f
            @menu[item_name] = price
            puts "The item price has been updated."
        end
    end
    
    def display
        @menu.each { |item, price| puts "#{item}: #{price}" }
    end
end
