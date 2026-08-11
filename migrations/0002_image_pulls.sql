CREATE TABLE IF NOT EXISTS image_pulls (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  image TEXT NOT NULL,
  tag TEXT NOT NULL,
  pull_count INTEGER NOT NULL DEFAULT 0,
  first_pulled_at INTEGER NOT NULL,
  last_pulled_at INTEGER NOT NULL,
  last_status INTEGER,
  UNIQUE(image, tag)
);

CREATE INDEX IF NOT EXISTS idx_image_pulls_last_pulled_at
  ON image_pulls(last_pulled_at DESC);
