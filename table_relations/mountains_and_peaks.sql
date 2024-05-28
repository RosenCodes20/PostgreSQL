CREATE TABLE mountains (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50)
);

CREATE TABLE peaks (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    mountain_id INT
);

ALTER TABLE PEAKS
ADD CONSTRAINT fk_peaks_mountains
      FOREIGN KEY (mountain_id)
        REFERENCES mountains(id);