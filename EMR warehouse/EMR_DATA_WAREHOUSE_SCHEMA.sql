CREATE TABLE patients (
    patient_id varchar(100) PRIMARY KEY,
    first_name varchar(100),
    last_name varchar(100),
    date_of_birth DATE,
    gender varchar(100),
    address varchar(100),
    city varchar(100),
    state varchar(100),
    zip varchar(100),
    phone varchar(100),
    insurance_id varchar(100),
    insurance_effective_date DATE
);

CREATE TABLE icd_reference (
    icd_code varchar(100) PRIMARY KEY,
    description varchar(100),
    effective_date DATE,
    status varchar(100)
);

CREATE TABLE visits (
    visit_id varchar(100) PRIMARY KEY,
    patient_id varchar(100),
    provider_id varchar(100),
    visit_date DATE,
    location varchar(100),
    reason_for_visit varchar(100),
    icd_code varchar(100),
    visit_status varchar(100),
    billable_amount INTEGER,
    currency varchar(100),
    follow_up_date DATE,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(icd_code) REFERENCES icd_reference(icd_code)
);

CREATE TABLE lab_results (
    lab_id varchar(100) PRIMARY KEY,
    visit_id varchar(100),
    test_name varchar(100),
    test_value varchar(100),
    test_units varchar(100),
    reference_range varchar(100),
    date_performed DATE,
    date_resulted DATE,
    FOREIGN KEY(visit_id) REFERENCES visits(visit_id)
);

