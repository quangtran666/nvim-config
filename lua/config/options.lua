local opt = vim.opt

-- ==== HIỂN THỊ ====
opt.number = true              -- Hiển thị số dòng bên trái (1, 2, 3...)
opt.relativenumber = true      -- Hiển thị số dòng tương đối (giúp jump nhanh với 5j, 3k...)
opt.cursorline = true          -- Tô sáng dòng đang đặt con trỏ
opt.signcolumn = "yes"         -- Luôn hiện cột bên trái (để hiện git changes, lỗi...)
opt.wrap = false               -- Không xuống dòng tự động khi text quá dài

-- ==== TÌM KIẾM ====
opt.ignorecase = true          -- Không phân biệt hoa/thường khi search (/hello tìm được Hello)
opt.smartcase = true           -- Nhưng nếu gõ chữ HOA thì phân biệt (/Hello chỉ tìm Hello)
opt.hlsearch = true            -- Tô sáng kết quả tìm kiếm

-- ==== INDENT & KHOẢNG TRẮNG ====
opt.tabstop = 2                -- 1 tab = 2 khoảng trắng (chuẩn web dev)
opt.softtabstop = 2            -- Khi bấm Tab sẽ thêm 2 space
opt.shiftwidth = 2             -- Khi indent (>>, <<) sẽ dịch 2 space
opt.expandtab = true           -- Chuyển Tab thành Space (tránh conflict)
opt.smartindent = true         -- Tự động indent thông minh

-- ==== CLIPBOARD ====
opt.clipboard = "unnamedplus"  -- Sync với clipboard hệ thống (Ctrl+C/V)

-- ==== FILE HANDLING ====
opt.backup = false             -- Không tạo file backup (.bak)
opt.swapfile = false           -- Không tạo swap file (.swp)
opt.undofile = true            -- Lưu lịch sử undo (có thể undo ngay cả khi đóng file)

-- ==== KHÁC ====
opt.mouse = "a"                -- Cho phép dùng chuột
opt.termguicolors = true       -- Hiển thị màu sắc đầy đủ trong terminal
opt.updatetime = 250           -- Tốc độ update (ms) - ảnh hưởng đến LSP, git signs
opt.timeoutlen = 500           -- Thời gian chờ phím tắt (ms)