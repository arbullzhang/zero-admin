create table oms_cart_item
(
    id                  bigint auto_increment
        primary key,
    product_id          bigint           null,
    product_sku_id      bigint           null,
    member_id           bigint           null,
    quantity            int              null comment '购买数量',
    price               decimal(10, 2)   null comment '添加到购物车的价格',
    product_pic         varchar(1000)    null comment '商品主图',
    product_name        varchar(500)     null comment '商品名称',
    product_sub_title   varchar(500)     null comment '商品副标题（卖点）',
    product_sku_code    varchar(200)     null comment '商品sku条码',
    member_nickname     varchar(500)     null comment '会员昵称',
    create_date         datetime         null comment '创建时间',
    modify_date         datetime         null comment '修改时间',
    delete_status       int(1) default 0 null comment '是否删除',
    product_category_id bigint           null comment '商品分类',
    product_brand       varchar(200)     null,
    product_sn          varchar(200)     null,
    product_attr        varchar(500)     null comment '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]'
)
    comment '购物车表';

INSERT INTO gozero.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (16, 29, 106, 1, 1, 5499.00, ' ', 'Apple iPhone 8 Plus', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2018-08-28 10:50:50', '2018-08-28 10:50:50 ', 1, 19, ' ', ' ', ' ');
INSERT INTO gozero.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (19, 36, 163, 1, 3, 100.00, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:51:59', '2018-08-28 10:50:50 ', 1, 29, 'NIKE', '6799345', '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (20, 36, 164, 1, 2, 120.00, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:54:23', '2018-08-28 10:50:50 ', 1, 29, 'NIKE', '6799345', '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (21, 36, 164, 1, 2, 120.00, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 16:49:53', '2018-08-28 10:50:50 ', 1, 29, 'NIKE', '6799345', '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');

create table oms_company_address
(
    id             bigint auto_increment
        primary key,
    address_name   varchar(200) null comment '地址名称',
    send_status    int(1)       null comment '默认发货地址：0->否；1->是',
    receive_status int(1)       null comment '是否默认收货地址：0->否；1->是',
    name           varchar(64)  null comment '收发货人姓名',
    phone          varchar(64)  null comment '收货人电话',
    province       varchar(64)  null comment '省/直辖市',
    city           varchar(64)  null comment '市',
    region         varchar(64)  null comment '区',
    detail_address varchar(200) null comment '详细地址'
)
    comment '公司收发货地址表';

INSERT INTO gozero.oms_company_address (id, address_name, send_status, receive_status, name, phone, province, city, region, detail_address) VALUES (1, '深圳发货点', 1, 1, '大梨', '18000000000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO gozero.oms_company_address (id, address_name, send_status, receive_status, name, phone, province, city, region, detail_address) VALUES (2, '北京发货点', 0, 0, '大梨', '18000000000', '北京市', ' ', '南山区', '科兴科学园');
INSERT INTO gozero.oms_company_address (id, address_name, send_status, receive_status, name, phone, province, city, region, detail_address) VALUES (3, '南京发货点', 0, 0, '大梨', '18000000000', '江苏省', '南京市', '南山区', '科兴科学园');

create table oms_order
(
    id                      bigint auto_increment comment '订单id'
        primary key,
    member_id               bigint           not null,
    coupon_id               bigint           null,
    order_sn                varchar(64)      null comment '订单编号',
    create_time             datetime         null comment '提交时间',
    member_username         varchar(64)      null comment '用户帐号',
    total_amount            decimal(10, 2)   null comment '订单总金额',
    pay_amount              decimal(10, 2)   null comment '应付金额（实际支付金额）',
    freight_amount          decimal(10, 2)   null comment '运费金额',
    promotion_amount        decimal(10, 2)   null comment '促销优化金额（促销价、满减、阶梯价）',
    integration_amount      decimal(10, 2)   null comment '积分抵扣金额',
    coupon_amount           decimal(10, 2)   null comment '优惠券抵扣金额',
    discount_amount         decimal(10, 2)   null comment '管理员后台调整订单使用的折扣金额',
    pay_type                int(1)           null comment '支付方式：0->未支付；1->支付宝；2->微信',
    source_type             int(1)           null comment '订单来源：0->PC订单；1->app订单',
    status                  int(1)           null comment '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
    order_type              int(1)           null comment '订单类型：0->正常订单；1->秒杀订单',
    delivery_company        varchar(64)      null comment '物流公司(配送方式)',
    delivery_sn             varchar(64)      null comment '物流单号',
    auto_confirm_day        int              null comment '自动确认时间（天）',
    integration             int              null comment '可以获得的积分',
    growth                  int              null comment '可以活动的成长值',
    promotion_info          varchar(100)     null comment '活动信息',
    bill_type               int(1)           null comment '发票类型：0->不开发票；1->电子发票；2->纸质发票',
    bill_header             varchar(200)     null comment '发票抬头',
    bill_content            varchar(200)     null comment '发票内容',
    bill_receiver_phone     varchar(32)      null comment '收票人电话',
    bill_receiver_email     varchar(64)      null comment '收票人邮箱',
    receiver_name           varchar(100)     not null comment '收货人姓名',
    receiver_phone          varchar(32)      not null comment '收货人电话',
    receiver_post_code      varchar(32)      null comment '收货人邮编',
    receiver_province       varchar(32)      null comment '省份/直辖市',
    receiver_city           varchar(32)      null comment '城市',
    receiver_region         varchar(32)      null comment '区',
    receiver_detail_address varchar(200)     null comment '详细地址',
    note                    varchar(500)     null comment '订单备注',
    confirm_status          int(1)           null comment '确认收货状态：0->未确认；1->已确认',
    delete_status           int(1) default 0 not null comment '删除状态：0->未删除；1->已删除',
    use_integration         int              null comment '下单时使用的积分',
    payment_time            datetime         null comment '支付时间',
    delivery_time           datetime         null comment '发货时间',
    receive_time            datetime         null comment '确认收货时间',
    comment_time            datetime         null comment '评价时间',
    modify_time             datetime         null comment '修改时间'
)
    comment '订单表';

INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (12, 1, 2, '201809150101000001', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 20.00, 2344.25, 0.00, 10.00, 10.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '江苏省', '常州市', '天宁区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (13, 1, 2, '201809150102000002', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (14, 1, 2, '201809130101000001', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (15, 1, 2, '201809130102000002', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 3, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 1, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (16, 1, 2, '201809140101000001', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (17, 1, 2, '201809150101000003', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (18, 1, 2, '201809150102000004', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (19, 1, 2, '201809130101000003', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (20, 1, 2, '201809130102000004', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 3, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (21, 1, 2, '201809140101000002', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 1, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (22, 1, 2, '201809150101000005', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (23, 1, 2, '201809150102000006', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (24, 1, 2, '201809130101000005', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (25, 1, 2, '201809130102000006', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 10.00, 2344.25, 0.00, 10.00, 5.00, 1, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨22', '18033441849', '518000', '北京市', '北京城区', '东城区', '东城街道', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (26, 1, 2, '201809140101000003', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '111', 0, 1, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (27, 1, 2, '202002250100000001', '2020-02-25 15:59:20', 'test', 540.00, 540.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 0, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '无优惠,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', '111', 0, 1, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (28, 1, 2, '202002250100000002', '2020-02-25 16:05:47', 'test', 540.00, 540.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 0, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '无优惠,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', '111', 0, 1, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (29, 1, 2, '202002250100000003', '2020-02-25 16:07:58', 'test', 540.00, 540.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 0, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '无优惠,无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');
INSERT INTO gozero.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (30, 1, 2, '202002250100000004', '2020-02-25 16:50:13', 'test', 240.00, 240.00, 20.00, 0.00, 0.00, 0.00, 10.00, 0, 1, 2, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '无优惠', 1, '1111', '1111', '18613030352', '1002219331@qq.com', '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', '111', 0, 0, 1000, '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57', '2021-03-16 20:58:57');

create table oms_order_item
(
    id                  bigint auto_increment
        primary key,
    order_id            bigint         null comment '订单id',
    order_sn            varchar(64)    null comment '订单编号',
    product_id          bigint         null,
    product_pic         varchar(500)   null,
    product_name        varchar(200)   null,
    product_brand       varchar(200)   null,
    product_sn          varchar(64)    null,
    product_price       decimal(10, 2) null comment '销售价格',
    product_quantity    int            null comment '购买数量',
    product_sku_id      bigint         null comment '商品sku编号',
    product_sku_code    varchar(50)    null comment '商品sku条码',
    product_category_id bigint         null comment '商品分类id',
    promotion_name      varchar(200)   null comment '商品促销名称',
    promotion_amount    decimal(10, 2) null comment '商品促销分解金额',
    coupon_amount       decimal(10, 2) null comment '优惠券优惠分解金额',
    integration_amount  decimal(10, 2) null comment '积分优惠分解金额',
    real_amount         decimal(10, 2) null comment '该商品经过优惠后的分解金额',
    gift_integration    int default 0  null,
    gift_growth         int default 0  null,
    product_attr        varchar(500)   null comment '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]'
)
    comment '订单中所包含的商品';

INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (21, 12, '201809150101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (22, 12, '201809150101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (23, 12, '201809150101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (24, 12, '201809150101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (25, 12, '201809150101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (26, 13, '201809150102000002', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (27, 13, '201809150102000002', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (28, 13, '201809150102000002', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (29, 13, '201809150102000002', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (30, 13, '201809150102000002', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (31, 14, '201809130101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (32, 14, '201809130101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (33, 14, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (34, 14, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (35, 14, '201809130101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (36, 15, '201809130101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (37, 15, '201809130101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (38, 15, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (39, 15, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (40, 15, '201809130101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (41, 16, '201809140101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (42, 16, '201809140101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (43, 16, '201809140101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (44, 16, '201809140101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (45, 16, '201809140101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (46, 27, '202002250100000001', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 100.00, 3, 163, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 100.00, 0, 0, ' ');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (47, 27, '202002250100000001', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, ' ');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (48, 28, '202002250100000002', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 100.00, 3, 163, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 100.00, 0, 0, ' ');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (49, 28, '202002250100000002', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, ' ');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (50, 29, '202002250100000003', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 100.00, 3, 163, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 100.00, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (51, 29, '202002250100000003', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (52, 30, '202002250100000004', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');

create table oms_order_operate_history
(
    id           bigint auto_increment
        primary key,
    order_id     bigint       null comment '订单id',
    operate_man  varchar(100) null comment '操作人：用户；系统；后台管理员',
    create_time  datetime     null comment '操作时间',
    order_status int(1)       null comment '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
    note         varchar(500) null comment '备注'
)
    comment '订单操作历史记录';

INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (5, 12, '后台管理员', '2018-10-12 14:01:29', 2, '完成发货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (6, 13, '后台管理员', '2018-10-12 14:01:29', 2, '完成发货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (7, 12, '后台管理员', '2018-10-12 14:13:10', 4, '订单关闭:买家退货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (8, 13, '后台管理员', '2018-10-12 14:13:10', 4, '订单关闭:买家退货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (9, 22, '后台管理员', '2018-10-15 16:31:48', 4, '订单关闭:xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (10, 22, '后台管理员', '2018-10-15 16:35:08', 4, '订单关闭:xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (11, 22, '后台管理员', '2018-10-15 16:35:59', 4, '订单关闭:xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (12, 17, '后台管理员', '2018-10-15 16:43:40', 4, '订单关闭:xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (13, 25, '后台管理员', '2018-10-15 16:52:14', 4, '订单关闭:xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (14, 26, '后台管理员', '2018-10-15 16:52:14', 4, '订单关闭:xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (15, 23, '后台管理员', '2018-10-16 14:41:28', 2, '完成发货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (16, 13, '后台管理员', '2018-10-16 14:42:17', 2, '完成发货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (17, 18, '后台管理员', '2018-10-16 14:42:17', 2, '完成发货');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (18, 26, '后台管理员', '2018-10-30 14:37:44', 4, '订单关闭:关闭订单');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (19, 25, '后台管理员', '2018-10-30 15:07:01', 0, '修改收货人信息');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (20, 25, '后台管理员', '2018-10-30 15:08:13', 0, '修改费用信息');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (21, 25, '后台管理员', '2018-10-30 15:08:31', 0, '修改备注信息：xxx');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (22, 25, '后台管理员', '2018-10-30 15:08:39', 4, '订单关闭:2222');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (23, 12, '后台管理员', '2019-11-09 16:50:28', 4, '修改备注信息：111');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (24, 30, '后台管理员', '2020-02-25 16:52:37', 0, '修改费用信息');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (25, 30, '后台管理员', '2020-02-25 16:52:51', 0, '修改费用信息');
INSERT INTO gozero.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (26, 30, '后台管理员', '2020-02-25 16:54:03', 2, '完成发货');

create table oms_order_return_apply
(
    id                 bigint auto_increment
        primary key,
    order_id           bigint         null comment '订单id',
    company_address_id bigint         null comment '收货地址表id',
    product_id         bigint         null comment '退货商品id',
    order_sn           varchar(64)    null comment '订单编号',
    create_time        datetime       null comment '申请时间',
    member_username    varchar(64)    null comment '会员用户名',
    return_amount      decimal(10, 2) null comment '退款金额',
    return_name        varchar(100)   null comment '退货人姓名',
    return_phone       varchar(100)   null comment '退货人电话',
    status             int(1)         null comment '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
    handle_time        datetime       null comment '处理时间',
    product_pic        varchar(500)   null comment '商品图片',
    product_name       varchar(200)   null comment '商品名称',
    product_brand      varchar(200)   null comment '商品品牌',
    product_attr       varchar(500)   null comment '商品销售属性：颜色：红色；尺码：xl;',
    product_count      int            null comment '退货数量',
    product_price      decimal(10, 2) null comment '商品单价',
    product_real_price decimal(10, 2) null comment '商品实际支付单价',
    reason             varchar(200)   null comment '原因',
    description        varchar(500)   null comment '描述',
    proof_pics         varchar(1000)  null comment '凭证图片，以逗号隔开',
    handle_note        varchar(500)   null comment '处理备注',
    handle_man         varchar(100)   null comment '处理人员',
    receive_man        varchar(100)   null comment '收货人',
    receive_time       datetime       null comment '收货时间',
    receive_note       varchar(500)   null comment '收货备注'
)
    comment '订单退货申请';

INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (3, 12, 1, 26, '201809150101000001', '2018-10-17 14:34:57', 'test', 3585.00, '大梨', '18000000000', 0, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '已经处理了', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (4, 12, 2, 27, '201809150101000001', '2018-10-17 14:40:21', 'test', 3585.98, '大梨', '18000000000', 1, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '已经处理了', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (5, 12, 3, 28, '201809150101000001', '2018-10-17 14:44:18', 'test', 3585.98, '大梨', '18000000000', 2, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '已经处理了', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (8, 13, 1, 28, '201809150102000002', '2018-10-17 14:44:18', 'test', 3585.00, '大梨', '18000000000', 3, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '理由不够充分', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (9, 14, 2, 26, '201809130101000001', '2018-10-17 14:34:57', 'test', 3500.00, '大梨', '18000000000', 2, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', '呵呵', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (10, 14, 1, 27, '201809130101000001', '2018-10-17 14:40:21', 'test', 3585.00, '大梨', '18000000000', 3, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '就是不退', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (11, 14, 2, 28, '201809130101000001', '2018-10-17 14:44:18', 'test', 591.05, '大梨', '18000000000', 1, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '可以退款', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');
INSERT INTO gozero.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (12, 15, 3, 26, '201809130102000002', '2018-10-17 14:34:57', 'test', 3500.00, '大梨', '18000000000', 2, '2021-03-16 20:56:40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', '退货了', 'admin', 'admin', '2021-03-16 20:56:16', '收货了');

create table oms_order_return_reason
(
    id          bigint auto_increment
        primary key,
    name        varchar(100) null comment '退货类型',
    sort        int          null,
    status      int(1)       null comment '状态：0->不启用；1->启用',
    create_time datetime     null comment '添加时间'
)
    comment '退货原因表';

INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (1, '质量问题', 1, 1, '2018-10-17 10:00:45');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (2, '尺码太大', 1, 1, '2018-10-17 10:01:03');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (3, '颜色不喜欢', 1, 1, '2018-10-17 10:01:13');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (4, '7天无理由退货', 1, 1, '2018-10-17 10:01:47');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (5, '价格问题', 1, 0, '2018-10-17 10:01:57');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (12, '发票问题', 0, 1, '2018-10-19 16:28:36');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (13, '其他问题', 0, 1, '2018-10-19 16:28:51');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (14, '物流问题', 0, 1, '2018-10-19 16:29:01');
INSERT INTO gozero.oms_order_return_reason (id, name, sort, status, create_time) VALUES (15, '售后问题', 0, 1, '2018-10-19 16:29:11');

create table oms_order_setting
(
    id                    bigint auto_increment
        primary key,
    flash_order_overtime  int null comment '秒杀订单超时关闭时间(分)',
    normal_order_overtime int null comment '正常订单超时时间(分)',
    confirm_overtime      int null comment '发货后自动确认收货时间（天）',
    finish_overtime       int null comment '自动完成交易时间，不能申请售后（天）',
    comment_overtime      int null comment '订单完成后自动好评时间（天）'
)
    comment '订单设置表';

INSERT INTO gozero.oms_order_setting (id, flash_order_overtime, normal_order_overtime, confirm_overtime, finish_overtime, comment_overtime) VALUES (1, 60, 120, 15, 7, 7);

create table pay_wx_merchants
(
    id          int auto_increment,
    mer_id      varchar(24)  not null comment '本地系统商户Id,分配给调用方',
    app_id      varchar(24)  not null comment '应用ID 微信开放平台审核通过的应用APPID',
    mch_id      varchar(128) not null comment '微信支付分配的商户号',
    mch_key     varchar(128) not null comment '微信支付分配的商户秘钥',
    pay_type    varchar(12)  not null comment 'APP:APP支付 JSAPI:小程序,公众号 MWEB:H5支付',
    notify_url  varchar(128) not null comment '微信支付回调地址',
    remarks     varchar(64)  not null comment '备注',
    create_time date         not null,
    update_time date         not null,
    constraint pay_wx_merchants_id_uindex
        unique (id)
)
    comment '微信商户信息';

alter table pay_wx_merchants
    add primary key (id);

create table pay_wx_record
(
    id          int auto_increment comment '主键',
    businessId  varchar(32)   not null comment '业务编号',
    amount      varchar(32)   not null comment '金额',
    pay_type    varchar(12)   not null comment '支付类型(APP:APP支付 JSAPI:小程序,公众号 MWEB:H5支付)',
    remarks     varchar(128)  not null comment '备注',
    return_code varchar(12)   not null,
    return_msg  varchar(12)   not null,
    result_code varchar(12)   not null,
    result_msg  varchar(12)   not null,
    pay_status  int default 0 not null comment '0：初始化 1：已发送 2：成功 3：失败',
    create_time date          not null comment '创建时间',
    update_time date          not null comment '更新时间',
    constraint pay_record_id_uindex
        unique (id)
)
    comment '微信支付记录';

alter table pay_wx_record
    add primary key (id);

create table pms_album
(
    id          bigint auto_increment
        primary key,
    name        varchar(64)   null,
    cover_pic   varchar(1000) null,
    pic_count   int           null,
    sort        int           null,
    description varchar(1000) null
)
    comment '相册表';

create table pms_album_pic
(
    id       bigint auto_increment
        primary key,
    album_id bigint        null,
    pic      varchar(1000) null
)
    comment '画册图片表';

create table pms_brand
(
    id                    bigint auto_increment
        primary key,
    name                  varchar(64)  null,
    first_letter          varchar(8)   null comment '首字母',
    sort                  int          null,
    factory_status        int(1)       null comment '是否为品牌制造商：0->不是；1->是',
    show_status           int(1)       null,
    product_count         int          null comment '产品数量',
    product_comment_count int          null comment '产品评论数量',
    logo                  varchar(255) null comment '品牌logo',
    big_pic               varchar(255) null comment '专区大图',
    brand_story           text         null comment '品牌故事'
)
    comment '品牌表';

INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (1, '万和', 'W', 0, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg', '', 'Victoria''s Secret的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (2, '三星', 'S', 100, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg', ' ', '三星的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (3, '华为', 'H', 100, 1, 0, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (2).jpg', ' ', 'Victoria''s Secret的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (4, '格力', 'G', 30, 1, 0, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (3).jpg', ' ', 'Victoria''s Secret的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (5, '方太', 'F', 20, 1, 0, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg', ' ', 'Victoria''s Secret的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (6, '小米', 'M', 500, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5a912944N474afb7a.png', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg', '小米手机的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (21, 'OPPO', 'O', 0, 1, 1, 88, 500, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg', '', 'string');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (49, '七匹狼', 'S', 200, 1, 1, 77, 400, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/1522738681.jpg', ' ', 'BOOB的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (50, '海澜之家', 'H', 200, 1, 1, 66, 300, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/LOGO1024.png', '', '海澜之家的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (51, '苹果', 'A', 200, 1, 1, 55, 200, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', ' ', '苹果的故事');
INSERT INTO gozero.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (58, 'NIKE', 'N', 0, 1, 1, 33, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg', '', 'NIKE的故事');

create table pms_comment
(
    id                bigint auto_increment
        primary key,
    product_id        bigint        null,
    member_nick_name  varchar(255)  null,
    product_name      varchar(255)  null,
    star              int(3)        null comment '评价星数：0->5',
    member_ip         varchar(64)   null comment '评价的ip',
    create_time       datetime      null,
    show_status       int(1)        null,
    product_attribute varchar(255)  null comment '购买时的商品属性',
    collect_couont    int           null,
    read_count        int           null,
    content           text          null,
    pics              varchar(1000) null comment '上传图片地址，以逗号隔开',
    member_icon       varchar(255)  null comment '评论用户头像',
    replay_count      int           null
)
    comment '商品评价表';

create table pms_comment_replay
(
    id               bigint auto_increment
        primary key,
    comment_id       bigint        null,
    member_nick_name varchar(255)  null,
    member_icon      varchar(255)  null,
    content          varchar(1000) null,
    create_time      datetime      null,
    type             int(1)        null comment '评论人员类型；0->会员；1->管理员'
)
    comment '产品评价回复表';

create table pms_feight_template
(
    id              bigint auto_increment
        primary key,
    name            varchar(64)    null,
    charge_type     int(1)         null comment '计费类型:0->按重量；1->按件数',
    first_weight    decimal(10, 2) null comment '首重kg',
    first_fee       decimal(10, 2) null comment '首费（元）',
    continue_weight decimal(10, 2) null,
    continme_fee    decimal(10, 2) null,
    dest            varchar(255)   null comment '目的地（省、市）'
)
    comment '运费模版';

create table pms_member_price
(
    id                bigint auto_increment
        primary key,
    product_id        bigint         null,
    member_level_id   bigint         null,
    member_price      decimal(10, 2) null comment '会员价格',
    member_level_name varchar(100)   null
)
    comment '商品会员价格表';


INSERT INTO gozero.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (112, 23, 1, 88.00, '黄金会员');
INSERT INTO gozero.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (113, 23, 2, 88.00, '白金会员');
INSERT INTO gozero.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (114, 23, 3, 66.00, '钻石会员');
INSERT INTO gozero.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (142, 31, 1, 66.00, '黄金会员');

create table pms_product
(
    id                            bigint auto_increment
        primary key,
    brand_id                      bigint         null,
    product_category_id           bigint         null,
    feight_template_id            bigint         null,
    product_attribute_category_id bigint         null,
    name                          varchar(64)    not null,
    pic                           varchar(255)   null,
    product_sn                    varchar(64)    not null comment '货号',
    delete_status                 int(1)         null comment '删除状态：0->未删除；1->已删除',
    publish_status                int(1)         null comment '上架状态：0->下架；1->上架',
    new_status                    int(1)         null comment '新品状态:0->不是新品；1->新品',
    recommand_status              int(1)         null comment '推荐状态；0->不推荐；1->推荐',
    verify_status                 int(1)         null comment '审核状态：0->未审核；1->审核通过',
    sort                          int            null comment '排序',
    sale                          int            null comment '销量',
    price                         decimal(10, 2) null,
    promotion_price               decimal(10, 2) null comment '促销价格',
    gift_growth                   int default 0  null comment '赠送的成长值',
    gift_point                    int default 0  null comment '赠送的积分',
    use_point_limit               int            null comment '限制使用的积分数',
    sub_title                     varchar(255)   null comment '副标题',
    description                   text           null comment '商品描述',
    original_price                decimal(10, 2) null comment '市场价',
    stock                         int            null comment '库存',
    low_stock                     int            null comment '库存预警值',
    unit                          varchar(16)    null comment '单位',
    weight                        decimal(10, 2) null comment '商品重量，默认为克',
    preview_status                int(1)         null comment '是否为预告商品：0->不是；1->是',
    service_ids                   varchar(64)    null comment '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
    keywords                      varchar(255)   null,
    note                          varchar(255)   null,
    album_pics                    varchar(255)   null comment '画册图片，连产品图片限制为5张，以逗号分割',
    detail_title                  varchar(255)   null,
    detail_desc                   text           null,
    detail_html                   text           null comment '产品详情网页内容',
    detail_mobile_html            text           null comment '移动端网页详情',
    promotion_start_time          datetime       null comment '促销开始时间',
    promotion_end_time            datetime       null comment '促销结束时间',
    promotion_per_limit           int            null comment '活动限购数量',
    promotion_type                int(1)         null comment '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
    brand_name                    varchar(255)   null comment '品牌名称',
    product_category_name         varchar(255)   null comment '商品分类名称'
)
    comment '商品信息';

INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (11, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (12, 1, 7, 0, 1, '女式超柔软拉毛运动开衫2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (13, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (14, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (18, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (33, 6, 35, 0, 1, '小米（MI）小米电视4A ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg', '4609652', 0, 1, 0, 0, 0, 0, 0, 2499.00, 100.00, 0, 0, 0, '小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', 2499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', '2021-03-16 20:50:48', '2021-03-16 20:50:56', 0, 0, '小米', '手机数码');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (34, 6, 35, 0, 1, '小米（MI）小米电视4A 65英寸', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg', '4609660', 0, 1, 0, 0, 0, 0, 0, 3999.00, 100.00, 0, 0, 0, ' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', 3999.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', '2021-03-16 20:50:48', '2021-03-16 20:50:57', 0, 0, '小米', '手机数码');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (35, 58, 29, 0, 11, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg', '6799342', 0, 1, 0, 0, 0, 0, 0, 369.00, 100.00, 0, 0, 0, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', '', 369.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', '2021-03-16 20:50:48', '2021-03-16 20:50:58', 0, 0, 'NIKE', '男鞋');
INSERT INTO gozero.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (36, 58, 29, 0, 11, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '6799345', 0, 1, 1, 1, 0, 0, 0, 499.00, 100.00, 0, 0, 0, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '', 499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', '2021-03-16 20:50:48', '2021-03-16 20:50:59', 0, 0, 'NIKE', '男鞋');

create table pms_product_attribute
(
    id                            bigint auto_increment
        primary key,
    product_attribute_category_id bigint       null,
    name                          varchar(64)  null,
    select_type                   int(1)       null comment '属性选择类型：0->唯一；1->单选；2->多选',
    input_type                    int(1)       null comment '属性录入方式：0->手工录入；1->从列表中选取',
    input_list                    varchar(255) null comment '可选值列表，以逗号隔开',
    sort                          int          null comment '排序字段：最高的可以单独上传图片',
    filter_type                   int(1)       null comment '分类筛选样式：1->普通；1->颜色',
    search_type                   int(1)       null comment '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
    related_status                int(1)       null comment '相同属性产品是否关联；0->不关联；1->关联',
    hand_add_status               int(1)       null comment '是否支持手动新增；0->不支持；1->支持',
    type                          int(1)       null comment '属性的类型；0->规格；1->参数'
)
    comment '商品属性参数表';

INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (1, 1, '尺寸', 2, 1, 'M,X,XL,2XL,3XL,4XL', 0, 0, 0, 0, 0, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (7, 1, '颜色', 2, 1, '黑色,红色,白色,粉色', 100, 0, 0, 0, 1, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (13, 0, '上市年份', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (14, 0, '上市年份1', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (15, 0, '上市年份2', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (16, 0, '上市年份3', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (17, 0, '上市年份4', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (18, 0, '上市年份5', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (19, 0, '适用对象', 1, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (20, 0, '适用对象1', 2, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (21, 0, '适用对象3', 2, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (24, 1, '商品编号', 1, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (25, 1, '适用季节', 1, 1, '春季,夏季,秋季,冬季', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (32, 2, '适用人群', 0, 1, '老年,青年,中年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (33, 2, '风格', 0, 1, '嘻哈风格,基础大众,商务正装', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (35, 2, '颜色', 0, 0, '', 100, 0, 0, 0, 1, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (37, 1, '适用人群', 1, 1, '儿童,青年,中年,老年', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (38, 1, '上市时间', 1, 1, '2017年秋,2017年冬,2018年春,2018年夏', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (39, 1, '袖长', 1, 1, '短袖,长袖,中袖', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (40, 2, '尺码', 0, 1, '29,30,31,32,33,34', 0, 0, 0, 0, 0, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (41, 2, '适用场景', 0, 1, '居家,运动,正装', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (42, 2, '上市时间', 0, 1, '2018年春,2018年夏', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (43, 3, '颜色', 0, 0, '', 100, 0, 0, 0, 1, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (44, 3, '容量', 0, 1, '16G,32G,64G,128G', 0, 0, 0, 0, 0, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (45, 3, '屏幕尺寸', 0, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (46, 3, '网络', 0, 1, '3G,4G', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (47, 3, '系统', 0, 1, 'Android,IOS', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (48, 3, '电池容量', 0, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (49, 11, '颜色', 0, 1, '红色,蓝色,绿色', 0, 1, 0, 0, 0, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (50, 11, '尺寸', 0, 1, '38,39,40', 0, 0, 0, 0, 0, 0);
INSERT INTO gozero.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (51, 11, '风格', 0, 1, '夏季,秋季', 0, 0, 0, 0, 0, 0);

create table pms_product_attribute_category
(
    id              bigint auto_increment
        primary key,
    name            varchar(64)   null,
    attribute_count int default 0 null comment '属性数量',
    param_count     int default 0 null comment '参数数量'
)
    comment '产品属性分类表';

INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (1, '服装-T恤', 2, 5);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (2, '服装-裤装', 2, 4);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (3, '手机数码-手机通讯', 2, 4);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (4, '配件', 0, 0);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (5, '居家', 0, 0);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (6, '洗护', 0, 0);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (10, '测试分类', 0, 0);
INSERT INTO gozero.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (11, '服装-鞋帽', 3, 0);

create table pms_product_attribute_value
(
    id                   bigint auto_increment
        primary key,
    product_id           bigint      null,
    product_attribute_id bigint      null,
    value                varchar(64) null comment '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开'
)
    comment '存储产品参数信息的表';

INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (1, 9, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (2, 10, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (3, 11, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (4, 12, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (5, 13, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (6, 14, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (7, 18, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (8, 7, 1, 'X');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (9, 7, 1, 'XL');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (10, 7, 1, 'XXL');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (11, 22, 7, 'x,xx');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (12, 22, 24, 'no110');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (13, 22, 25, '春季');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (14, 22, 37, '青年');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (15, 22, 38, '2018年春');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (16, 22, 39, '长袖');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (124, 23, 7, '米白色,浅黄色');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (125, 23, 24, 'no1098');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (126, 23, 25, '春季');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (127, 23, 37, '青年');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (128, 23, 38, '2018年春');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (129, 23, 39, '长袖');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (184, 31, 25, '夏季');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (185, 31, 37, '青年');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (186, 31, 38, '2018年夏');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (187, 31, 39, '短袖');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (199, 30, 25, '夏季');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (200, 30, 37, '青年');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (201, 30, 38, '2018年夏');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (202, 30, 39, '短袖');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (213, 27, 43, '黑色,蓝色');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (214, 27, 45, '5.8');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (215, 27, 46, '4G');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (216, 27, 47, 'Android');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (217, 27, 48, '3000ml');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (218, 28, 43, '金色,银色');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (219, 28, 45, '5.0');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (220, 28, 46, '4G');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (221, 28, 47, 'Android');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (222, 28, 48, '2800ml');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (223, 29, 43, '金色,银色');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (224, 29, 45, '4.7');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (225, 29, 46, '4G');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (226, 29, 47, 'IOS');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (227, 29, 48, '1960ml');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (228, 26, 43, '金色,银色');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (229, 26, 45, '5.0');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (230, 26, 46, '4G');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (231, 26, 47, 'Android');
INSERT INTO gozero.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (232, 26, 48, '3000');

create table pms_product_category
(
    id            bigint auto_increment
        primary key,
    parent_id     bigint       null comment '上机分类的编号：0表示一级分类',
    name          varchar(64)  null,
    level         int(1)       null comment '分类级别：0->1级；1->2级',
    product_count int          null,
    product_unit  varchar(64)  null,
    nav_status    int(1)       null comment '是否显示在导航栏：0->不显示；1->显示',
    show_status   int(1)       null comment '显示状态：0->不显示；1->显示',
    sort          int          null,
    icon          varchar(255) null comment '图标',
    keywords      varchar(255) null,
    description   text         null comment '描述'
)
    comment '产品分类';

INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (1, 0, '服装', 0, 100, '件', 1, 1, 1, ' ', '服装', '服装分类');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (2, 0, '手机数码', 0, 100, '件', 1, 1, 1, ' ', '手机数码', '手机数码');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (3, 0, '家用电器', 0, 100, '件', 1, 1, 1, ' ', '家用电器', '家用电器');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (4, 0, '家具家装', 0, 100, '件', 1, 1, 1, ' ', '家具家装', '家具家装');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (5, 0, '汽车用品', 0, 100, '件', 1, 1, 1, ' ', '汽车用品', '汽车用品');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (7, 1, '外套', 1, 100, '件', 1, 1, 0, '', '外套', '外套');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (8, 1, 'T恤', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'T恤', 'T恤');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (9, 1, '休闲裤', 1, 100, '件', 1, 1, 0, ' ', '休闲裤', '休闲裤');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (10, 1, '牛仔裤', 1, 100, '件', 1, 1, 0, ' ', '牛仔裤', '牛仔裤');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (11, 1, '衬衫', 1, 100, '件', 1, 1, 0, ' ', '衬衫', '衬衫分类');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (13, 12, '家电子分类1', 1, 1, 'string', 0, 1, 0, 'string', 'string', 'string');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (14, 12, '家电子分类2', 1, 1, 'string', 0, 1, 0, 'string', 'string', 'string');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (19, 2, '手机通讯', 1, 0, '件', 0, 0, 0, '', '手机通讯', '手机通讯');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (29, 1, '男鞋', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (30, 2, '手机配件', 1, 0, '', 0, 0, 0, '', '手机配件', '手机配件');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (31, 2, '摄影摄像', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (32, 2, '影音娱乐', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (33, 2, '数码配件', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (34, 2, '智能设备', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (35, 3, '电视', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (36, 3, '空调', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (37, 3, '洗衣机', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (38, 3, '冰箱', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (39, 3, '厨卫大电', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (40, 3, '厨房小电', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (41, 3, '生活电器', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (42, 3, '个护健康', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (43, 4, '厨房卫浴', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (44, 4, '灯饰照明', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (45, 4, '五金工具', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (46, 4, '卧室家具', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (47, 4, '客厅家具', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (48, 5, '全新整车', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (49, 5, '车载电器', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (50, 5, '维修保养', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO gozero.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (51, 5, '汽车装饰', 1, 0, '', 0, 0, 0, '', '', '');

create table pms_product_category_attribute_relation
(
    id                   bigint auto_increment
        primary key,
    product_category_id  bigint null,
    product_attribute_id bigint null
)
    comment '产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';

INSERT INTO gozero.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (1, 24, 24);
INSERT INTO gozero.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (5, 26, 24);
INSERT INTO gozero.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (7, 28, 24);
INSERT INTO gozero.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (9, 25, 24);
INSERT INTO gozero.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (10, 25, 25);

create table pms_product_full_reduction
(
    id           bigint(11) auto_increment
        primary key,
    product_id   bigint         null,
    full_price   decimal(10, 2) null,
    reduce_price decimal(10, 2) null
)
    comment '产品满减表(只针对同商品)';

INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (1, 7, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (2, 8, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (3, 9, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (4, 10, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (5, 11, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (6, 12, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (7, 13, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (8, 14, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (9, 18, 100.00, 20.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (10, 7, 200.00, 50.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (11, 7, 300.00, 100.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (14, 22, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (16, 24, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (34, 23, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (44, 31, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (46, 32, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (48, 33, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (55, 34, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (56, 30, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (59, 27, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (60, 28, 500.00, 50.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (61, 28, 1000.00, 120.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (62, 29, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (63, 26, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (78, 36, 0.00, 0.00);
INSERT INTO gozero.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (79, 35, 0.00, 0.00);

create table pms_product_ladder
(
    id         bigint auto_increment
        primary key,
    product_id bigint         null,
    count      int            null comment '满足的商品数量',
    discount   decimal(10, 2) null comment '折扣',
    price      decimal(10, 2) null comment '折后价格'
)
    comment '产品阶梯价格表(只针对同商品)';

INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (1, 7, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (2, 8, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (3, 9, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (4, 10, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (5, 11, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (6, 12, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (7, 13, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (8, 14, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (12, 18, 3, 0.70, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (14, 7, 4, 0.60, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (15, 7, 5, 0.50, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (18, 22, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (20, 24, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (38, 23, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (48, 31, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (50, 32, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (52, 33, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (59, 34, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (60, 30, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (64, 27, 2, 0.80, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (65, 27, 3, 0.75, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (66, 28, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (67, 29, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (68, 26, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (83, 36, 0, 0.00, 0.00);
INSERT INTO gozero.pms_product_ladder (id, product_id, count, discount, price) VALUES (84, 35, 0, 0.00, 0.00);

create table pms_product_operate_log
(
    id                  bigint auto_increment
        primary key,
    product_id          bigint         null,
    price_old           decimal(10, 2) null,
    price_new           decimal(10, 2) null,
    sale_price_old      decimal(10, 2) null,
    sale_price_new      decimal(10, 2) null,
    gift_point_old      int            null comment '赠送的积分',
    gift_point_new      int            null,
    use_point_limit_old int            null,
    use_point_limit_new int            null,
    operate_man         varchar(64)    null comment '操作人',
    create_time         datetime       null
);

create table pms_product_vertify_record
(
    id          bigint auto_increment
        primary key,
    product_id  bigint       null,
    create_time datetime     null,
    vertify_man varchar(64)  null comment '审核人',
    status      int(1)       null,
    detail      varchar(255) null comment '反馈详情'
)
    comment '商品审核记录';

INSERT INTO gozero.pms_product_vertify_record (id, product_id, create_time, vertify_man, status, detail) VALUES (1, 1, '2018-04-27 16:36:41', 'test', 1, '验证通过');
INSERT INTO gozero.pms_product_vertify_record (id, product_id, create_time, vertify_man, status, detail) VALUES (2, 2, '2018-04-27 16:36:41', 'test', 1, '验证通过');

create table pms_sku_stock
(
    id              bigint auto_increment
        primary key,
    product_id      bigint         null,
    sku_code        varchar(64)    not null comment 'sku编码',
    price           decimal(10, 2) null,
    stock           int default 0  null comment '库存',
    low_stock       int            null comment '预警库存',
    pic             varchar(255)   null comment '展示图片',
    sale            int            null comment '销量',
    promotion_price decimal(10, 2) null comment '单品促销价格',
    lock_stock      int default 0  null comment '锁定库存',
    sp_data         varchar(500)   null comment '商品销售属性，json格式'
)
    comment 'sku的库存';

INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (163, 36, '202002210036001', 100.00, 100, 25, ' ', 0, 0, 9, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (164, 36, '202002210036002', 120.00, 98, 20, ' ', 0, 0, 6, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (165, 36, '202002210036003', 100.00, 100, 20, ' ', 0, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (166, 36, '202002210036004', 100.00, 100, 20, ' ', 0, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (167, 36, '202002210036005', 100.00, 100, 20, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (168, 36, '202002210036006', 100.00, 100, 20, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (169, 36, '202002210036007', 100.00, 100, 20, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (170, 36, '202002210036008', 100.00, 100, 20, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (171, 35, '202002250035001', 200.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (172, 35, '202002250035002', 240.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (173, 35, '202002250035003', 200.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (174, 35, '202002250035004', 200.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (175, 35, '202002250035005', 200.00, 100, 50, ' ',0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (176, 35, '202002250035006', 200.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (177, 35, '202002250035007', 200.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO gozero.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (178, 35, '202002250035008', 200.00, 100, 50, ' ', 0, 0, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');

create table sms_coupon
(
    id            bigint auto_increment
        primary key,
    type          int(1)         null comment '优惠券类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
    name          varchar(100)   null,
    platform      int(1)         null comment '使用平台：0->全部；1->移动；2->PC',
    count         int            null comment '数量',
    amount        decimal(10, 2) null comment '金额',
    per_limit     int            null comment '每人限领张数',
    min_point     decimal(10, 2) null comment '使用门槛；0表示无门槛',
    start_time    datetime       null,
    end_time      datetime       null,
    use_type      int(1)         null comment '使用类型：0->全场通用；1->指定分类；2->指定商品',
    note          varchar(200)   null comment '备注',
    publish_count int            null comment '发行数量',
    use_count     int            null comment '已使用数量',
    receive_count int            null comment '领取数量',
    enable_time   datetime       null comment '可以领取的日期',
    code          varchar(64)    null comment '优惠码',
    member_level  int(1)         null comment '可领取的会员类型：0->无限时'
)
    comment '优惠券表';

INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (2, 0, '全品类通用券', 0, 92, 10.00, 1, 100.00, '2018-08-27 16:40:47', '2018-11-23 16:40:47', 0, '满100减10', 100, 0, 8, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (3, 0, '小米手机专用券', 0, 92, 50.00, 1, 1000.00, '2018-08-27 16:40:47', '2018-11-16 16:40:47', 2, '小米手机专用优惠券', 100, 0, 8, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (4, 0, '手机品类专用券', 0, 92, 300.00, 1, 2000.00, '2018-08-27 16:40:47', '2018-09-15 16:40:47', 1, '手机分类专用优惠券', 100, 0, 8, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (7, 0, 'T恤分类专用优惠券', 0, 93, 50.00, 1, 500.00, '2018-08-27 16:40:47', '2018-08-15 16:40:47', 1, '满500减50', 100, 0, 7, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (8, 0, '新优惠券', 0, 100, 100.00, 1, 1000.00, '2018-11-08 00:00:00', '2018-11-27 00:00:00', 0, '测试', 100, 0, 1, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (9, 0, '全品类通用券', 0, 100, 5.00, 1, 100.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, '测试', 100, 0, 1, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (10, 0, '全品类通用券', 0, 100, 15.00, 1, 200.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, '测试', 100, 0, 1, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (11, 0, '全品类通用券', 0, 1000, 50.00, 1, 1000.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, '测试', 1000, 0, 0, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (12, 0, '移动端全品类通用券', 1, 1, 10.00, 1, 100.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, '测试', 100, 0, 0, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (19, 0, '手机分类专用', 0, 100, 100.00, 1, 1000.00, '2018-11-09 00:00:00', '2018-11-17 00:00:00', 1, '手机分类专用', 100, 0, 0, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (20, 0, '小米手机专用', 0, 100, 200.00, 1, 1000.00, '2018-11-09 00:00:00', '2018-11-24 00:00:00', 2, '小米手机专用', 100, 0, 0, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (21, 0, 'xxx', 0, 100, 10.00, 1, 100.00, '2018-11-09 00:00:00', '2018-11-30 00:00:00', 2, '测试', 100, 0, 0, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (22, 0, 'string', 0, 0, 0.00, 0, 0.00, '2019-08-18 15:36:11', '2019-08-18 15:36:11', 0, 'string', 0, 0, 0, '2021-03-16 21:06:58', 'string', 0);
INSERT INTO gozero.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (23, 0, '有效期测试', 0, 100, 10.00, 1, 100.00, '2019-10-05 00:00:00', '2019-10-09 00:00:00', 0, '测试', 100, 0, 0, '2021-03-16 21:06:58', 'string', 0);

create table sms_coupon_history
(
    id              bigint auto_increment
        primary key,
    coupon_id       bigint       null,
    member_id       bigint       null,
    coupon_code     varchar(64)  null,
    member_nickname varchar(64)  null comment '领取人昵称',
    get_type        int(1)       null comment '获取类型：0->后台赠送；1->主动获取',
    create_time     datetime     null,
    use_status      int(1)       null comment '使用状态：0->未使用；1->已使用；2->已过期',
    use_time        datetime     null comment '使用时间',
    order_id        bigint       null comment '订单编号',
    order_sn        varchar(100) null comment '订单号码'
)
    comment '优惠券使用、领取历史表';

create index idx_coupon_id
    on sms_coupon_history (coupon_id);

create index idx_member_id
    on sms_coupon_history (member_id);

INSERT INTO gozero.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (2, 2, 1, '4931048380330002', 'windir', 1, '2018-08-29 14:04:12', 1, '2018-11-12 14:38:47', 12, '201809150101000001');
INSERT INTO gozero.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (3, 3, 1, '4931048380330003', 'windir', 1, '2018-08-29 14:04:29', 0, '2018-11-12 14:38:47', 12, ' ');
INSERT INTO gozero.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (4, 4, 1, '4931048380330004', 'windir', 1, '2018-08-29 14:04:32', 0, '2018-11-12 14:38:47 ', 12, ' ');

create table sms_coupon_product_category_relation
(
    id                    bigint auto_increment
        primary key,
    coupon_id             bigint       null,
    product_category_id   bigint       null,
    product_category_name varchar(200) null comment '产品分类名称',
    parent_category_name  varchar(200) null comment '父分类名称'
)
    comment '优惠券和产品分类关系表';

INSERT INTO gozero.sms_coupon_product_category_relation (id, coupon_id, product_category_id, product_category_name, parent_category_name) VALUES (4, 19, 30, '手机配件', '手机数码');

create table sms_coupon_product_relation
(
    id           bigint auto_increment
        primary key,
    coupon_id    bigint       null,
    product_id   bigint       null,
    product_name varchar(500) null comment '商品名称',
    product_sn   varchar(200) null comment '商品编码'
)
    comment '优惠券和产品的关系表';

INSERT INTO gozero.sms_coupon_product_relation (id, coupon_id, product_id, product_name, product_sn) VALUES (9, 21, 33, '小米（MI）小米电视4A ', '4609652');

create table sms_flash_promotion
(
    id          bigint auto_increment
        primary key,
    title       varchar(200) null,
    start_date  date         null comment '开始日期',
    end_date    date         null comment '结束日期',
    status      int(1)       null comment '上下线状态',
    create_time datetime     null comment '秒杀时间段名称'
)
    comment '限时购表';

INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (2, '春季家电家具疯狂秒杀1', '2018-11-12', '2018-11-23', 1, '2018-11-16 11:12:13');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (3, '手机特卖', '2018-11-03', '2018-11-10', 1, '2018-11-16 11:11:31');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (4, '春季家电家具疯狂秒杀3', '2018-11-24', '2018-11-25', 1, '2018-11-16 11:12:19');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (5, '春季家电家具疯狂秒杀4', '2018-11-16', '2018-11-16', 1, '2018-11-16 11:12:24');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (6, '春季家电家具疯狂秒杀5', '2018-11-16', '2018-11-16', 1, '2018-11-16 11:12:31');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (7, '春季家电家具疯狂秒杀6', '2018-11-16', '2018-11-16', 1, '2018-11-16 11:12:35');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (8, '春季家电家具疯狂秒杀7', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:39');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (9, '春季家电家具疯狂秒杀8', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:42');
INSERT INTO gozero.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (13, '测试', '2018-11-01', '2018-11-30', 0, '2018-11-19 10:34:24');

create table sms_flash_promotion_log
(
    id             int auto_increment
        primary key,
    member_id      int          null,
    product_id     bigint       null,
    member_phone   varchar(64)  null,
    product_name   varchar(100) null,
    subscribe_time datetime     null comment '会员订阅时间',
    send_time      datetime     null
)
    comment '限时购通知记录';

create table sms_flash_promotion_product_relation
(
    id                         bigint auto_increment comment '编号'
        primary key,
    flash_promotion_id         bigint         null,
    flash_promotion_session_id bigint         null comment '编号',
    product_id                 bigint         null,
    flash_promotion_price      decimal(10, 2) null comment '限时购价格',
    flash_promotion_count      int            null comment '限时购数量',
    flash_promotion_limit      int            null comment '每人限购数量',
    sort                       int            null comment '排序'
)
    comment '商品限时购与商品关系表';

INSERT INTO gozero.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (1, 2, 1, 26, 3000.00, 10, 1, 0);
INSERT INTO gozero.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (2, 2, 1, 27, 2000.00, 10, 1, 20);
INSERT INTO gozero.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (3, 2, 1, 28, 599.00, 19, 1, 0);
INSERT INTO gozero.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (4, 2, 1, 29, 4999.00, 10, 1, 100);
INSERT INTO gozero.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (9, 2, 2, 26, 2999.00, 100, 1, 0);

create table sms_flash_promotion_session
(
    id          bigint auto_increment comment '编号'
        primary key,
    name        varchar(200) null comment '场次名称',
    start_time  time         null comment '每日开始时间',
    end_time    time         null comment '每日结束时间',
    status      int(1)       null comment '启用状态：0->不启用；1->启用',
    create_time datetime     null comment '创建时间'
)
    comment '限时购场次表';

INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (1, '8:00', '08:00:29', '09:00:33', 1, '2018-11-16 13:22:17');
INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (2, '10:00', '10:00:33', '11:00:33', 1, '2018-11-16 13:22:34');
INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (3, '12:00', '12:00:00', '13:00:22', 1, '2018-11-16 13:22:37');
INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (4, '14:00', '14:00:00', '15:00:00', 1, '2018-11-16 13:22:41');
INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (5, '16:00', '16:00:00', '17:00:00', 1, '2018-11-16 13:22:45');
INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (6, '18:00', '18:00:00', '19:00:00', 1, '2018-11-16 13:21:34');
INSERT INTO gozero.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (7, '20:00', '20:00:33', '21:00:33', 0, '2018-11-16 13:22:55');

create table sms_home_advertise
(
    id          bigint auto_increment
        primary key,
    name        varchar(100)  null,
    type        int(1)        null comment '轮播位置：0->PC首页轮播；1->app首页轮播',
    pic         varchar(500)  null,
    start_time  datetime      null,
    end_time    datetime      null,
    status      int(1)        null comment '上下线状态：0->下线；1->上线',
    click_count int           null comment '点击数',
    order_count int           null comment '下单数',
    url         varchar(500)  null comment '链接地址',
    note        varchar(500)  null comment '备注',
    sort        int default 0 null comment '排序'
)
    comment '首页轮播广告表';

INSERT INTO gozero.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (2, '夏季大热促销', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '2018-11-01 14:01:37', '2018-11-15 14:01:37', 1, 0, 0, 'www.baidu.com', '夏季大热促销', 0);
INSERT INTO gozero.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (3, '夏季大热促销1', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', 0, 0, 0, 'www.baidu.com', '夏季大热促销1', 0);
INSERT INTO gozero.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (4, '夏季大热促销2', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', 1, 0, 0, 'www.baidu.com', '夏季大热促销2', 0);
INSERT INTO gozero.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (9, '电影推荐广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg', '2018-11-01 00:00:00', '2018-11-24 00:00:00', 1, 0, 0, 'www.baidu.com', '电影推荐广告', 100);
INSERT INTO gozero.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (10, '汽车促销广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg', '2018-11-13 00:00:00', '2018-11-24 00:00:00', 1, 0, 0, 'www.baidu.com', '电影推荐广告', 99);
INSERT INTO gozero.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (11, '汽车推荐广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg', '2018-11-13 00:00:00', '2018-11-30 00:00:00', 1, 0, 0, 'www.baidu.com', '电影推荐广告', 98);

create table sms_home_brand
(
    id               bigint auto_increment
        primary key,
    brand_id         bigint      null,
    brand_name       varchar(64) null,
    recommend_status int(1)      null,
    sort             int         null
)
    comment '首页推荐品牌表';

INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (1, 1, '万和', 1, 200);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (2, 2, '三星', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (6, 6, '小米', 1, 300);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (8, 5, '方太', 1, 100);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (31, 49, '七匹狼', 0, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (32, 50, '海澜之家', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (33, 51, '苹果', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (34, 2, '三星', 0, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (35, 3, '华为', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (36, 4, '格力', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (37, 5, '方太', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (38, 1, '万和', 1, 0);
INSERT INTO gozero.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (39, 21, 'OPPO', 1, 0);

create table sms_home_new_product
(
    id               bigint auto_increment
        primary key,
    product_id       bigint      null,
    product_name     varchar(64) null,
    recommend_status int(1)      null,
    sort             int(1)      null
)
    comment '新鲜好物表';

INSERT INTO gozero.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (2, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 200);
INSERT INTO gozero.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (8, 26, '华为 HUAWEI P20 ', 0, 0);
INSERT INTO gozero.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (9, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 0);
INSERT INTO gozero.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (10, 28, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 1, 0);
INSERT INTO gozero.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (11, 29, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 1, 0);
INSERT INTO gozero.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (12, 30, 'HLA海澜之家简约动物印花短袖T恤', 1, 0);

create table sms_home_recommend_product
(
    id               bigint auto_increment
        primary key,
    product_id       bigint      null,
    product_name     varchar(64) null,
    recommend_status int(1)      null,
    sort             int(1)      null
)
    comment '人气推荐商品表';

INSERT INTO gozero.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (3, 26, '华为 HUAWEI P20 ', 1, 0);
INSERT INTO gozero.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (4, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 0);
INSERT INTO gozero.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (5, 28, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 1, 0);
INSERT INTO gozero.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (6, 29, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 1, 0);
INSERT INTO gozero.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (7, 30, 'HLA海澜之家简约动物印花短袖T恤', 1, 100);

create table sms_home_recommend_subject
(
    id               bigint auto_increment
        primary key,
    subject_id       bigint      null,
    subject_name     varchar(64) null,
    recommend_status int(1)      null,
    sort             int         null
)
    comment '首页推荐专题表';

INSERT INTO gozero.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (14, 1, 'polo衬衫的也时尚', 1, 0);
INSERT INTO gozero.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (15, 2, '大牌手机低价秒', 1, 0);
INSERT INTO gozero.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (16, 3, '晓龙845新品上市', 1, 0);
INSERT INTO gozero.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (17, 4, '夏天应该穿什么', 1, 0);
INSERT INTO gozero.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (18, 5, '夏季精选', 1, 100);
INSERT INTO gozero.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (19, 6, '品牌手机降价', 1, 0);

create table sys_config
(
    id               bigint auto_increment comment '编号'
        primary key,
    value            varchar(100)                        not null comment '数据值',
    label            varchar(100)                        not null comment '标签名',
    type             varchar(100)                        not null comment '类型',
    description      varchar(100)                        not null comment '描述',
    sort             decimal                             not null comment '排序（升序）',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    remarks          varchar(255)                        null comment '备注信息',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常'
)
    comment '系统配置表';

INSERT INTO gozero.sys_config (id, value, label, type, description, sort, create_by, create_time, last_update_by, last_update_time, remarks, del_flag) VALUES (1, '#14889A', 'theme', 'color', '主题色', 0, 'admin', '2018-09-23 19:52:54', 'admin', '2020-11-19 18:14:02', '主题色', 0);

create table sys_dept
(
    id               bigint auto_increment comment '编号'
        primary key,
    name             varchar(50)                         null comment '机构名称',
    parent_id        bigint                              null comment '上级机构ID，一级机构为0',
    order_num        int                                 null comment '排序',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常'
)
    comment '机构管理';

INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (1, '轻尘集团', 0, 0, 'admin', '2018-09-23 19:35:22', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (2, '牧尘集团', 0, 1, 'admin', '2018-09-23 19:35:55', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (3, '三国集团', 0, 2, 'admin', '2018-09-23 19:36:24', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (4, '上海分公司', 2, 0, 'admin', '2018-09-23 19:37:03', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (5, '北京分公司', 1, 1, 'admin', '2018-09-23 19:37:17', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (6, '北京分公司', 2, 1, 'admin', '2018-09-23 19:37:28', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (7, '技术部', 5, 0, 'admin', '2018-09-23 19:38:00', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (8, '技术部', 4, 0, 'admin', '2018-09-23 19:38:10', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (9, '技术部', 6, 0, 'admin', '2018-09-23 19:38:17', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (10, '市场部', 5, 0, 'admin', '2018-09-23 19:38:45', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (11, '市场部', 6, 0, 'admin', '2018-09-23 19:39:01', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (12, '魏国', 3, 0, 'admin', '2018-09-23 19:40:42', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (13, '蜀国', 3, 1, 'admin', '2018-09-23 19:40:54', 'admin', '2018-09-23 19:35:22', 0);
INSERT INTO gozero.sys_dept (id, name, parent_id, order_num, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (14, '吴国', 3, 2, 'admin', '2018-09-23 19:41:04', 'admin', '2018-09-23 19:35:22', 0);

create table sys_dict
(
    id               bigint auto_increment comment '编号'
        primary key,
    value            varchar(100)                        not null comment '数据值',
    label            varchar(100)                        not null comment '标签名',
    type             varchar(100)                        not null comment '类型',
    description      varchar(100)                        not null comment '描述',
    sort             decimal                             not null comment '排序（升序）',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time timestamp default CURRENT_TIMESTAMP null comment '更新时间',
    remarks          varchar(255)                        null comment '备注信息',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常'
)
    comment '字典表';

INSERT INTO gozero.sys_dict (id, value, label, type, description, sort, create_by, create_time, last_update_by, last_update_time, remarks, del_flag) VALUES (1, 'male', '男', 'sex', '性别', 0, 'admin', '2018-09-23 19:52:54', 'admin', '2020-11-19 18:21:55', '性别', 0);
INSERT INTO gozero.sys_dict (id, value, label, type, description, sort, create_by, create_time, last_update_by, last_update_time, remarks, del_flag) VALUES (2, 'female', '女', 'sex', '性别', 1, 'admin', '2018-09-23 19:53:17', 'admin', '2020-11-19 18:22:00', '性别', 0);
INSERT INTO gozero.sys_dict (id, value, label, type, description, sort, create_by, create_time, last_update_by, last_update_time, remarks, del_flag) VALUES (9, '123', '1', '1', '12222222222222', 0, '', '2020-11-26 15:10:42', 'admin', '2020-11-26 15:26:59', '12222222222222', 0);
INSERT INTO gozero.sys_dict (id, value, label, type, description, sort, create_by, create_time, last_update_by, last_update_time, remarks, del_flag) VALUES (11, '1', '1', '1', '1', 1, 'admin', '2020-11-26 15:27:08', 'admin', '2020-11-26 15:27:09', '1', 0);

create table sys_job
(
    id               bigint auto_increment comment '编号'
        primary key,
    job_name         varchar(50)                         null comment '职位名称',
    order_num        int                                 null comment '排序',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常',
    remarks          varchar(68)                         null comment '备注'
)
    comment '职位管理';

INSERT INTO gozero.sys_job (id, job_name, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, remarks) VALUES (1, '董事长', 1, 'admin', '2021-04-26 15:50:45', 'admin', '2021-04-26 16:17:07', 0, '测试1');
INSERT INTO gozero.sys_job (id, job_name, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, remarks) VALUES (2, '经理', 2, 'admin', '2021-04-26 16:05:11', 'admin', '2021-04-26 16:16:36', 0, '管理人员1');

create table sys_log
(
    id               bigint auto_increment comment '编号'
        primary key,
    user_name        varchar(50)                         null comment '用户名',
    operation        varchar(50)                         null comment '用户操作',
    method           varchar(200)                        null comment '请求方法',
    params           varchar(5000)                       null comment '请求参数',
    time             bigint                              not null comment '执行时长(毫秒)',
    ip               varchar(64)                         null comment 'IP地址',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间'
)
    comment '系统操作日志';

INSERT INTO gozero.sys_log (id, user_name, operation, method, params, time, ip, create_by, create_time, last_update_by, last_update_time) VALUES (1, 'admin', '', 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{"columnFilters":{"label":{"name":"label","value":""}},"pageNum":1,"pageSize":8}', 4, '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:16', '', '2018-09-23 19:54:16');
INSERT INTO gozero.sys_log (id, user_name, operation, method, params, time, ip, create_by, create_time, last_update_by, last_update_time) VALUES (2, 'admin', '', 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{"columnFilters":{"name":{"name":"name","value":""}},"pageNum":1,"pageSize":8}', 4, '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:17', '', '2018-09-23 19:54:16');
INSERT INTO gozero.sys_log (id, user_name, operation, method, params, time, ip, create_by, create_time, last_update_by, last_update_time) VALUES (3, 'admin', '', 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{"columnFilters":{"name":{"name":"name","value":""}},"pageNum":1,"pageSize":8}', 36, '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:18', '', '2018-09-23 19:54:16');
INSERT INTO gozero.sys_log (id, user_name, operation, method, params, time, ip, create_by, create_time, last_update_by, last_update_time) VALUES (4, 'admin', '', 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{"columnFilters":{"label":{"name":"label","value":""}},"pageNum":1,"pageSize":8}', 4, '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:20', '', '2018-09-23 19:54:16');
INSERT INTO gozero.sys_log (id, user_name, operation, method, params, time, ip, create_by, create_time, last_update_by, last_update_time) VALUES (5, 'admin', '', 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{"columnFilters":{"name":{"name":"name","value":""}},"pageNum":1,"pageSize":8}', 4, '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:20', '', '2018-09-23 19:54:16');
INSERT INTO gozero.sys_log (id, user_name, operation, method, params, time, ip, create_by, create_time, last_update_by, last_update_time) VALUES (6, 'admin', '', 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{"columnFilters":{"name":{"name":"name","value":""}},"pageNum":1,"pageSize":8}', 27, '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:21', '', '2018-09-23 19:54:16');

create table sys_login_log
(
    id               bigint auto_increment comment '编号'
        primary key,
    user_name        varchar(50)                         null comment '用户名',
    status           varchar(50)                         null comment '登录状态（online:在线，登录初始状态，方便统计在线人数；login:退出登录后将online置为login；logout:退出登录）',
    ip               varchar(64)                         null comment 'IP地址',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间'
)
    comment '系统登录日志';

INSERT INTO gozero.sys_login_log (id, user_name, status, ip, create_by, create_time, last_update_by, last_update_time) VALUES (1, 'admin', 'login', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:16', 'admin', '2018-09-23 19:54:17');
INSERT INTO gozero.sys_login_log (id, user_name, status, ip, create_by, create_time, last_update_by, last_update_time) VALUES (2, 'admin', 'logout', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:17', 'admin', '2018-09-23 19:54:17');
INSERT INTO gozero.sys_login_log (id, user_name, status, ip, create_by, create_time, last_update_by, last_update_time) VALUES (3, 'admin', 'login', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:18', 'admin', '2018-09-23 19:54:17');

create table sys_menu
(
    id               bigint auto_increment comment '编号'
        primary key,
    name             varchar(50)                         null comment '菜单名称',
    parent_id        bigint                              null comment '父菜单ID，一级菜单为0',
    url              varchar(200)                        null,
    perms            varchar(500)                        null comment '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
    type             int                                 null comment '类型   0：目录   1：菜单   2：按钮',
    icon             varchar(50)                         null comment '菜单图标',
    order_num        int                                 null comment '排序',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常',
    vue_path         varchar(64)                         null comment 'vue系统的path',
    vue_component    varchar(64)                         null comment 'vue的页面',
    vue_icon         varchar(64)                         null comment 'vue的图标',
    vue_redirect     varchar(64)                         null comment 'vue的路由重定向',
    background_url   varchar(128)                        not null comment '后台地址'
)
    comment '菜单管理';

INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (1, '欢迎', 0, '/welcome', '', 0, 'SmileOutlined', 1, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, '', '', '', '', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (2, '系统管理', 0, '/system', '', 0, 'SettingOutlined', 2, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, '/sys', 'Layout', 'el-icon-setting', '/sys/userList', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (3, '用户列表', 2, '/system/user/list', '', 1, '', 1, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, 'userList', 'system/user/index', 'el-icon-user', '', '/api/sys/user/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (4, '角色列表', 2, '/system/role/list', '', 1, '', 2, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 1, 'roleList', 'system/role/index', 'el-icon-female', '', '/api/sys/role/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (5, '菜单列表', 2, '/system/menu/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 1, 'resourcesList', 'system/resource/index', 'el-icon-postcard', '', '/api/sys/menu/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (6, '机构列表', 2, '/system/dept/list', '', 1, '', 4, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 1, 'deptList', 'system/dept/index', 'el-icon-bangzhu', '', '/api/sys/dept/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (7, '字典列表', 2, '/system/dict/list', '', 1, '', 5, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'dictList', 'system/dict/index', 'el-icon-delete-location', '', '/api/sys/dict/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (8, '日志管理', 0, '/log', '', 0, 'DeleteOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, '/log', 'Layout', 'el-icon-delete', '/log/loginLogList', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (9, '登录日志', 8, '/log/loginLog/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'loginLogList', 'log/loginlog/index', 'el-icon-remove-outline', '', '/api/sys/loginlog/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (10, '操作日志', 8, '/log/sysLog/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'sysLogList', 'log/syslog/index', 'el-icon-camera', '', '/api/sys/syslog/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (11, '会员管理', 0, '/ums', '', 0, 'FrownOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, '/ums', 'Layout', 'el-icon-headset', '/ums/memberList', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (12, '会员列表', 11, '/ums/member/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'memberList', 'ums/member/index', 'el-icon-camera', '', '/api/member/member/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (13, '会员等级', 11, '/ums/memberLevel/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'memberLevelList', 'ums/member_level/index', 'el-icon-remove-outline', '', '/api/member/level/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (14, '会员地址', 11, '/ums/memberAddress/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'memberAddressList', 'ums/member_address/index', 'el-icon-remove-outline', '', '/api/member/address/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (15, '登录记录', 11, '/ums/memberLoginLog/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'memberLoginLogList', 'ums/member_login_log/index', 'el-icon-remove-outline', '', '/api/member/loginlog/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (16, '商品管理', 0, '/pms', '', 0, 'GiftOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, '/pms', 'Layout', 'el-icon-coffee', '/pms/productList', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (17, '商品类别', 16, '/pms/productCategory/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'productCategoryList', 'pms/product_category/index', 'el-icon-remove-outline', '', '/api/product/category/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (18, '商品品牌', 16, '/pms/productBrand/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'productBrandList', 'pms/product_brand/index', 'el-icon-remove-outline', '', '/api/product/brand/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (19, '商品列表', 16, '/pms/product/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'productList', 'pms/product/index', 'el-icon-camera', '', '/api/product/product/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (20, '订单管理', 0, '/oms', '', 0, 'DollarCircleOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, '/oms', 'Layout', 'el-icon-shopping-cart-full', '/oms/orderList', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (21, '订单设置', 20, '/oms/orderSetting/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'orderSetting', 'oms/order_setting/index', 'el-icon-remove-outline', '', '/api/order/setting/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (22, '退货列表', 20, '/oms/orderReturnApply/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'orderReturnApplyList', 'oms/order_return_apply/index', 'el-icon-remove-outline', '', '/api/order/returnapply/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (23, '退货原因', 20, '/oms/orderReturnReason/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'orderReturnReasonList', 'oms/order_return_reason/index', 'el-icon-remove-outline', '', '/api/order/returnreason/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (24, '订单列表', 20, '/oms/order/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'orderList', 'oms/order/index', 'el-icon-camera', '', '/api/order/order/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (25, '营销管理', 0, '/sms', '', 0, 'AlertOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, '/sms', 'Layout', 'el-icon-cold-drink', '/sms/flashPromotionList', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (26, '秒杀活动', 25, '/sms/flashPromotion/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'flashPromotionList', 'sms/flash_promotion/index', 'el-icon-camera', '', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (27, '品牌推荐', 25, '/sms/homeBrand/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'homeBrandList', 'sms/home_brand/index', 'el-icon-remove-outline', '', '/api/sms/homebrand/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (28, '新品推荐', 25, '/sms/homeNewProduct/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'homeNewProductList', 'sms/home_new_product/index', 'el-icon-remove-outline', '', '/api/sms/homenewproduct/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (29, '人气推荐', 25, '/sms/homeRecommendProduct/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'homeRecommendProductList', 'sms/home_recommend_product/index', 'el-icon-remove-outline', '', '/api/sms/homerecommendproduct/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (30, '专题推荐', 25, '/sms/homeRecommendSubject/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'homeRecommendSubjectList', 'sms/home_recommend_subject/index', 'el-icon-remove-outline', '', '/api/sms/homerecommendsubject/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (31, '广告列表', 25, '/sms/homeAdvertise/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'homeAdvertiseList', 'sms/home_advertise/index', 'el-icon-remove-outline', '', '/api/sms/homeadvertise/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (32, '优惠券', 25, '/sms/coupon/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'couponList', 'sms/coupon/index', 'el-icon-remove-outline', '', '/api/sms/coupon/list');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect, background_url) VALUES (33, '职位列表', 2, '/system/job/list', '', 1, '', 6, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'jobList', 'system/job/index', 'el-icon-delete-location', '', '/api/sys/job/list');

create table sys_role
(
    id               bigint auto_increment comment '编号'
        primary key,
    name             varchar(100)                        null comment '角色名称',
    remark           varchar(100)                        null comment '备注',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常',
    status         bigint   default 1                null comment '状态  1:启用,0:禁用'
)
    comment '角色管理';

INSERT INTO gozero.sys_role (id, name, remark, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (1, 'admin', '超级管理员', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 19:07:18', 0);
INSERT INTO gozero.sys_role (id, name, remark, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (2, 'mng', '项目经理', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 11:39:28', 0);
INSERT INTO gozero.sys_role (id, name, remark, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (3, 'dev', '开发人员', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 11:39:28', 0);
INSERT INTO gozero.sys_role (id, name, remark, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (4, 'test', '测试人员', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 11:11:11', 0);
INSERT INTO gozero.sys_role (id, name, remark, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (5, 'demo', '1', 'admin', '2020-11-26 14:52:20', 'admin', '2020-11-26 14:50:18', 0);
INSERT INTO gozero.sys_role (id, name, remark, create_by, create_time, last_update_by, last_update_time, del_flag) VALUES (6, '1', '1', 'admin', '2020-11-26 15:35:42', 'admin', '2020-11-26 15:01:45', 0);

create table sys_role_dept
(
    id               bigint auto_increment comment '编号'
        primary key,
    role_id          bigint                              null comment '角色ID',
    dept_id          bigint                              null comment '机构ID',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间'
)
    comment '角色机构';

INSERT INTO gozero.sys_role_dept (id, role_id, dept_id, create_by, create_time, last_update_by, last_update_time) VALUES (1, 1, 1, 'admin', '2019-01-11 08:30:37', 'admin', '2019-01-11 08:30:25');
INSERT INTO gozero.sys_role_dept (id, role_id, dept_id, create_by, create_time, last_update_by, last_update_time) VALUES (2, 2, 2, 'admin', '2019-01-11 08:31:01', 'admin', '2019-01-11 08:31:04');
INSERT INTO gozero.sys_role_dept (id, role_id, dept_id, create_by, create_time, last_update_by, last_update_time) VALUES (3, 3, 3, 'admin', '2019-01-11 08:31:18', 'admin', '2019-01-11 08:31:21');

create table sys_role_menu
(
    id               bigint auto_increment comment '编号'
        primary key,
    role_id          bigint                              null comment '角色ID',
    menu_id          bigint                              null comment '菜单ID',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间'
)
    comment '角色菜单';

INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (638, 1, 1, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:44');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (639, 1, 2, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:44');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (640, 1, 3, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:44');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (641, 1, 4, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (642, 1, 5, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (643, 1, 6, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (644, 1, 7, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (645, 1, 8, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (646, 1, 9, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');
INSERT INTO gozero.sys_role_menu (id, role_id, menu_id, create_by, create_time, last_update_by, last_update_time) VALUES (647, 1, 10, 'admin', '2021-03-07 18:36:44', 'admin', '2021-03-07 18:36:45');

create table sys_user
(
    id               bigint auto_increment comment '编号'
        primary key,
    name             varchar(50)                         not null comment '用户名',
    nick_name        varchar(150)                        null comment '昵称',
    avatar           varchar(150)                        null comment '头像',
    password         varchar(100)                        null comment '密码',
    salt             varchar(40)                         null comment '加密盐',
    email            varchar(100)                        null comment '邮箱',
    mobile           varchar(100)                        null comment '手机号',
    status           tinyint                             null comment '状态  0：禁用   1：正常',
    dept_id          bigint                              null comment '机构ID',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常',
    job_id           int                                 null comment '岗位Id',
    constraint name
        unique (name)
)
    comment '用户管理';

INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (1, 'admin', '超管', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'admin@qq.com', '13612345678', 1, 4, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (22, 'liubei', '刘备', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 7, 'admin', '2018-09-23 19:43:00', 'admin', '2019-01-10 11:41:13', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (23, 'zhaoyun', '赵云', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 7, 'admin', '2018-09-23 19:43:44', 'admin', '2018-09-23 19:43:52', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (24, 'zhugeliang', '诸葛亮', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 7, 11, 'admin', '2018-09-23 19:44:23', 'admin', '2018-09-23 19:44:29', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (25, 'caocao', '曹操', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 8, 'admin', '2018-09-23 19:45:32', 'admin', '2019-01-10 17:59:14', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (26, 'dianwei', '典韦', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 10, 'admin', '2018-09-23 19:45:48', 'admin', '2018-09-23 19:45:57', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (27, 'xiahoudun', '夏侯惇', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 8, 'admin', '2018-09-23 19:46:09', 'admin', '2018-09-23 19:46:17', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (28, 'xunyu', '荀彧', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 10, 'admin', '2018-09-23 19:46:38', 'admin', '2018-11-04 15:33:17', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (29, 'sunquan', '孙权', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 10, 'admin', '2018-09-23 19:46:54', 'admin', '2018-09-23 19:47:03', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (30, 'zhouyu', '周瑜', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 11, 'admin', '2018-09-23 19:47:28', 'admin', '2018-09-23 19:48:04', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (31, 'luxun', '陆逊', '', '123456', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', 1, 11, 'admin', '2018-09-23 19:47:44', 'admin', '2018-09-23 19:47:58', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (32, 'huanggai', '黄盖', '', '', '', 'test@qq.com', '13889700023', 1, 11, '', '2018-09-23 19:48:38', 'admin', '2021-04-03 15:43:52', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (33, '1', '1', '', '123456', '123456', '1', '1', 1, 2, 'admin', '2021-04-26 17:57:50', 'admin', '2021-04-26 17:57:50', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (35, '12', '1', '', '123456', '123456', '1', '1', 1, 2, 'admin', '2021-04-26 18:01:53', 'admin', '2021-04-26 18:01:54', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (36, '12313', '12', '', '123456', '123456', '1', '1', 1, 2, 'admin', '2021-04-26 18:03:07', 'admin', '2021-04-26 18:03:07', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (37, '324', '1', '', '123456', '123456', '1', '1', 1, 3, 'admin', '2021-04-26 18:07:31', 'admin', '2021-04-26 18:07:32', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (38, 'aa', 'aa', '', '123456', '123456', 'a', 'a', 1, 7, 'admin', '2021-04-27 11:24:14', 'admin', '2021-04-27 11:24:14', 0, 4);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (39, '133', '133', '', '', '', '1121', '1', 1, 2, 'admin', '2021-04-27 12:30:15', 'admin', '2021-04-27 13:53:40', 0, 1);
INSERT INTO gozero.sys_user (id, name, nick_name, avatar, password, salt, email, mobile, status, dept_id, create_by, create_time, last_update_by, last_update_time, del_flag, job_id) VALUES (40, 'liu', 'liu', '', '123456', '123456', '1002219331@qq.com', '18613030352', 1, 8, 'admin', '2021-04-27 13:47:42', 'admin', '2021-04-27 13:47:42', 0, 4);

create table sys_user_role
(
    id               bigint auto_increment comment '编号'
        primary key,
    user_id          bigint      null comment '用户ID',
    role_id          bigint      null comment '角色ID',
    create_by        varchar(50) null comment '创建人',
    create_time      datetime    null comment '创建时间',
    last_update_by   varchar(50) null comment '更新人',
    last_update_time datetime    null comment '更新时间'
)
    comment '用户角色';

INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (1, 1, 1, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (2, 2, 1, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (26, 5, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (33, 6, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (34, 4, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (35, 9, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (36, 10, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (37, 11, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (38, 12, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (39, 15, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (41, 16, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (42, 8, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (43, 7, 4, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (45, 18, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (46, 17, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (47, 3, 4, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (48, 21, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (57, 31, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (58, 30, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (59, 32, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (73, 33, 8, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (74, 25, 8, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (75, 25, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (80, 22, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (81, 23, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (82, 24, 4, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (83, 26, 3, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (85, 29, 2, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (86, 28, 4, null, null, null, null);
INSERT INTO gozero.sys_user_role (id, user_id, role_id, create_by, create_time, last_update_by, last_update_time) VALUES (87, 27, 3, null, null, null, null);

create table ums_growth_change_history
(
    id           bigint auto_increment
        primary key,
    member_id    bigint       null,
    create_time  datetime     null,
    change_type  int(1)       null comment '改变类型：0->增加；1->减少',
    change_count int          null comment '积分改变数量',
    operate_man  varchar(100) null comment '操作人员',
    operate_note varchar(200) null comment '操作备注',
    source_type  int(1)       null comment '积分来源：0->购物；1->管理员修改'
)
    comment '成长值变化历史记录表';

INSERT INTO gozero.ums_growth_change_history (id, member_id, create_time, change_type, change_count, operate_man, operate_note, source_type) VALUES (1, 1, '2018-08-29 17:16:35', 0, 1000, 'test', '测试使用', 1);

create table ums_integration_change_history
(
    id           bigint auto_increment
        primary key,
    member_id    bigint       null,
    create_time  datetime     null,
    change_type  int(1)       null comment '改变类型：0->增加；1->减少',
    change_count int          null comment '积分改变数量',
    operate_man  varchar(100) null comment '操作人员',
    operate_note varchar(200) null comment '操作备注',
    source_type  int(1)       null comment '积分来源：0->购物；1->管理员修改'
)
    comment '积分变化历史记录表';

create table ums_integration_consume_setting
(
    id                    bigint auto_increment
        primary key,
    deduction_per_amount  int    null comment '每一元需要抵扣的积分数量',
    max_percent_per_order int    null comment '每笔订单最高抵用百分比',
    use_unit              int    null comment '每次使用积分最小单位100',
    coupon_status         int(1) null comment '是否可以和优惠券同用；0->不可以；1->可以'
)
    comment '积分消费设置';

INSERT INTO gozero.ums_integration_consume_setting (id, deduction_per_amount, max_percent_per_order, use_unit, coupon_status) VALUES (1, 100, 50, 100, 1);

create table ums_member
(
    id                     bigint auto_increment
        primary key,
    member_level_id        bigint       null,
    username               varchar(64)  null comment '用户名',
    password               varchar(64)  null comment '密码',
    nickname               varchar(64)  null comment '昵称',
    phone                  varchar(64)  null comment '手机号码',
    status                 int(1)       null comment '帐号启用状态:0->禁用；1->启用',
    create_time            datetime     null comment '注册时间',
    icon                   varchar(500) null comment '头像',
    gender                 int(1)       null comment '性别：0->未知；1->男；2->女',
    birthday               date         null comment '生日',
    city                   varchar(64)  null comment '所做城市',
    job                    varchar(100) null comment '职业',
    personalized_signature varchar(200) null comment '个性签名',
    source_type            int(1)       null comment '用户来源',
    integration            int          null comment '积分',
    growth                 int          null comment '成长值',
    luckey_count           int          null comment '剩余抽奖次数',
    history_integration    int          null comment '历史积分数量',
    constraint idx_phone
        unique (phone),
    constraint idx_username
        unique (username)
)
    comment '会员表';

INSERT INTO gozero.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (11, 4, 'zhangsan', '123456', 'zhangsan', '18613030352', 1, '2021-03-16 20:40:55', '', 1, '2021-03-16', '深圳', 'go开发', 'test', 1, 100, 20, 1000, 1000);

create table ums_member_level
(
    id                      bigint auto_increment
        primary key,
    name                    varchar(100)   null,
    growth_point            int            null,
    default_status          int(1)         null comment '是否为默认等级：0->不是；1->是',
    free_freight_point      decimal(10, 2) null comment '免运费标准',
    comment_growth_point    int            null comment '每次评价获取的成长值',
    priviledge_free_freight int(1)         null comment '是否有免邮特权',
    priviledge_sign_in      int(1)         null comment '是否有签到特权',
    priviledge_comment      int(1)         null comment '是否有评论获奖励特权',
    priviledge_promotion    int(1)         null comment '是否有专享活动特权',
    priviledge_member_price int(1)         null comment '是否有会员价格特权',
    priviledge_birthday     int(1)         null comment '是否有生日特权',
    note                    varchar(200)   null
)
    comment '会员等级表';

INSERT INTO gozero.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (1, '黄金会员', 1000, 0, 199.00, 5, 1, 1, 1, 1, 1, 1, 'remarks');
INSERT INTO gozero.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (2, '白金会员', 5000, 0, 99.00, 10, 1, 1, 1, 1, 1, 1, 'remarks');
INSERT INTO gozero.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (3, '钻石会员', 15000, 0, 69.00, 15, 1, 1, 1, 1, 1, 1, 'remarks');
INSERT INTO gozero.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (4, '普通会员', 1, 1, 199.00, 20, 1, 1, 1, 1, 0, 0, 'remarks');

create table ums_member_login_log
(
    id          bigint auto_increment
        primary key,
    member_id   bigint      null,
    create_time datetime    null,
    ip          varchar(64) null,
    city        varchar(64) null,
    login_type  int(1)      null comment '登录类型：0->PC；1->android;2->ios;3->小程序',
    province    varchar(64) null
)
    comment '会员登录记录';

create table ums_member_member_tag_relation
(
    id        bigint auto_increment
        primary key,
    member_id bigint null,
    tag_id    bigint null
)
    comment '用户和标签关系表';

create table ums_member_product_category_relation
(
    id                  bigint auto_increment
        primary key,
    member_id           bigint null,
    product_category_id bigint null
)
    comment '会员与产品分类关系表（用户喜欢的分类）';

create table ums_member_receive_address
(
    id             bigint auto_increment
        primary key,
    member_id      bigint       null,
    name           varchar(100) null comment '收货人名称',
    phone_number   varchar(64)  null,
    default_status int(1)       null comment '是否为默认',
    post_code      varchar(100) null comment '邮政编码',
    province       varchar(100) null comment '省份/直辖市',
    city           varchar(100) null comment '城市',
    region         varchar(100) null comment '区',
    detail_address varchar(128) null comment '详细地址(街道)'
)
    comment '会员收货地址表';

INSERT INTO gozero.ums_member_receive_address (id, member_id, name, phone_number, default_status, post_code, province, city, region, detail_address) VALUES (1, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO gozero.ums_member_receive_address (id, member_id, name, phone_number, default_status, post_code, province, city, region, detail_address) VALUES (3, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '福田区', '清水河街道');
INSERT INTO gozero.ums_member_receive_address (id, member_id, name, phone_number, default_status, post_code, province, city, region, detail_address) VALUES (4, 1, '大梨', '18033441849', 1, '518000', '广东省', '深圳市', '福田区', '东晓街道');

create table ums_member_rule_setting
(
    id                  bigint auto_increment
        primary key,
    continue_sign_day   int            null comment '连续签到天数',
    continue_sign_point int            null comment '连续签到赠送数量',
    consume_per_point   decimal(10, 2) null comment '每消费多少元获取1个点',
    low_order_amount    decimal(10, 2) null comment '最低获取点数的订单金额',
    max_point_per_order int            null comment '每笔订单最高获取点数',
    type                int(1)         null comment '类型：0->积分规则；1->成长值规则'
)
    comment '会员积分成长规则表';

create table ums_member_statistics_info
(
    id                    bigint auto_increment
        primary key,
    member_id             bigint         null,
    consume_amount        decimal(10, 2) null comment '累计消费金额',
    order_count           int            null comment '订单数量',
    coupon_count          int            null comment '优惠券数量',
    comment_count         int            null comment '评价数',
    return_order_count    int            null comment '退货数量',
    login_count           int            null comment '登录次数',
    attend_count          int            null comment '关注数量',
    fans_count            int            null comment '粉丝数量',
    collect_product_count int            null,
    collect_subject_count int            null,
    collect_topic_count   int            null,
    collect_comment_count int            null,
    invite_friend_count   int            null,
    recent_order_time     datetime       null comment '最后一次下订单时间'
)
    comment '会员统计信息';

create table ums_member_tag
(
    id                  bigint auto_increment
        primary key,
    name                varchar(100)   null,
    finish_order_count  int            null comment '自动打标签完成订单数量',
    finish_order_amount decimal(10, 2) null comment '自动打标签完成订单金额'
)
    comment '用户标签表';

create table ums_member_task
(
    id           bigint auto_increment
        primary key,
    name         varchar(100) null,
    growth       int          null comment '赠送成长值',
    intergration int          null comment '赠送积分',
    type         int(1)       null comment '任务类型：0->新手任务；1->日常任务'
)
    comment '会员任务表';