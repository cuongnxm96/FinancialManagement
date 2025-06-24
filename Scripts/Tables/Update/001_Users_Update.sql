ALTER TABLE Users ADD
    Token NVARCHAR(255),                         -- Token đăng nhập
    LastLoginTime DATETIME2,                     -- Thời điểm đăng nhập cuối
    FailedLoginCount INT DEFAULT 0,              -- Số lần đăng nhập sai liên tục
    IsEmailVerified BIT DEFAULT 0,               -- Đã xác thực chưa
    AvatarUrl NVARCHAR(500);                     -- Ảnh đại diện