CREATE TABLE exam(
    exam_code VARCHAR(10) PRIMARY KEY ,
    module_id VARCHAR(10) NOT NULL ,
    point_score INT NOT NULL,

    CONSTRAINT fk_module FOREIGN KEY (moudle_id) REFERENCES module (id);
);
