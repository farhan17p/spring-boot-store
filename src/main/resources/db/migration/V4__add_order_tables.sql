CREATE TABLE orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10, 2) NOT NULL,

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id) REFERENCES users(id)
            ON DELETE CASCADE
);

CREATE TABLE order_items (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     order_id BIGINT NOT NULL,
     product_id BIGINT NOT NULL,
     unit_price DECIMAL(10, 2) NOT NULL,
     quantity INT NOT NULL,
     total_price DECIMAL(10, 2) NOT NULL,

     CONSTRAINT fk_order_items_order
         FOREIGN KEY (order_id) REFERENCES orders(id)
             ON DELETE CASCADE,

     CONSTRAINT fk_order_items_product
         FOREIGN KEY (product_id) REFERENCES products(id)
             ON DELETE CASCADE
);
