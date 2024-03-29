CREATE TABLE `yun_file` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `owner_id` INT(10) UNSIGNED NOT NULL COMMENT '创建人id',
    `name` VARCHAR(64) NOT NULL COMMENT '文件名',
    `size` BIGINT(20) UNSIGNED NOT NULL COMMENT '文件大小',
    `data` BLOB NOT NULL COMMENT '文件数据',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`),
    INDEX `owner_id` (`owner_id`),
    INDEX `idx_name` (`name`),
    CONSTRAINT `file_fk` FOREIGN KEY (`owner_id`) REFERENCES `yun-user`.`user` (`id`)
)
COMMENT = '文件表'
ENGINE = InnoDB
;