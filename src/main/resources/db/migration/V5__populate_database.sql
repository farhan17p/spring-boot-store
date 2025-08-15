-- Insert categories
INSERT INTO categories (name)
VALUES ('Fruits'),
       ('Vegetables'),
       ('Dairy'),
       ('Beverages'),
       ('Snacks');

-- Insert products
INSERT INTO products (name, price, description, category_id)
VALUES ('Banana', 0.50, 'Fresh and ripe bananas, rich in potassium and fiber.', 1),
       ('Apple', 1.20, 'Crisp red apples, perfect for snacking and salads.', 1),
       ('Carrot', 0.80, 'Organic carrots, great for salads and cooking.', 2),
       ('Broccoli', 1.50, 'Fresh green broccoli, rich in vitamins and minerals.', 2),
       ('Milk', 2.00, 'Whole cow milk, rich in calcium and vitamin D.', 3),
       ('Cheddar Cheese', 4.50, 'Aged cheddar cheese, perfect for sandwiches and cooking.', 3),
       ('Orange Juice', 3.00, 'Freshly squeezed orange juice, no added sugar.', 4),
       ('Green Tea', 2.50, 'Organic green tea, rich in antioxidants.', 4),
       ('Potato Chips', 1.80, 'Crispy salted potato chips, perfect snack for any time.', 5),
       ('Chocolate Bar', 2.20, 'Delicious milk chocolate bar, great for dessert or snack.', 5);
