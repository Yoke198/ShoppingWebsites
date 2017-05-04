CREATE TABLE goods(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT "商品id",
	goods_name VARCHAR(200) NOT NULL COMMENT "商品名",
	CPU VARCHAR(200) NOT NULL COMMENT "cpu型号",
	banben VARCHAR(200) NOT NULL COMMENT "手机版本",
	price FLOAT NOT NULL COMMENT "价格",
	goods_time VARCHAR(200) NOT NULL COMMENT "上市时间",
	OS VARCHAR(100) NOT NULL COMMENT "操作系统",
	RAM INT NOT NULL COMMENT "运存",
	houdu FLOAT NOT NULL COMMENT "厚度",
	weight FLOAT COMMENT "重量",
	rongliang INT NOT NULL COMMENT "电池容量",
	fenbianlv VARCHAR(100) NOT NULL COMMENT "分辨率",
	chicun FLOAT COMMENT "尺寸",
	stock INT COMMENT "库存",
	sale INT DEFAULT 0 COMMENT "销量",
	img VARCHAR(200) NOT NULL COMMENT "图片路径",
	color INT COMMENT "颜色"
);
INSERT INTO goods VALUES(1,"Samsung Galaxy s5","MSM8001","G9006V","5720","2014年2月3日","Android OS 4.4",2,8.1,145,2800,"1920*1080",5.1,8500,2000,"img/index/product-1.jpg",1);
INSERT INTO goods VALUES(2,"Nokia Lumia 1320","Snapdragon S4","1320","4599","2013年10月6日","Windows phone 8",1,9.8,168,3400,"1280*720",6,8500,500,"img/index/product-2.jpg",2);
INSERT INTO goods VALUES(3,"LG Leon","Snapdragon S6","G2014","4300","2014年6月10日","Android OS 4.2",2,8.1,140,3200,"1280*720",4.7,8500,1000,"img/index/product-3.jpg",1);
INSERT INTO goods VALUES(4,"Sony Xperia Z5","MSM8994","A3685","5628","2013年8月15日","Android OS 5.1",2,7.8,145,2658,"1920*1080",5,8500,1500,"img/index/product-4.jpg",1);
INSERT INTO goods VALUES(5,"iphone6","A8","A1527","5688","2015年9月10日","ios8",1,7.1,128,1284,"1334*750",4.7,8500,5000,"img/index/product-5.jpg",2);
INSERT INTO goods VALUES(6,"Samsung Galaxy note4","MSM8001","G9320","5790","2014年9月20日","Android OS 5.0",2,7.6,145,3600,"1920*1080",5.5,8500,2800,"img/index/product-6.jpg",1);

















