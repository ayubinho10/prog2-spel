
require "gosu"
class SnakeGame < Gosu::Window

    def initialize
        super 800, 600
        self.caption = "Snake"
        
        @x = 400
        @y = 300
        
        @segments = [
            [@x, @y],             # 400, 300
            [@x + 20, @y],        # 420, 300
            [@x + 40, @y]         # 440, 300
        ]
    end



# 380, 300    
# 400, 300
# 420, 300
# 440, 300

    def update

    end

    def button_down(id)
        if id == (Gosu::KB_RIGHT)
            @x += 20
            pressed = true  
        end

        if id == Gosu::KB_LEFT
            @x -= 20
            pressed = true
        end

        if id == (Gosu::KB_UP)
           @y -= 20
           pressed = true
        end

        if id == (Gosu::KB_DOWN)
            @y += 20
            pressed = true
        end

        if pressed
            @segments.unshift([@x, @y])
            @segments.pop
        end
    end
    
    def draw
        @segments.each do |segment|
            Gosu.draw_rect(segment[0], segment[1], 20, 20, Gosu::Color::GREEN)
        end
    end
end

SnakeGame.new.show
