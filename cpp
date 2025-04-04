#include <SFML/Graphics.hpp>

const int WIDTH = 800, HEIGHT = 600, SIZE = 50;
const float SPEED = 5.0f;

int main() {
    sf::RenderWindow window(sf::VideoMode(WIDTH, HEIGHT), "Move Square");
    sf::View view(sf::FloatRect(0, 0, WIDTH, HEIGHT));
    
    sf::RectangleShape square(sf::Vector2f(SIZE, SIZE));
    square.setFillColor(sf::Color::Gray);
    square.setPosition(100, 100);

    sf::RectangleShape wall(sf::Vector2f(100, 20));
    wall.setFillColor(sf::Color::Red);
    wall.setPosition(300, 300);

    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event))
            if (event.type == sf::Event::Closed)
                window.close();

        sf::Vector2f move(0.f, 0.f);
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::W)) move.y -= SPEED;
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::S)) move.y += SPEED;
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::A)) move.x -= SPEED;
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::D)) move.x += SPEED;

        sf::RectangleShape temp = square;
        temp.move(move);
        if (!temp.getGlobalBounds().intersects(wall.getGlobalBounds()))
            square.move(move);
        
        view.setCenter(square.getPosition());
        window.setView(view);
        
        window.clear();
        window.draw(wall);
        window.draw(square);
        window.display();
    }
}