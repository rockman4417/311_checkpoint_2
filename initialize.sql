DROP TABLE IF EXISTS cfJobTemplates, cfClients, cfPayInstances;

CREATE TABLE cfJobTemplates (
  temps_id INT NOT NULL AUTO_INCREMENT,
  temps_name VARCHAR(50),
  temps_amount VARCHAR(50),
  product_service VARCHAR(50),
  temp_description VARCHAR(500),
  
  PRIMARY KEY (temp_id),
  FOREIGN KEY (),
  REFERENCES  ()
);

CREATE TABLE cfClients (
  clients_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  city VARCHAR(50),
  county VARCHAR(50),
  state VARCHAR(50),
  zip VARCHAR(50),
  phone1 VARCHAR(50),
  phone2 VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (clients_id),
  FOREIGN KEY (),
  REFERENCES  ()
);

CREATE TABLE cfPayInstances (
  pay_instances_id INT NOT NULL AUTO_INCREMENT,
  date VARCHAR(50),
  client_name VARCHAR(50),
  clients_id INT NOT NULL,
  paid_unpaid VARCHAR(50),
  date_owed VARCHAR(50),
  scheduled_inprogress_complete VARCHAR(50),
  temps_id INT NOT NULL,
  extras VARCHAR(100),
  notes VARCHAR(500),
  PRIMARY KEY (pay_instances_id),
  FOREIGN KEY (clients_id), (temp_id),
  REFERENCES cfClients (clients_id), cfJobTemplates (temps_id)
);
