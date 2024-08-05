CREATE TABLE student(
                        id VARCHAR(10) PRIMARY KEY ,
                        name VARCHAR(100)
);

CREATE TABLE exam(
    exam_code VARCHAR(10) PRIMARY KEY ,
    module_id VARCHAR(10) NOT NULL ,
    point_score INT NOT NULL,

    CONSTRAINT fk_module FOREIGN KEY (moudle_id) REFERENCES module (id)
);

CREATE TABLE module_program(
    module_id VARCHAR(10) NOT NULL ,
    program_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_program_module FOREIGN KEY (module_id) REFERENCES module(id),
    CONSTRAINT fk_module_program FOREIGN KEY (program_id) REFERENCES program(id)
);

CREATE TABLE student_exam(
    student_id VARCHAR(10) NOT NULL ,
    exam_code VARCHAR(10) NOT NULL ,
    marks INT,
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES student(id),
    CONSTRAINT fk_exam_code FOREIGN KEY (exam_code) REFERENCES exam(exam_code)
);