-- ایجاد جدول options برای تنظیمات عمومی ربات
CREATE TABLE IF NOT EXISTS options (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    value TEXT,
    channels TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- افزودن مقادیر پیش‌فرض
INSERT INTO options (name, value, channels) 
VALUES 
    ('welcome_message', 'به ربات خوش آمدید!', NULL),
    ('max_daily_coins', '10', NULL),
    ('referral_reward', '5', NULL),
    ('min_withdrawal', '50', NULL),
    ('maintenance_mode', 'false', NULL),
    ('channels', '[]', '[]')
ON CONFLICT (name) DO NOTHING;