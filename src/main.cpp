/*
    This is some example code for primitive SFML drawing.
    (This was included so that we have something to compile against.)
*/

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

int main() {
    // Create the main window
    sf::RenderWindow window(sf::VideoMode(800, 600), "SFML works!");

    // Create a basic shape
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Green);

    // Start the game loop
    while (window.isOpen()) {
        // Process events
        sf::Event event;
        while (window.pollEvent(event)) {
            // Handle events
            if (event.type == sf::Event::Closed) window.close();
        }

        // Clear screen
        window.clear();

        // Draw the shape
        window.draw(shape);

        // Update the window
        window.display();

        // You may wish to include something to vary the frame rate of your game, however I am going to call it a day for now.
        // See https://stackoverflow.com/a/62237541/8736749
    }

    return 0;
}