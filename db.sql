CREATE TABLE IF NOT EXISTS mall.goods(
    id SERIAL PRIMARY KEY,      
    name VARCHAR(32) NOT NULL, 
    intro VARCHAR(128), 
    link TEXT,
    price INTEGER DEFAULT 0, 
    cover VARCHAR(32) NOT NULL, 
    icon VARCHAR(32), 
    swipe VARCHAR(32)[] NOT NULL, 
    details VARCHAR(32)[], 
    off BOOLEAN DEFAULT FALSE, 
    recommend INTEGER DEFAULT 0, 
    time TIMESTAMP WITH TIME ZONE DEFAULT LOCALTIMESTAMP(0)
);
CREATE INDEX IF NOT EXISTS goods_recommend_index ON mall.goods (recommend);

-- test h1