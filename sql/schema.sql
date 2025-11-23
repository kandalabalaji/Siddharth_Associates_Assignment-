CREATE TABLE shipments (
    date_of_shipment DATE,
    year INT,
    month INT,
    hsn_code VARCHAR(20),
    goods_description TEXT,
    quantity NUMERIC,
    unit VARCHAR(20),
    unit_standardized VARCHAR(20),
    unit_price_usd NUMERIC,
    total_value_inr NUMERIC,
    duty_paid_inr NUMERIC,
    grand_total_inr NUMERIC,
    landed_cost_per_unit NUMERIC,
    model_name VARCHAR(255),
    capacity_spec VARCHAR(100),
    material_type VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    supplier_name TEXT,
    hsn_description TEXT
);

