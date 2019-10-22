CREATE TABLE `user` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `account` VARCHAR(16) NOT NULL UNIQUE COMMENT '账号',
    `password` VARCHAR(16) NOT NULL COMMENT '密码',
    `name` VARCHAR(16) NOT NULL COMMENT '名称',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`),
    INDEX `idx_name` (`name`)
)
COMMENT = '用户表'
ENGINE = InnoDB
AUTO_INCREMENT = 1000
;