use classicmodels;
GRANT SELECT ON TABLE orders TO Sarah;
GRANT Insert ON TABLE orders TO Sarah;

REVOKE ALL ON TABLE customers FROM JOHN;

CREATE INDEX idx ON offices (postalCode);
DROP INDEX idx_order_date on orders;