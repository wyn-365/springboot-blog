/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : springbootblog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-03-19 18:52:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('44');
INSERT INTO `hibernate_sequence` VALUES ('44');
INSERT INTO `hibernate_sequence` VALUES ('44');
INSERT INTO `hibernate_sequence` VALUES ('44');
INSERT INTO `hibernate_sequence` VALUES ('44');

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext,
  `create_time` datetime(6) DEFAULT NULL,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK292449gwg5yf7ocdlmswv9w4j` (`type_id`),
  KEY `FK8ky5rrsxh01nkhctmo7d48p82` (`user_id`),
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`),
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('1', '', '', 'SDSDSDSD', '2019-12-25 10:24:05.000000', null, '1', '', '', '', '1', '2019-12-25 10:24:17.000000', '6', '1', '1', null);
INSERT INTO `t_blog` VALUES ('2', '', '', '好解决发过火', '2020-03-02 11:01:39.000000', 'sss', '1', '', '', '', '1', '2020-03-02 11:01:52.000000', '1', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('3', '', '', '1', '2020-03-02 11:02:23.000000', '1', '1', '', '', '', '1', '2020-03-02 11:02:29.000000', '1', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('4', '', '', '1', '2020-03-02 11:02:56.000000', '1', '1', '', '', '', '1', '2020-03-02 11:02:47.000000', '1', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('5', '', '', '1', '2020-03-02 11:03:07.000000', '1', '1', '', '', '', '1', '2020-03-02 11:03:13.000000', '3', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('6', '', '', '1', '2020-03-02 11:03:32.000000', '1', '1', '', '', '', '1', '2020-03-02 11:03:24.000000', '1', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('7', '', '', '1', '2020-03-02 11:06:16.000000', '1', '1', '', '', '', '1', '2020-03-02 11:06:21.000000', '1', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('8', '', '', '1', '2020-03-02 11:06:42.000000', '1', '1', '', '', '', '1', '2020-03-02 11:06:33.000000', '1', '1', '1', '1');
INSERT INTO `t_blog` VALUES ('9', '', '', '1', '2020-03-02 11:06:55.000000', '1', '1', '', '', '', '1', '2020-03-02 11:07:02.000000', '3', '1', '1', '11111');
INSERT INTO `t_blog` VALUES ('10', '', '', '1', '2020-03-02 11:07:23.000000', '1', '1', '', '', '', '1', '2020-03-02 11:07:15.000000', '1', '1', '1', '1121212');
INSERT INTO `t_blog` VALUES ('11', '', '', '1', '2020-03-02 11:07:36.000000', '1', '1', '', '', '', '1', '2020-03-02 11:07:41.000000', '2', '1', '1', '1111');
INSERT INTO `t_blog` VALUES ('12', '', '', '###王一宁', '2019-12-25 10:27:53.060000', 'https://www.baidu.com/s?wd=%e5%9c%a3%e8%af%9e%e8%8a%82&sa=ire_dl_gh_logo&rsv_dl=igh_logo_pcs', '', '', '', '', '王一宁测试', '2019-12-25 10:27:53.060000', '4', '1', '1', '奥术大师大');
INSERT INTO `t_blog` VALUES ('15', '', '', '测试测试', '2019-12-26 08:37:45.873000', 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', '', '', '', '', '大数据计算引擎之Flink Flink CEP复杂事件编程', '2019-12-26 08:37:45.873000', '1', '2', '1', '复杂事件编程（CEP）是一种基于流处理的技术，将系统数据看作不同类型的事件，通过分析事件之间的关系，建立不同的时事件系序列库，并利用过滤、关联、聚合等技术，最终有简单事件产生高级事件，并通过模式规则的方式对重要信息进行跟踪和分析');
INSERT INTO `t_blog` VALUES ('31', '\0', '\0', '1：shuffle write阶段\r\n\r\n主要就是在一个stage结束计算之后，为了下一个stage可以执行shuffle类的算子(比如reduceByKey，groupByKey)，而将每个task处理的数据按key进行“分区”。所谓“分区”，就是对相同的key执行hash算法，从而将相同key都写入同一个磁盘文件中，而每一个磁盘文件都只属于reduce端的stage的一个task。在将数据写入磁盘之前，会先将数据写入内存缓冲中，当内存缓冲填满之后，才会溢写到磁盘文件中去。\r\n\r\n那么每个执行shuffle write的task，要为下一个stage创建多少个磁盘文件呢?很简单，下一个stage的task有多少个，当前stage的每个task就要创建多少份磁盘文件。比如下一个stage总共有100个task，那么当前stage的每个task都要创建100份磁盘文件。如果当前stage有50个task，总共有10个Executor，每个Executor执行5个Task，那么每个Executor上总共就要创建500个磁盘文件，所有Executor上会创建5000个磁盘文件。由此可见，未经优化的shuffle write操作所产生的磁盘文件的数量是极其惊人的。\r\n\r\n2：shuffle read阶段\r\n\r\nshuffle read，通常就是一个stage刚开始时要做的事情。此时该stage的每一个task就需要将上一个stage的计算结果中的所有相同key，从各个节点上通过网络都拉取到自己所在的节点上，然后进行key的聚合或连接等操作。由于shuffle write的过程中，task给Reduce端的stage的每个task都创建了一个磁盘文件，因此shuffle read的过程中，每个task只要从上游stage的所有task所在节点上，拉取属于自己的那一个磁盘文件即可。\r\n\r\nshuffle read的拉取过程是一边拉取一边进行聚合的。每个shuffle read task都会有一个自己的buffer缓冲，每次都只能拉取与buffer缓冲相同大小的数据，然后通过内存中的一个Map进行聚合等操作。聚合完一批数据后，再拉取下一批数据，并放到buffer缓冲中进行聚合操作。以此类推，直到最后将所有数据到拉取完，并得到最终的结果。\r\n\r\n注意：\r\n\r\n1).buffer起到的是缓存作用，缓存能够加速写磁盘，提高计算的效率,buffer的默认大小32k。\r\n\r\n分区器：根据hash/numRedcue取模决定数据由几个Reduce处理，也决定了写入几个buffer中\r\n\r\nblock file：磁盘小文件，从图中我们可以知道磁盘小文件的个数计算公式：\r\n\r\nblock file=M*R\r\n\r\n2).M为map task的数量，R为Reduce的数量，一般Reduce的数量等于buffer的数量，都是由分区器决定的\r\n\r\nHash shuffle普通机制的问题\r\n\r\n1).Shuffle前在磁盘上会产生海量的小文件，建立通信和拉取数据的次数变多,此时会产生大量耗时低效的 IO 操作 (因為产生过多的小文件)\r\n\r\n2).可能导致OOM，大量耗时低效的 IO 操作 ，导致写磁盘时的对象过多，读磁盘时候的对象也过多，这些对象存储在堆内存中，会导致堆内存不足，相应会导致频繁的GC，GC会导致OOM。由于内存中需要保存海量文件操作句柄和临时信息，如果数据处理的规模比较庞大的话，内存不可承受，会出现 OOM 等问题。\r\n\r\n合并机制的Hash shuffle\r\n\r\n合并机制就是复用buffer，开启合并机制的配置是spark.shuffle.consolidateFiles。该参数默认值为false，将其设置为true即可开启优化机制。通常来说，如果我们使用HashShuffleManager，那么都建议开启这个选项。\r\n\\\r\n\r\n这里还是有4个Tasks，数据类别还是分成3种类型，因为Hash算法会根据你的 Key 进行分类，在同一个进程中，无论是有多少过Task，都会把同样的Key放在同一个Buffer里，然后把Buffer中的数据写入以Core数量为单位的本地文件中，(一个Core只有一种类型的Key的数据)，每1个Task所在的进程中，分别写入共同进程中的3份本地文件，这里有4个Mapper Tasks，所以总共输出是 2个Cores x 3个分类文件 = 6个本地小文件。\r\n\r\n图解：\r\n\r\n开启consolidate机制之后，在shuffle write过程中，task就不是为下游stage的每个task创建一个磁盘文件了。此时会出现shuffleFileGroup的概念，每个shuffleFileGroup会对应一批磁盘文件，磁盘文件的数量与下游stage的task数量是相同的。一个Executor上有多少个CPU core，就可以并行执行多少个task。而第一批并行执行的每个task都会创建一个shuffleFileGroup，并将数据写入对应的磁盘文件内。\r\n\r\nExecutor的CPU core执行完一批task，接着执行下一批task时，下一批task就会复用之前已有的shuffleFileGroup，包括其中的磁盘文件。也就是说，此时task会将数据写入已有的磁盘文件中，而不会写入新的磁盘文件中。因此，consolidate机制允许不同的task复用同一批磁盘文件，这样就可以有效将多个task的磁盘文件进行一定程度上的合并，从而大幅度减少磁盘文件的数量，进而提升shuffle write的性能。\r\n\r\n假设第二个stage有100个task，第一个stage有50个task，总共还是有10个Executor，每个Executor执行5个task。那么原本使用未经优化的HashShuffleManager时，每个Executor会产生500个磁盘文件，所有Executor会产生5000个磁盘文件的。但是此时经过优化之后，每个Executor创建的磁盘文件的数量的计算公式为：CPU core的数量 * 下一个stage的task数量。也就是说，每个Executor此时只会创建100个磁盘文件，所有Executor只会创建1000个磁盘文件。\r\n\r\n注意：\r\n\r\n1).启动HashShuffle的合并机制ConsolidatedShuffle的配置:\r\n\r\nspark.shuffle.consolidateFiles=true\r\n\r\n2).block file=Core*R\r\n\r\nCore为CPU的核数，R为Reduce的数量\r\n\r\nHash shuffle合并机制的问题\r\n\r\n如果 Reducer 端的并行任务或者是数据分片过多的话则 Core * Reducer Task 依旧过大，也会产生很多小文件。\r\n\r\nSort shuffle\r\n\r\nSortShuffleManager的运行机制主要分成两种，一种是普通运行机制，另一种是bypass运行机制。当shuffle read task的数量小于等于spark.shuffle.sort.bypassMergeThreshold参数的值时(默认为200)，就会启用bypass机制。\r\n\r\nSort shuffle的普通机制\r\n\r\n图解：\r\n\\\r\n\r\n写入内存数据结构\r\n\r\n该图说明了普通的SortShuffleManager的原理。在该模式下，数据会先写入一个内存数据结构中(默认5M)，此时根据不同的shuffle算子，可能选用不同的数据结构。如果是reduceByKey这种聚合类的shuffle算子，那么会选用Map数据结构，一边通过Map进行聚合，一边写入内存;如果是join这种普通的shuffle算子，那么会选用Array数据结构，直接写入内存。接着，每写一条数据进入内存数据结构之后，就会判断一下，是否达到了某个临界阈值。如果达到临界阈值的话，那么就会尝试将内存数据结构中的数据溢写到磁盘，然后清空内存数据结构。\r\n\r\n注意：\r\n\r\nshuffle中的定时器：定时器会检查内存数据结构的大小，如果内存数据结构空间不够，那么会申请额外的内存，申请的大小满足如下公式：\r\n\r\napplyMemory=nowMenory*2-oldMemory\r\n\r\n申请的内存=当前的内存情况*2-上一次的内嵌情况\r\n\r\n意思就是说内存数据结构的大小的动态变化，如果存储的数据超出内存数据结构的大小，将申请内存数据结构存储的数据*2-内存数据结构的设定值的内存大小空间。申请到了，内存数据结构的大小变大，内存不够，申请不到，则发生溢写\r\n\r\n排序\r\n\r\n在溢写到磁盘文件之前，会先根据key对内存数据结构中已有的数据进行排序。\r\n\r\n溢写\r\n\r\n排序过后，会分批将数据写入磁盘文件。默认的batch数量是10000条，也就是说，排序好的数据，会以每批1万条数据的形式分批写入磁盘文件。写入磁盘文件是通过Java的BufferedOutputStream实现的。BufferedOutputStream是Java的缓冲输出流，首先会将数据缓冲在内存中，当内存缓冲满溢之后再一次写入磁盘文件中，这样可以减少磁盘IO次数，提升性能。\r\n\r\nmerge\r\n\r\n一个task将所有数据写入内存数据结构的过程中，会发生多次磁盘溢写操作，也就会产生多个临时文件。最后会将之前所有的临时磁盘文件都进行合并，这就是merge过程，此时会将之前所有临时磁盘文件中的数据读取出来，然后依次写入最终的磁盘文件之中。此外，由于一个task就只对应一个磁盘文件，也就意味着该task为Reduce端的stage的task准备的数据都在这一个文件中，因此还会单独写一份索引文件，其中标识了下游各个task的数据在文件中的start offset与end offset。\r\n\r\nSortShuffleManager由于有一个磁盘文件merge的过程，因此大大减少了文件数量。比如第一个stage有50个task，总共有10个Executor，每个Executor执行5个task，而第二个stage有100个task。由于每个task最终只有一个磁盘文件，因此此时每个Executor上只有5个磁盘文件，所有Executor只有50个磁盘文件。\r\n\r\n注意：\r\n\r\n1)block file= 2M\r\n\r\n一个map task会产生一个索引文件和一个数据大文件\r\n\r\n2) m*r>2m(r>2)：SortShuffle会使得磁盘小文件的个数再次的减少\r\n\r\nSort shuffle的bypass机制\r\n\\\r\n\r\nbypass运行机制的触发条件如下：\r\n\r\n1)shuffle map task数量小于spark.shuffle.sort.bypassMergeThreshold参数的值。\r\n\r\n2)不是聚合类的shuffle算子(比如reduceByKey)。\r\n\r\n此时task会为每个reduce端的task都创建一个临时磁盘文件，并将数据按key进行hash然后根据key的hash值，将key写入对应的磁盘文件之中。当然，写入磁盘文件时也是先写入内存缓冲，缓冲写满之后再溢写到磁盘文件的。最后，同样会将所有临时磁盘文件都合并成一个磁盘文件，并创建一个单独的索引文件。\r\n\r\n该过程的磁盘写机制其实跟未经优化的HashShuffleManager是一模一样的，因为都要创建数量惊人的磁盘文件，只是在最后会做一个磁盘文件的合并而已。因此少量的最终磁盘文件，也让该机制相对未经优化的HashShuffleManager来说，shuffle read的性能会更好。\r\n\r\n而该机制与普通SortShuffleManager运行机制的不同在于：\r\n\r\n第一，磁盘写机制不同;\r\n\r\n第二，不会进行排序。也就是说，启用该机制的最大好处在于，shuffle write过程中，不需要进行数据的排序操作，也就节省掉了这部分的性能开销。\r\n\r\n总结：\r\n\r\nShuffle 过程本质上都是将 Map 端获得的数据使用分区器进行划分，并将数据发送给对应的 Reducer 的过程。\r\n\r\nshuffle作为处理连接map端和reduce端的枢纽，其shuffle的性能高低直接影响了整个程序的性能和吞吐量。map端的shuffle一般为shuffle的Write阶段，reduce端的shuffle一般为shuffle的read阶段。Hadoop和spark的shuffle在实现上面存在很大的不同，spark的shuffle分为两种实现，分别为HashShuffle和SortShuffle，\r\n\r\nHashShuffle又分为普通机制和合并机制，普通机制因为其会产生M*R个数的巨量磁盘小文件而产生大量性能低下的Io操作，从而性能较低，因为其巨量的磁盘小文件还可能导致OOM，HashShuffle的合并机制通过重复利用buffer从而将磁盘小文件的数量降低到Core*R个，但是当Reducer 端的并行任务或者是数据分片过多的时候，依然会产生大量的磁盘小文件。\r\n\r\nSortShuffle也分为普通机制和bypass机制，普通机制在内存数据结构(默认为5M)完成排序，会产生2M个磁盘小文件。而当shuffle map task数量小于spark.shuffle.sort.bypassMergeThreshold参数的值。或者算子不是聚合类的shuffle算子(比如reduceByKey)的时候会触发SortShuffle的bypass机制，SortShuffle的bypass机制不会进行排序，极大的提高了其性能\r\n\r\n在Spark 1.2以前，默认的shuffle计算引擎是HashShuffleManager，因为HashShuffleManager会产生大量的磁盘小文件而性能低下，在Spark 1.2以后的版本中，默认的ShuffleManager改成了SortShuffleManager。SortShuffleManager相较于HashShuffleManager来说，有了一定的改进。主要就在于，每个Task在进行shuffle操作时，虽然也会产生较多的临时磁盘文件，但是最后会将所有的临时文件合并(merge)成一个磁盘文件，因此每个Task就只有一个磁盘文件。在下一个stage的shuffle read task拉取自己的数据时，只要根据索引读取每个磁盘文件中的部分数据即可。', '2019-12-26 08:45:10.094000', 'https://www.2cto.com/uploadfile/Collfiles/20171206/20171206093241330.png', '', '', '\0', '\0', 'Spark中的Spark Shuffle详解', '2019-12-26 08:45:10.094000', '2', '2', '1', 'Shuffle描述着数据从map task输出到reduce task输入的这段过程。shuffle是连接Map和Reduce之间的桥梁，Map的输出要用到Reduce中必须经过shuffle这个环节，shuffle的性能高低直接影响了整个程序的性能和吞吐量。因为在分布式情况下，reduce task需要跨节点去拉取其它节点上的map task结果。这一过程将会产生网络资源消耗和内存，磁盘IO的消');
INSERT INTO `t_blog` VALUES ('32', '', '', ' spark三种连接join\r\n\r\n本文主要介绍spark join相关操作。\r\n\r\n讲述spark连接相关的三个方法join，left-outer-join，right-outer-join，在这之前，我们用hiveSQL先跑出了结果以方便进行对比。\r\n\r\n我们以实例来进行说明。我的实现步骤记录如下。\r\n\r\n \r\n\r\n1、数据准备\r\n\r\n2、HSQL描述\r\n\r\n3、Spark描述\r\n\r\n \r\n\r\n1、数据准备\r\n\r\n我们准备两张Hive表，分别是orders（订单表）和drivers（司机表），通过driver_id字段进行关联。数据如下：\r\n\r\norders\r\n\r\norders表有两个字段，订单id:order_id和司机id:driver_id。司机id将作为连接键。\r\n\r\n通过select可以看到三条数据。\r\n复制代码\r\n\r\nhive (gulfstream_test)> select * from orders;\r\nOK\r\norders.order_id orders.driver_id\r\n1000    5000\r\n1001    5001\r\n1002    5002\r\nTime taken: 0.387 seconds, Fetched: 3 row(s)\r\n\r\n复制代码\r\n\r\n \r\n\r\ndrivers\r\n\r\ndrivers表由两个字段，司机id：driver_id和车辆id：car_id。司机id将作为连接键。\r\n\r\n通过select可以看到两条数据。\r\n\r\nhive (gulfstream_test)> select * from drivers;\r\nOK\r\ndrivers.driver_id       drivers.car_id\r\n5000    100\r\n5003    103\r\nTime taken: 0.036 seconds, Fetched: 2 row(s)\r\n\r\n \r\n\r\n \r\n\r\n2、HSQL描述\r\n\r\nJOIN\r\n\r\n自然连接，输出连接键匹配的记录。\r\n\r\n可以看到，通过driver_id匹配的数据只有一条。\r\n\r\nhive (gulfstream_test)> select * from orders t1 join drivers t2 on (t1.driver_id = t2.driver_id) ;\r\nOK\r\nt1.order_id     t1.driver_id    t2.driver_id    t2.car_id\r\n1000    5000    5000    100\r\nTime taken: 36.079 seconds, Fetched: 1 row(s)\r\n\r\n \r\n\r\nLEFT OUTER JOIN\r\n\r\n左外链接，输出连接键匹配的记录，左侧的表无论匹配与否都输出。\r\n\r\n可以看到，通过driver_id匹配的数据只有一条，不过所有orders表中的记录都被输出了，drivers中未能匹配的字段被置为空。\r\n复制代码\r\n\r\nhive (gulfstream_test)> select * from orders t1 left outer join drivers t2 on (t1.driver_id = t2.driver_id) ;\r\nOK\r\nt1.order_id     t1.driver_id    t2.driver_id    t2.car_id\r\n1000    5000    5000    100\r\n1001    5001    NULL    NULL\r\n1002    5002    NULL    NULL\r\nTime taken: 36.063 seconds, Fetched: 3 row(s)\r\n\r\n复制代码\r\n\r\n \r\n\r\nRIGHT OUTER JOIN\r\n\r\n右外连接，输出连接键匹配的记录，右侧的表无论匹配与否都输出。\r\n\r\n可以看到，通过driver_id匹配的数据只有一条，不过所有drivers表中的记录都被输出了，orders中未能匹配的字段被置为空。\r\n\r\nhive (gulfstream_test)> select * from orders t1 right outer join drivers t2 on (t1.driver_id = t2.driver_id) ;\r\nOK\r\nt1.order_id     t1.driver_id    t2.driver_id    t2.car_id\r\n1000    5000    5000    100\r\nNULL    NULL    5003    103\r\nTime taken: 30.089 seconds, Fetched: 2 row(s)\r\n\r\n \r\n\r\n \r\n\r\n3、Spark描述\r\n\r\nspark实现join的方式也是通过RDD的算子，spark同样提供了三个算子join，leftOuterJoin，rightOuterJoin。\r\n\r\n在下面给出的例子中，我们通过spark-hive读取了Hive中orders表和drivers表中的数据，这时候数据的表现形式是DataFrame，如果要使用Join操作：\r\n\r\n1）首先需要先将DataFrame转化成了JavaRDD。\r\n\r\n2）不过，JavaRDD其实是没有join算子的，下面还需要通过mapToPair算子将JavaRDD转换成JavaPairRDD，这样就可以使用Join了。 \r\n\r\n下面例子中给出了三种join操作的实现方式，在join之后，通过collect()函数把数据拉到Driver端本地，并通过标准输出打印。\r\n\r\n需要指出的是\r\n\r\n1）join算子（join，leftOuterJoin，rightOuterJoin）只能通过PairRDD使用；\r\n\r\n2）join算子操作的Tuple2<Object1, Object2>类型中，Object1是连接键，我只试过Integer和String，Object2比较灵活，甚至可以是整个Row。\r\n\r\n这里我们使用driver_id作为连接键。 所以在输出Tuple2的时候，我们将driver_id放在了前面。\r\n\r\n \r\n\r\nJoin.java\r\n复制代码\r\n\r\n/*\r\n*   spark-submit --queue=root.zhiliangbu_prod_datamonitor spark-join-1.0-SNAPSHOT-jar-with-dependencies.jar\r\n* */\r\npublic class Join implements Serializable {\r\n\r\n    private transient JavaSparkContext javaSparkContext;\r\n    private transient HiveContext hiveContext;\r\n\r\n    /*\r\n    *   初始化Load\r\n    *   创建sparkContext, sqlContext, hiveContext\r\n    * */\r\n    public Join() {\r\n        initSparckContext();\r\n        initHiveContext();\r\n    }\r\n\r\n    /*\r\n    *   创建sparkContext\r\n    * */\r\n    private void initSparckContext() {\r\n        String warehouseLocation = System.getProperty(\"user.dir\");\r\n        SparkConf sparkConf = new SparkConf()\r\n                .setAppName(\"spark-join\")\r\n                .set(\"spark.sql.warehouse.dir\", warehouseLocation)\r\n                .setMaster(\"yarn-client\");\r\n        javaSparkContext = new JavaSparkContext(sparkConf);\r\n    }\r\n\r\n    /*\r\n    *   创建hiveContext\r\n    *   用于读取Hive中的数据\r\n    * */\r\n    private void initHiveContext() {\r\n        hiveContext = new HiveContext(javaSparkContext);\r\n    }\r\n\r\n\r\n    public void join() {\r\n        /*\r\n        *   生成rdd1\r\n        * */\r\n        String query1 = \"select * from gulfstream_test.orders\";\r\n        DataFrame rows1 = hiveContext.sql(query1).select(\"order_id\", \"driver_id\");\r\n        JavaPairRDD<String, String> rdd1 = rows1.toJavaRDD().mapToPair(new PairFunction<Row, String, String>() {\r\n            @Override\r\n            public Tuple2<String, String> call(Row row) throws Exception {\r\n                String orderId = (String)row.get(0);\r\n                String driverId = (String)row.get(1);\r\n                return new Tuple2<String, String>(driverId, orderId);\r\n            }\r\n        });\r\n        /*\r\n        *   生成rdd2\r\n        * */\r\n        String query2 = \"select * from gulfstream_test.drivers\";\r\n        DataFrame rows2 = hiveContext.sql(query2).select(\"driver_id\", \"car_id\");\r\n        JavaPairRDD<String, String> rdd2 = rows2.toJavaRDD().mapToPair(new PairFunction<Row, String, String>() {\r\n            @Override\r\n            public Tuple2<String, String> call(Row row) throws Exception {\r\n                String driverId = (String)row.get(0);\r\n                String carId = (String)row.get(1);\r\n                return new Tuple2<String, String>(driverId, carId);\r\n            }\r\n        });\r\n        /*\r\n        *   join\r\n        * */\r\n        System.out.println(\" ****************** join *******************\");\r\n        JavaPairRDD<String, Tuple2<String, String>> joinRdd = rdd1.join(rdd2);\r\n        Iterator<Tuple2<String, Tuple2<String, String>>> it1 = joinRdd.collect().iterator();\r\n        while (it1.hasNext()) {\r\n            Tuple2<String, Tuple2<String, String>> item = it1.next();\r\n            System.out.println(\"driver_id:\" + item._1 + \", order_id:\" + item._2._1 + \", car_id:\" + item._2._2 );\r\n        }\r\n\r\n        /*\r\n        *   leftOuterJoin\r\n        * */\r\n        System.out.println(\" ****************** leftOuterJoin *******************\");\r\n        JavaPairRDD<String, Tuple2<String, Optional<String>>> leftOuterJoinRdd = rdd1.leftOuterJoin(rdd2);\r\n        Iterator<Tuple2<String, Tuple2<String, Optional<String>>>> it2 = leftOuterJoinRdd.collect().iterator();\r\n        while (it2.hasNext()) {\r\n            Tuple2<String, Tuple2<String, Optional<String>>> item = it2.next();\r\n            System.out.println(\"driver_id:\" + item._1 + \", order_id:\" + item._2._1 + \", car_id:\" + item._2._2 );\r\n        }\r\n\r\n        /*\r\n        *   rightOuterJoin\r\n        * */\r\n        System.out.println(\" ****************** rightOuterJoin *******************\");\r\n        JavaPairRDD<String, Tuple2<Optional<String>, String>> rightOuterJoinRdd = rdd1.rightOuterJoin(rdd2);\r\n        Iterator<Tuple2<String, Tuple2<Optional<String>, String>>> it3 = rightOuterJoinRdd.collect().iterator();\r\n        while (it3.hasNext()) {\r\n            Tuple2<String, Tuple2<Optional<String>, String>> item = it3.next();\r\n            System.out.println(\"driver_id:\" + item._1 + \", order_id:\" + item._2._1 + \", car_id:\" + item._2._2 );\r\n        }\r\n    }\r\n\r\n    public static void main(String[] args) {\r\n        Join sj = new Join();\r\n        sj.join();\r\n    }\r\n\r\n}\r\n\r\n复制代码\r\n\r\n \r\n\r\n执行结果\r\n\r\n其中Optional.absent()表示的就是null，可以看到和HSQL是一致的。\r\n复制代码\r\n复制代码\r\n\r\nApplication ID is application_1508228032068_2746260, trackingURL: http://10.93.21.21:4040\r\n ****************** join *******************\r\ndriver_id:5000, order_id:1000, car_id:100                                       \r\n ****************** leftOuterJoin *******************\r\ndriver_id:5001, order_id:1001, car_id:Optional.absent()\r\ndriver_id:5002, order_id:1002, car_id:Optional.absent()\r\ndriver_id:5000, order_id:1000, car_id:Optional.of(100)\r\n ****************** rightOuterJoin *******************\r\ndriver_id:5003, order_id:Optional.absent(), car_id:103\r\ndriver_id:5000, order_id:Optional.of(1000), car_id:100\r\n\r\n复制代码\r\n复制代码\r\n\r\n由于数据量不大，我没有从执行效率上进行考量。\r\n\r\n根据经验，一般在数据量较大的情况下，HSQL的执行效率会高一些，如果数据量较小，Spark会快', '2019-12-26 08:49:33.367000', 'http://g.hiphotos.baidu.com/zhidao/pic/item/c83d70cf3bc79f3d6e7bf85db8a1cd11738b29c0.jpg', '', '', '', '', ' spark三种连接join', '2019-12-26 08:49:33.367000', '4', '2', '1', '讲述spark连接相关的三个方法join，left-outer-join，right-outer-join，在这之前，我们用hiveSQL先跑出了结果以方便进行对比。\r\n\r\n我们以实例来进行说明。我的实现步骤记录如下。');
INSERT INTO `t_blog` VALUES ('34', '\0', '', '#王一宁\r\n##王一宁\r\n###王一宁宁给她', null, 'sda', '', '\0', '', '\0', '王颖滚', '2020-03-04 13:19:12.267000', '2', '1', '1', '万一宁真的帅爱泽泽');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  KEY `FK5feau0gb4lq47fdb03uboswm8` (`tags_id`),
  KEY `FKh4pacwjwofrugxa9hpwaxg6mr` (`blogs_id`),
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`),
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES ('1', '1');
INSERT INTO `t_blog_tags` VALUES ('12', '1');
INSERT INTO `t_blog_tags` VALUES ('15', '1');
INSERT INTO `t_blog_tags` VALUES ('31', '1');
INSERT INTO `t_blog_tags` VALUES ('31', '25');
INSERT INTO `t_blog_tags` VALUES ('31', '27');
INSERT INTO `t_blog_tags` VALUES ('31', '28');
INSERT INTO `t_blog_tags` VALUES ('32', '25');
INSERT INTO `t_blog_tags` VALUES ('32', '26');
INSERT INTO `t_blog_tags` VALUES ('32', '27');
INSERT INTO `t_blog_tags` VALUES ('34', '1');
INSERT INTO `t_blog_tags` VALUES ('34', '24');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke3uogd04j4jx316m1p51e05u` (`blog_id`),
  KEY `FK4jj284r3pb7japogvo6h72q95` (`parent_comment_id`),
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`),
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('33', null, '测试-', '2019-12-26 08:50:34.774000', 'wyn-365@163.com', '吾皇万岁', '32', null, '');
INSERT INTO `t_comment` VALUES ('35', '/images/avatar.png', '你的信息不错啊', '2020-03-03 12:55:31.975000', 'wyn_365@163.com', '万一宁', '5', null, '\0');
INSERT INTO `t_comment` VALUES ('36', '/images/avatar.png', 'erwer', '2020-03-03 12:56:08.286000', 'wyn_385@163.com', '一宁', '5', '35', '\0');
INSERT INTO `t_comment` VALUES ('37', '/images/avatar.png', '阿达', '2020-03-03 12:57:16.094000', '156773471@qq.com', '胡桂昂', '5', null, '\0');
INSERT INTO `t_comment` VALUES ('38', '/images/avatar.png', 'uyhu', '2020-03-03 12:57:24.539000', '156773471@qq.com', '胡桂昂', '5', null, '\0');
INSERT INTO `t_comment` VALUES ('39', '/images/avatar.png', 'gyihy', '2020-03-03 12:57:48.081000', '156773471@qq.com', 'okookokokoko', '5', null, '\0');
INSERT INTO `t_comment` VALUES ('40', '/images/avatar.png', 'uunininkjnjkn', '2020-03-03 12:58:21.756000', '156773471@qq.com', 'okookokokoko', '5', '37', '\0');
INSERT INTO `t_comment` VALUES ('41', '/images/avatar.png', '15', '2020-03-04 04:05:45.595000', '48@163.com', '48', '9', null, '\0');
INSERT INTO `t_comment` VALUES ('42', '/images/avatar.png', 'sd ', '2020-03-04 04:05:57.130000', '48@163.com', '48', '9', null, '\0');
INSERT INTO `t_comment` VALUES ('43', '/images/avatar.png', 'sdsdsds', '2020-03-04 04:06:01.939000', '48@163.com', '48', '9', null, '\0');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES ('1', 'JAVA');
INSERT INTO `t_tag` VALUES ('24', 'Python');
INSERT INTO `t_tag` VALUES ('25', 'scala');
INSERT INTO `t_tag` VALUES ('26', 'hive');
INSERT INTO `t_tag` VALUES ('27', 'SparkSQL');
INSERT INTO `t_tag` VALUES ('28', '图计算');
INSERT INTO `t_tag` VALUES ('29', '机器学习');
INSERT INTO `t_tag` VALUES ('30', 'HDFS');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '王一您');
INSERT INTO `t_type` VALUES ('2', 'spark');
INSERT INTO `t_type` VALUES ('16', '大数据');
INSERT INTO `t_type` VALUES ('17', 'Hadoop');
INSERT INTO `t_type` VALUES ('18', 'ES');
INSERT INTO `t_type` VALUES ('19', 'Docker');
INSERT INTO `t_type` VALUES ('20', 'Linux');
INSERT INTO `t_type` VALUES ('21', 'NoSQL');
INSERT INTO `t_type` VALUES ('22', '深度学习');
INSERT INTO `t_type` VALUES ('23', '算法');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', null, '2019-12-24 17:13:10.000000', 'wyn-365@163.com', '吾皇万岁', 'e10adc3949ba59abbe56e057f20f883e', '1', '2019-12-24 17:13:42.000000', 'wang');
