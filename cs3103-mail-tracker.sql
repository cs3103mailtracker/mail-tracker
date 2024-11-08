CREATE TABLE email_tracking (
  id SERIAL PRIMARY KEY,
  department_code VARCHAR(255) NOT NULL,
  batch_id UUID NOT NULL,
  tracking_id UUID UNIQUE NOT NULL,
  recipient_email VARCHAR(255) NOT NULL,
  subject VARCHAR(255),
  sent_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  count INTEGER DEFAULT 0
);
