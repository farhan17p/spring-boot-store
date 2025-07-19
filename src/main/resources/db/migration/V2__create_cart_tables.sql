CREATE TABLE carts (
    id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())) PRIMARY KEY,
    date_created DATE NOT NULL DEFAULT (CURDATE())
);


CREATE TABLE cart_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cart_id BINARY(16) NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,

    CONSTRAINT cart_items_cart_product_unique UNIQUE (cart_id, product_id),

    CONSTRAINT fk_cart_item_cart
       FOREIGN KEY (cart_id) REFERENCES carts(id)
           ON DELETE CASCADE,

    CONSTRAINT fk_cart_item_product
       FOREIGN KEY (product_id) REFERENCES products(id)
           ON DELETE CASCADE
);
