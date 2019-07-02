/*
Navicat MySQL Data Transfer

Source Server         : tkgl
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : jspstksjgl70mysql

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2018-06-11 21:44:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for allusers
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `cx` varchar(50) default '教师',
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('2', 'ly', 'ly', '管理员', '2018-01-31 14:02:12');
INSERT INTO `allusers` VALUES ('39', 'bb', 'bb', '教师', '2018-01-31 23:01:11');
INSERT INTO `allusers` VALUES ('40', 'aa', 'aa', '教师', '2018-01-31 23:01:35');

-- ----------------------------
-- Table structure for cj
-- ----------------------------
DROP TABLE IF EXISTS `cj`;
CREATE TABLE `cj` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(255) character set gb2312 default NULL,
  `cj` float default NULL,
  `sjbh` varchar(255) character set gb2312 default NULL,
  `addtime` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cj
-- ----------------------------
INSERT INTO `cj` VALUES ('1', '001', '5', '002', '2018-02-01 22:46:34');
INSERT INTO `cj` VALUES ('2', '001', '0', '002', '2018-02-01 22:47:12');
INSERT INTO `cj` VALUES ('3', '001', '0', '001', '2018-02-01 22:47:27');
INSERT INTO `cj` VALUES ('4', '001', '6', '002', '2018-02-01 22:47:58');
INSERT INTO `cj` VALUES ('5', '001', '3', '002', '2018-02-01 22:48:13');
INSERT INTO `cj` VALUES ('6', '001', '0', '002', '2018-02-01 22:49:32');
INSERT INTO `cj` VALUES ('7', '001', '0', '002', '2018-02-01 22:49:46');
INSERT INTO `cj` VALUES ('8', '001', '20', '002', '2018-02-01 22:51:45');
INSERT INTO `cj` VALUES ('9', '002', '33', '003', '2018-02-01 23:03:28');
INSERT INTO `cj` VALUES ('10', '001', '12', '2', '2018-02-01 20:45:21');
INSERT INTO `cj` VALUES ('11', '001', '12', '2', '2018-03-14 16:05:34');

-- ----------------------------
-- Table structure for kemuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kemuxinxi`;
CREATE TABLE `kemuxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `kemu` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of kemuxinxi
-- ----------------------------
INSERT INTO `kemuxinxi` VALUES ('1', 'C语言', '2018-02-06 14:37:50');
INSERT INTO `kemuxinxi` VALUES ('2', 'C++', '2018-02-06 14:38:03');
INSERT INTO `kemuxinxi` VALUES ('3', 'VB', '2018-02-16 14:38:07');
INSERT INTO `kemuxinxi` VALUES ('4', 'Java', '2018-02-24 16:49:17');

-- ----------------------------
-- Table structure for panduanti
-- ----------------------------
DROP TABLE IF EXISTS `panduanti`;
CREATE TABLE `panduanti` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `kemu` varchar(50) default NULL,
  `shiti` varchar(50) default NULL,
  `nanyichengdu` varchar(50) default NULL,
  `daan` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of panduanti
-- ----------------------------
INSERT INTO `panduanti` VALUES ('1', '001', 'C语言', '变量的数据类型指出了变量在内存中存放的字节数。', '易', '错', '2018-02-28 15:22:42');
INSERT INTO `panduanti` VALUES ('2', '002', 'C语言', '定义变量时，变量的存储类说明符不得省略。 ', '中', '错', '2018-02-28 15:22:52');
INSERT INTO `panduanti` VALUES ('3', '003', 'C语言', '自动类变量与内部静态类变量的作用域和寿命都是相同的。', '难', '错', '2018-02-28 15:23:00');
INSERT INTO `panduanti` VALUES ('4', '004', 'C语言', '自动类变量可以定义在函数体外，这时应加说明符auto。', '中', '错', '2018-02-28 15:23:08');
INSERT INTO `panduanti` VALUES ('5', '005', 'C语言', '外部类变量与外部静态类变量的作用域是相同的。', '易', '错', '2018-02-28 15:23:19');
INSERT INTO `panduanti` VALUES ('6', '006', 'C语言', '变量被定义后是否有默认值与存储类无关，与数据类型有关。', '中', '错', '2018-02-28 15:23:29');
INSERT INTO `panduanti` VALUES ('7', '007', 'C语言', 'break语句只应用于循环体中', '易', '对', '2018-02-28 16:58:30');
INSERT INTO `panduanti` VALUES ('8', '008', 'C语言', 'break和continue的跳转范围不够明确，容易产生问题', '易', '错', '2018-02-24 22:31:12');
INSERT INTO `panduanti` VALUES ('9', '009', 'C语言', 'C语言中非空的基本数据类型包括整型,实型,字符型\r\n整型,实型,字符型\r\n整型,实型,字符型.', '易', '对', '2018-03-15 13:06:23');
INSERT INTO `panduanti` VALUES ('10', '010', 'C语言', ' switch 语句都可以用 if-else if结构实现 ', '易', '错', '2018-03-15 13:06:33');
INSERT INTO `panduanti` VALUES ('11', '011', 'C++', '对空指针不能用 delete 运算符.', '易', '对', '2018-03-15 13:25:12');
INSERT INTO `panduanti` VALUES ('12', '012', 'C++', '对重载的函数,要求函数类型相同但参数不同。', '难', '对', '2018-03-15 13:34:05');
INSERT INTO `panduanti` VALUES ('13', '013', 'C++', '任何一个对象只能属于一个具体的类。用 new 运算符来创建对象时不会调用构造函数。', '易', '错', '2018-05-13 22:23:44');
INSERT INTO `panduanti` VALUES ('14', '014', 'C++', '对重载的函数,要求参数不同或函数类型不同。', '中', '错', '2018-05-13 22:24:19');
INSERT INTO `panduanti` VALUES ('15', '015', 'C++', '用 new 运算符来创建对象时不会调用构造函数。', '中', '错', '2018-05-13 22:24:37');
INSERT INTO `panduanti` VALUES ('21', '021', 'VB', '用 Visual Basic 6.0设计应用程序的过程,实际上是与窗口进行交互的过程。\r\n', '难易', '对', '2018-05-14 15:24:56');
INSERT INTO `panduanti` VALUES ('22', '022', 'VB', 'Visual Basic的编程机制是可视化 ', '易', '错', '2018-05-14 15:24:59');
INSERT INTO `panduanti` VALUES ('23', '023', 'VB', '面向对象的程序设计指满足可视化、结构化、动态化\r\n', '中', '错', '2018-05-14 15:25:23');
INSERT INTO `panduanti` VALUES ('24', '024', 'VB', 'Visual Basic 6.0 对面向对象程序设计的支持与其他面向对象程序设计语言的主要区别是', '易', '对', '2018-05-14 15:25:42');
INSERT INTO `panduanti` VALUES ('25', '025', 'VB', 'VB是高级程序设计语言', '易', '错', '2018-05-14 15:25:58');
INSERT INTO `panduanti` VALUES ('31', '031', 'Java', 'Java 语言规定,标识符只能由 字母、数字、下划线和美元符号 组成,并且第一个字符不能是 数字 ', '易', '错', '2018-05-14 15:27:17');
INSERT INTO `panduanti` VALUES ('32', '032', 'Java', '表达式 1/2*3的计算结果是 0。', '中', '对', '2018-05-14 15:27:24');
INSERT INTO `panduanti` VALUES ('33', '033', 'Java', 'Java 源程序文件中是不区分字母的大小写的。', '难', '错', '2018-05-14 15:27:25');
INSERT INTO `panduanti` VALUES ('34', '034', 'Java', '设 x = 2 ,则表达式 ( x + + )/3 的值是 0 。\r\n', '中', '错', '2018-05-14 15:27:25');
INSERT INTO `panduanti` VALUES ('35', '035', 'Java', ' Java 程序的执行过程中用到一套 JDK 工具,其中 javac.exeJava解释器', '难', '对', '2018-05-14 15:27:26');

-- ----------------------------
-- Table structure for shijuanshengcheng
-- ----------------------------
DROP TABLE IF EXISTS `shijuanshengcheng`;
CREATE TABLE `shijuanshengcheng` (
  `id` int(11) NOT NULL auto_increment,
  `shijuanbianhao` varchar(50) default NULL,
  `kemu` varchar(50) default NULL,
  `xuanzeti` varchar(500) default NULL,
  `tiankongti` varchar(500) default NULL,
  `panduanti` varchar(500) default NULL,
  `faburen` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shijuanshengcheng
-- ----------------------------
INSERT INTO `shijuanshengcheng` VALUES ('1', '001', 'C语言', '11,16,10,15,13', '18,16,17,19,15', '2,5,1,3,8', 'ly', '2018-05-14 19:51:07');
INSERT INTO `shijuanshengcheng` VALUES ('2', '002', 'Java', '29,28,25,26,27', '25,29,26,27,28', '32,34,31,33,35', 'ly', '2018-05-14 19:55:56');

-- ----------------------------
-- Table structure for tiankongti
-- ----------------------------
DROP TABLE IF EXISTS `tiankongti`;
CREATE TABLE `tiankongti` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `kemu` varchar(50) default NULL,
  `shiti` text,
  `nanyichengdu` varchar(50) default NULL,
  `daan` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tiankongti
-- ----------------------------
INSERT INTO `tiankongti` VALUES ('8', '005', 'C++', 'C++语言的跳转语句中，对于break和continue的区别______________.', '易', 'fg', '2018-02-24 16:55:27');
INSERT INTO `tiankongti` VALUES ('9', '004', 'C++', '#include int f(int n, int x) { x+=1; if(n==3) return x; else return x+f(n+1,x+1); } void main() { cout< cout< cout< } 程序的输出第一行是____,第二行是_________,第三行是_________', '易', 'dwd', '2018-02-24 16:58:17');
INSERT INTO `tiankongti` VALUES ('10', '003', 'C++', '下面for语句的循环次数为 ________。\r\nfor(int i=0,x=0;!x&&i<=5;i++);', '中', '5', '2018-02-24 22:30:09');
INSERT INTO `tiankongti` VALUES ('13', '002', 'C++', '在_____情况下适宜采用inline来定义函数', '中', '函数体含有循环语句', '2018-03-15 13:24:51');
INSERT INTO `tiankongti` VALUES ('14', '001', 'C++', ' #include class A{ int a; public: A(int aa=0) {a=aa;} ~A() {cout<<\"Destructor A!\"< }; class B:public A { int b; public: B(int aa=0, int bb=0):A(aa) {b=bb;} ~B() {cout<<\"Destructor B!\"< }; void main() { B x(5), y(6,7); } 程序输出的第一行是_________,第二行是____________', '易', '222', '2018-03-15 13:34:22');
INSERT INTO `tiankongti` VALUES ('15', '0005', 'C语言', '执行下面程序中的输出语句后,输出结果是______.\r\n#include<stdio.h>\r\nvoid main()\r\n{int a;\r\nprintf(\"%d\r\n\",(a=3*5,a*4,a+5));\r\n}\r\n', '难', '20', '2018-03-15 13:41:02');
INSERT INTO `tiankongti` VALUES ('16', '0004', 'C语言', 'C语言中非空的基本数据类型包括________.\r\n', '易', '整型,实型,字符型', '2018-03-15 13:41:15');
INSERT INTO `tiankongti` VALUES ('17', '0003', 'C语言', '设 int a=12,则执行完语句a+=a-=a*a后,a的值是________\r\n', '中', '-264', '2018-03-15 13:41:23');
INSERT INTO `tiankongti` VALUES ('18', '0002', 'C语言', 'C语言程序的基本单位是___________.\r\n', '易', '函数', '2018-04-24 11:36:16');
INSERT INTO `tiankongti` VALUES ('19', '0001', 'C语言', '字符(char)型数据在微机内存中的存储形式是____.', '中', ' ASCII码', '2018-04-24 11:36:30');
INSERT INTO `tiankongti` VALUES ('20', '01', 'VB', '不能打开【属性】窗口的操作是_________.', '易', '执行【视图】菜单中的【属性窗口】命令', '2018-05-14 19:12:36');
INSERT INTO `tiankongti` VALUES ('21', '02', 'VB', '执行以下程序段\r\nDim x As Integer, i As Integer\r\nx = 0\r\nFor i = 20 To 1 Step -2\r\nx = x + i  5\r\nNext i\r\n后, x 的值为 ______。', '难', '16', '2018-05-14 19:13:26');
INSERT INTO `tiankongti` VALUES ('22', '03', 'VB', '下列程序段的执行结果为 ______。\r\nX=6\r\nFor K=1 To 10 Step -2\r\nX=X+K\r\nNext K\r\nPrint K;X', '易', '11 31', '2018-05-14 19:14:23');
INSERT INTO `tiankongti` VALUES ('23', '04', 'VB', '在窗体上画一个名称为 Text1的文本框和一个名称为 Command1的命令按钮, 然后编 写如下事件过程:\r\nPrivate Sub Command1_Click()\r\nDim i As Integer,n As Integer\r\nFor i=0 To 50\r\ni=i+3\r\nn=n+1\r\nIf i>10 Then Exit For\r\nNext\r\nText1.Text=Str(n)\r\nEnd Sub\r\n程序运行后,单击命令按钮,在文本框中显示的值是 ______。\r\n', '难', '2', '2018-05-14 19:14:59');
INSERT INTO `tiankongti` VALUES ('24', '05', 'VB', '设有如下程序段\r\nx=2\r\nFor i=1 to 10 step 2\r\nx=x+i\r\nNext\r\n运行以上程序后, X 的值是 ______。', '易', '27', '2018-05-14 19:15:46');
INSERT INTO `tiankongti` VALUES ('25', '1', 'Java', 'JDK 是___________________', '易', '一种程序开发辅助工具', '2018-05-14 19:16:30');
INSERT INTO `tiankongti` VALUES ('26', '2', 'Java', ' Java 程序的执行过程中用到一套 JDK 工具,其中 javac.exe 是指_____。', '易', 'Java解释器', '2018-05-14 19:17:06');
INSERT INTO `tiankongti` VALUES ('27', '3', 'Java', ' CLASSPATH 用于指明 ________________的位置', '中', '解码文件 ', '2018-05-14 19:17:42');
INSERT INTO `tiankongti` VALUES ('28', '4', 'Java', ' break 语句,借助于标号,可以实现________。', '难', '任何外层循环中断', '2018-05-14 19:18:32');
INSERT INTO `tiankongti` VALUES ('29', '5', 'Java', 'for( ; ; )是 ______。', '易', '循环结构', '2018-05-14 19:19:00');

-- ----------------------------
-- Table structure for xuanzeti
-- ----------------------------
DROP TABLE IF EXISTS `xuanzeti`;
CREATE TABLE `xuanzeti` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `kemu` varchar(50) default NULL,
  `shiti` text,
  `nanyichengdu` varchar(50) default NULL,
  `xuanxiangA` varchar(50) default NULL,
  `xuanxiangB` varchar(50) default NULL,
  `xuanxiangC` varchar(50) default NULL,
  `xuanxiangD` varchar(50) default NULL,
  `daan` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xuanzeti
-- ----------------------------
INSERT INTO `xuanzeti` VALUES ('8', '002', 'C++', '下列叙述不正确的是_______', '中', '纯虚函数是一种特殊的虚函数,它必须有具体的实现', '纯虚函数是一种特殊的虚函数,它没有具体的实现', '抽象类至少包含一个纯虚函数', '抽象类不能用于创建对象', 'A', '2018-02-24 23:02:15');
INSERT INTO `xuanzeti` VALUES ('9', '001', 'C++', '下列选项中不能作为C++自定义标识符的是______ ', '易', 'scanf', 'void', 'Struct', '_int', 'B', '2018-02-24 16:53:42');
INSERT INTO `xuanzeti` VALUES ('10', '0007', 'C语言', '设有如下程序段，下面描述中正确的是 ( )。 　　\r\nint k=10; while(k=0) k=k-1; ', '中', '循环执行一次 ', '循环是无限循环', '循环体语句一次也不执行', '循环体语句执行一次 ', 'B', '2018-02-24 20:19:33');
INSERT INTO `xuanzeti` VALUES ('11', '0006', 'C语言', '设a为int型变量，执行下列赋值语句后，a的取值分别是( )。\r\na=125.534; a=(int)125.521%4; a=5<<2;', '易', '125,31,1', '125,1,20', '125,31,20', '125.534,2,20', 'D', '2018-02-24 21:39:15');
INSERT INTO `xuanzeti` VALUES ('12', '0005', 'C语言', '假设变量a,b均为整型，表达式(a=5,b=2,a>b?a++:b++,a+b)的值是( )。', '中', '7', '8', '9', '2', 'A', '2018-03-01 20:40:37');
INSERT INTO `xuanzeti` VALUES ('13', '0004', 'C语言', '下列程序的输出结果是( )。\r\nmain( ) 　　\r\n{ int a=7,b=5; 　　printf(\"%d \",b=b/a); 　　}', '中', '5', '1', '0', '不确定值', 'B', '2018-03-15 13:04:00');
INSERT INTO `xuanzeti` VALUES ('14', '0003', 'C语言', 'C语言源程序的基本单位是( )。', '易', '过程', '函数', '子程序 ', '标识符', 'B', '2018-03-15 13:24:15');
INSERT INTO `xuanzeti` VALUES ('15', '0002', 'C语言', '下列正确的标识符是（ &#160;）', '易', '-a1', 'a[i]&#160;', 'a2_i', 'int&#160;t', 'C', '2018-03-15 13:30:56');
INSERT INTO `xuanzeti` VALUES ('16', '0001', 'C语言', '&#160;（ ）是构成C语言程序的基本单位。', '易', 'C程序的工作过程是编辑、编译、连接、运行&#160;', 'C语言不区分大小写', 'C程序的三种基本结构是顺序、选择、循环', 'C程序从main函数开始执行', 'A', '2018-03-15 13:34:58');
INSERT INTO `xuanzeti` VALUES ('17', '003', 'C++', '在_____情况下适宜采用inline来定义函数', '易', '函数体含有循环语句', '函数体含有递归语句', '加快程序的运行速度', '函数代码多,不常被调用', 'C', '2018-05-14 18:20:49');
INSERT INTO `xuanzeti` VALUES ('18', '004', 'C++', '设有双引号括起来的说明语句: int a[6][3]={0,2,8},(*p)[3]=a; 以下选项中不能表示地址的表达式是______   ', '易', 'a[5]', ' p[1]+0', 'p[1]', '**p+0', 'B', '2018-05-14 18:25:38');
INSERT INTO `xuanzeti` VALUES ('19', '005', 'C++', '下列语句中正确的是_______', '难', 'cout>>s1+s2;', 'b=s1==s2;', ' strlen(s1);', 'strcat(s1,s2); ', 'C', '2018-05-14 18:27:38');
INSERT INTO `xuanzeti` VALUES ('20', '01', 'VB', '用 Visual Basic 6.0设计应用程序的过程,实际上是与 进行交互的过程。', '易', ' 控件对象  ', '自定义对象', ' 标准对象', '窗体', 'D', '2018-05-14 18:35:36');
INSERT INTO `xuanzeti` VALUES ('21', '02', 'VB', ' 面向对象的程序设计指满足\r\n\r\n', '易', '可视化、结构化、动态化', '封装性、继承性、多态性', '对象的链接、动态链接、动态数据交换', 'ODBC, DDE , OLE', 'A', '2018-05-14 18:36:25');
INSERT INTO `xuanzeti` VALUES ('22', '03', 'VB', 'Visual Basic的编程机制是 。\r\n\r\n', '易', '可视化', '面向对象', ' 面向图形', '事件驱动', 'A', '2018-05-14 18:37:35');
INSERT INTO `xuanzeti` VALUES ('23', '04', 'VB', 'rivate Sub Form_Click()\r\nFor j=1 To 20\r\na=a+j7\r\nNext j\r\nPrint a\r\nEnd Sub\r\n在运行时输出 a 的值是（）。\r\n', '难', '21', '41', '63', '210', 'C', '2018-05-14 18:38:41');
INSERT INTO `xuanzeti` VALUES ('24', '05', 'VB', 'Visual Basic 6.0 对面向对象程序设计的支持与其他面向对象程序设计语言的主要区别 是（）。', '中', 'Visual Basic 6.0支持继承和多态性', 'Visual Basic 6.0支持代码重用', ' Visual Basic 6.0支持对象更具体', ' Visual Basic 6.0支持代码和过程的封装', 'B', '2018-05-14 18:40:03');
INSERT INTO `xuanzeti` VALUES ('25', '1', 'Java', '不属于 java 运行平台的是(  ) ', '易', 'J2SE', 'J2RE ', ' J2ME', 'J2EE', 'B', '2018-05-14 18:43:54');
INSERT INTO `xuanzeti` VALUES ('26', '2', 'Java', '常用的 java 环境变量不包括(  ) 。', '中', ' JAVA_HOME', 'CLASSPATH', 'PATH', 'JDK_HOME', 'B', '2018-05-14 18:44:49');
INSERT INTO `xuanzeti` VALUES ('27', '3', 'Java', '用于搜索希望执行命令的环境变量是(C ) 。', '易', 'JAVA_HOME', 'CLASSPATH', 'PATH', ' JDK_HOME', 'C', '2018-05-14 18:45:47');
INSERT INTO `xuanzeti` VALUES ('28', '4', 'Java', '设 x=5 则 y=x- - 和 y= - -x的结果,使 y 分别为 (  )\r\n', '易', '5,5', '5,6', '5,4', '4,4', 'C', '2018-05-14 18:46:49');
INSERT INTO `xuanzeti` VALUES ('29', '5', 'Java', '设 x = 1 , y = 2 , z = 3,则表达式 y +=z --/++x 的值是 (   ) 。', '中', '3', '3.5', '4', '5', 'A', '2018-05-14 18:47:23');

-- ----------------------------
-- Table structure for xueshengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xueshengxinxi`;
CREATE TABLE `xueshengxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `xuehao` varchar(50) default NULL,
  `xingming` varchar(50) default NULL,
  `mima` varchar(50) default NULL,
  `banji` varchar(50) default NULL,
  `zhuanye` varchar(50) default NULL,
  `zhaopian` varchar(50) default NULL,
  `shenfenzheng` varchar(50) default NULL,
  `jiguan` varchar(50) default NULL,
  `dizhi` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `xingbie` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xueshengxinxi
-- ----------------------------
INSERT INTO `xueshengxinxi` VALUES ('2', '201408110027', '乔微微', '201408110027', '1401', '计算机', 'upload/1526799675717.pictureunlock.jpg', '2362363262', '山西', '陕西', '23236223', '女', '', '2018-02-24 14:29:49');
INSERT INTO `xueshengxinxi` VALUES ('3', '201408110250', '刘芳', '201408110250', '1403', '软件工程', 'upload/1526799597333.pictureunlock.jpg', '362632623', '上海', '上海', '1399756321', '女', '', '2018-02-24 14:31:05');
INSERT INTO `xueshengxinxi` VALUES ('4', '201408110024', '刘美麟', '201408110024', '1401', '计算机科学与技术', 'upload/1526799450939.pictureunlock.jpg', '41411189890043859403', '山西', '山西省吕梁市', '18824072342', '女', '', '2018-02-24 23:01:37');
INSERT INTO `xueshengxinxi` VALUES ('5', '201408110048', '黎瑶', '201408110048', '1401', '计算机科学与技术', 'upload/1526799201329.pictureunlock.jpg', '421222199910293498', '湖北省', '湖北省', '132434535334', '女', '', '2018-02-24 16:48:39');
