CREATE TABLE t1
(
    id INTEGER DEFAULT nextval('mytestschema.t1_id_seq'::regclass) NOT NULL,
    column1 TEXT,
    column2 TEXT,
    load_date TIMESTAMP WITH TIME ZONE DEFAULT now()
);