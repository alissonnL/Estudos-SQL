/*
Quando os dados foram migrados de Banco de Dados, houve um pequeno mal-entendido por parte do antigo DBA.

Seu chefe precisa que você exiba o código e o nome dos produtos, cuja categoria inicie com 'super'.
*/


CREATE TABLE categories (
    id NUMERIC PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE products (
    id NUMERIC PRIMARY KEY,
    name VARCHAR(255),
    amount NUMERIC,
    price NUMERIC,
    id_categories NUMERIC,
    FOREIGN KEY (id_categories) REFERENCES categories(id)
);

INSERT INTO categories (id, name) VALUES
(1, 'old stock'),
(2, 'new stock'),
(3, 'modern'),
(4, 'commercial'),
(5, 'recyclable'),
(6, 'executive'),
(7, 'superior'),
(8, 'wood'),
(9, 'super luxury'),
(10, 'vintage');

INSERT INTO products (id, name, amount, price, id_categories) VALUES
(1, 'Lampshade', 100, 800, 4),
(2, 'Table for painting', 1000, 560, 9),
(3, 'Notebook desk', 10000, 25.50, 9),
(4, 'Computer desk', 350, 320.50, 6),
(5, 'Chair', 3000, 210.64, 9),
(6, 'Home alarm', 750, 460, 4);


SELECT p.id, p.name
FROM products p
INNER JOIN categories c ON p.id_categories = c.id 
WHERE c.name like 'super%'