-- This example assumes a 'gc' (graphics context) object is available for drawing.
-- The specific functions for drawing might vary depending on the environment.

function on.paint(gc)
    -- Set text color (assuming RGB values)
    gc:setColor(255, 255, 0) -- Yellow color

    -- Set font size (if supported by the environment)
    -- gc:setFontSize(24) 

    -- Draw the banner text at a specific position (x, y)
    gc:drawString("Welcome to our world!", 100, 50) 
end

-- In some environments, you might need to register this function to be called for drawing:
-- register_draw_function(on.paint) 
