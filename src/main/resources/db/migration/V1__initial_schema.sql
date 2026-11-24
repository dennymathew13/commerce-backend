CREATE TABLE category (
                          id BIGINT NOT NULL AUTO_INCREMENT,
                          name VARCHAR(255) NOT NULL,
                          PRIMARY KEY (id),
                          UNIQUE KEY uk_category_name (name)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE product (
                         id BIGINT NOT NULL AUTO_INCREMENT,
                         name VARCHAR(255) DEFAULT NULL,
                         price DOUBLE DEFAULT NULL,
                         category_id BIGINT DEFAULT NULL,
                         PRIMARY KEY (id),
                         KEY idx_product_category (category_id),
                         CONSTRAINT fk_product_category
                             FOREIGN KEY (category_id)
                                 REFERENCES category (id)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_0900_ai_ci;