#include <SFML/Graphics.hpp>

const int WINDOW_WIDTH = 800;
const int WINDOW_HEIGHT = 600;
const int SQUARE_SIZE = 50;
const float SPEED = 5.0f;

int main() {
    sf::RenderWindow window(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), "Moving Square with Collision");

    sf::RectangleShape square(sf::Vector2f(SQUARE_SIZE, SQUARE_SIZE));
    square.setFillColor(sf::Color(128, 128, 128));
    square.setPosition(100, 100);

    sf::RectangleShape wall(sf::Vector2f(200, 50));
    wall.setFillColor(sf::Color::Red);
    wall.setPosition(300, 250);

    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        sf::Vector2f movement(0.f, 0.f);
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::W)) movement.y -= SPEED;
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::S)) movement.y += SPEED;
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::A)) movement.x -= SPEED;
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::D)) movement.x += SPEED;

        sf::Vector2f newPos = square.getPosition() + movement;
        square.setPosition(newPos);

        if (square.getGlobalBounds().intersects(wall.getGlobalBounds())) {
            square.setPosition(square.getPosition() - movement);
        }

        window.clear();
        window.draw(wall);
        window.draw(square);
        window.display();
    }

    return 0;
}