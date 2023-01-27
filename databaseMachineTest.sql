-----------------------------SQL Machine TEst-1------------------------------
 
 1)

CREATE TABLE tbl_stock(
    pk_int_stock_id  serial primary key,
    vchr_name VARCHAR(20),
    int_quantity INT,
    int_price INT 
);


 2)

ALTER TABLE tbl_stock ALTER COLUMN int_price TYPE FLOAT;

 3)

CREATE TABLE tbl_supplier(
    pk_int_supplier_id  serial primary key,
    vchr_supplier_name VARCHAR(25)
);

4)

ALTER TABLE tbl_stock ADD fk_int_supplier INT;

5)

ALTER TABLE tbl_stock ADD CONSTRAINT fk_int_supplier FOREIGN KEY(fk_int_supplier) REFERENCES tbl_supplier(pk_int_supplier_id) ON DELETE CASCADE ON UPDATE CASCADE;

6)

CREATE TABLE tbl_dept(
    pk_int_dept_id  serial primary key,
    vchr_dept_name VARCHAR(25)
);

7)

CREATE TABLE tbl_classes(
    pk_int_class_id  serial primary key,
    vchr_class_name VARCHAR(40),
    fk_int_dept_id INT,
    FOREIGN KEY (fk_int_dept_id) REFERENCEs tbl_dept(pk_int_dept_id) ON DELETE CASCADE ON UPDATE CASCADE
);

8)

CREATE TABLE tbl_enrollment(
    pk_int_enrollment_id  serial primary key,
    int_count INT,
    fk_int_class_id INT,
    FOREIGN KEY (fk_int_class_id) REFERENCEs tbl_classes(pk_int_class_id) ON DELETE CASCADE ON UPDATE CASCADE
);

9)

ALTER TABLE tbl_classes ADD CONSTRAINT tbl_classes_unq UNIQUE (vchr_class_name);

10)

ALTER TABLE tbl_dept ADD vchr_dept_description VARCHAR(20);

11)

INSERT INTO tbl_supplier(vchr_supplier_name) VALUES('Logitech'),('Samsung'),('Iball'),('LG'),('Creative');
 
select * from tbl_supplier;

    pk_int_supplier_id | vchr_supplier_name
--------------------+--------------------
                  1 | Logitech
                  2 | Samsung
                  3 | iball
                  4 | LG
                  5 | Ceative

