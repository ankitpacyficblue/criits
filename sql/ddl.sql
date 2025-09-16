-- CRIITS Minimal Data Model (DDL)
CREATE TABLE tx_events (
  seq BIGSERIAL PRIMARY KEY,
  tid UUID NOT NULL,
  from_state TEXT,
  to_state TEXT NOT NULL,
  event_type TEXT NOT NULL,
  idempotency_key TEXT NOT NULL,
  producer TEXT NOT NULL,
  observed_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  evidence JSONB,
  causation_id UUID,
  correlation_id UUID
);
CREATE INDEX IF NOT EXISTS tx_events_tid_idx ON tx_events (tid);
CREATE UNIQUE INDEX IF NOT EXISTS tx_events_idem_uk ON tx_events (idempotency_key);

CREATE TABLE tx_head (
  tid UUID PRIMARY KEY,
  state TEXT NOT NULL,
  last_event_seq BIGINT NOT NULL,
  last_changed_at TIMESTAMPTZ NOT NULL,
  reason_code TEXT,
  metadata JSONB
);
