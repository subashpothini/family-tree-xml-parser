CREATE TABLE ENTRY
(
  ID        INT PRIMARY KEY AUTO_INCREMENT,
  NAME      VARCHAR(255) NOT NULL,
  PARENT_ID INT,
  CONSTRAINT parent_id_fk FOREIGN KEY (PARENT_ID) REFERENCES ENTRY (ID)
);