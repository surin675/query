-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 11:33 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `me_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `username` varchar(16) NOT NULL,
  `password` varchar(8) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`username`, `password`, `firstname`, `lastname`, `email`) VALUES
('query675', '57260', 'Surin', 'Nin', 'admin_test@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `owner` varchar(30) NOT NULL,
  `test_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `owner`, `test_name`) VALUES
(2, 'ดีมากๆ ๆ', '', 'ความสนใจในอาชีพ'),
(3, 'ขอให้มีความสุขกับการทำแบบทดสอบนะจ๊ะ', 'Admin', 'บุคลิกภาพ16PF'),
(4, 'ดีมากๆ ๆ', '', 'พหุปัญญา'),
(5, 'ขอบคุณ', '', 'บุคลิกภาพ16PF'),
(6, 'ขอบคุณครับ', '', 'บุคลิกภาพ16PF'),
(7, 'แย่ๆ', '', 'บุคลิกภาพ16PF'),
(8, 'ดี', '', 'พหุปัญญา'),
(15, 'ชอบมากครับ', '', 'บุคลิกภาพ16PF'),
(28, 'ขอบคุณครับ', 'Admin', 'ความสนใจในอาชีพ'),
(33, 'ไม่เลวเลย', '', 'บุคลิกภาพ16PF'),
(34, '123', '', 'พหุปัญญา');

-- --------------------------------------------------------

--
-- Table structure for table `history_test`
--

CREATE TABLE `history_test` (
  `history_id` int(11) NOT NULL,
  `history` text NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history_test`
--

INSERT INTO `history_test` (`history_id`, `history`, `user_id`, `type`) VALUES
(2, 'บุคลิกภาพของคุณเป็นแบบ เก็บตัว คิดเชิงนามธรรม มีวุฒิภาวะทางอารมณ์ ถ่อมตน กระตือรือร้น มีมโนธรรม กล้าหาญ จิตใจอ่อนโยน ช่างสงสัย ช่างจินตนาการ มีเล่ห์เหลี่ยม จิตใจสงบมั่นคง ชอบทดลองสิ่งใหม่ พึ่งตนเอง ไม่มีวินัย', 'surin_nin675@hotmail.com', 'บุคลิกภาพ16PF'),
(6, 'ชอบเข้าสังคม มีมุมมองทั้งในเชิงรูปธรรมและนามธรรม มีวุฒิภาวะทางอารมณ์ ก้ำกึ่งระหว่างชอบใช้อำนาจและถ่อมตัว สุขุมรอบคอบ ทำตามใจตนเอง กล้าแสดงออก จิตใจเข้มแข็ง ไว้วางใจสิ่งรอบข้าง ช่างจินตนาการ เป็นคนมีเล่ห์เหลี่ยม มักวิตกกังวล ชอบทดลองสิ่งใหม่ ชอบพึ่งตนเอง ก้ำกึ่งระหว่างควบคุมตนเองได้กับไม่มีวินัย ก้ำกึ่งระหว่างเป็นคนมีความเครียดว้าวุ่นใจและเป็นคนผ่อนคลาย', '1', 'บุคลิกภาพ16PF'),
(7, ' <p><h4>ปัญญาด้านร่างกายและการเคลื่อนไหว</h4>คือ ความสามารถในการควบคุมและแสดงออกซึ่งความคิด ความรู้สึก โดยใช้อวัยวะส่วนต่างๆ ของร่างกาย รวมถึงความสามารถในการใช้มือประดิษฐ์ ความคล่องแคล่ว ความแข็งแรง ความรวดเร็ว ความยืดหยุ่น ความประณีต และความไวทางประสาทสัมผัส สำหรับผู้ที่มีปัญญาด้านนี้โดดเด่น มักจะเป็นนักกีฬา หรือไม่ก็ศิลปินในแขนง นักแสดง นักฟ้อน นักเต้น นักบัลเล่ย์ หรือนักแสดงกายกรรม</p>', '1', 'พหุปัญญา'),
(13, '<p><h4>ปัญญาด้านการเข้าใจตนเอง</h4>มักจะเป็นนักคิด นักปรัชญา หรือนักวิจัย</p><p><h4>ปัญญาด้านดนตรี</h4>มักจะเป็นนักดนตรี นักประพันธ์เพลง หรือนักร้อง</p><p><h4>ปัญญาด้านภาษา</h4>มักเป็น กวี นักเขียน นักพูด นักหนังสือพิมพ์ ครู ทนายความ หรือนักการเมือง</p><p><h4>ปัญญาด้านมิติสัมพันธ์</h4>จะมีทั้งสายวิทย์ และสายศิลป์ สายวิทย์ ก็มักเป็น นักประดิษฐ์ วิศวกร ส่วนสายศิลป์ มักเป็นศิลปินในแขนงต่างๆ เช่น จิตรกร หรือสถาปนิก เป็นต้น</p><p><h4>ปัญญาด้านร่างกายและการเคลื่อนไหว</h4>มักจะเป็นนักกีฬา หรือไม่ก็ศิลปินในแขนง นักแสดง นักฟ้อน นักเต้น นักบัลเล่ย์ หรือนักแสดงกายกรรม</p>', '1', 'พหุปัญญา'),
(14, 'ก้ำกึ่งระหว่างชอบเข้าสังคมและเก็บตัว มีมุมมองทั้งในเชิงรูปธรรมและนามธรรม ค่อนข้างมีวุฒิภาวะทางอารมณ์ แต่อาจมีอารมณ์อ่อนไหวบ้าง ก้ำกึ่งระหว่างชอบใช้อำนาจและถ่อมตัว ก้ำกึ่งระหว่างกระตือรือร้นและสุขุมรอบคอบ ก้ำกึ่งระหว่างมีมโนธรรมและทำตามใจตนเอง มีบุคลิกอยู่ระหว่างขี้อายและกล้าแสดงออกในคนเดียวกัน จิตใจอ่อนโยนและมีความเข้มแข็ง ก้ำกึ่งระหว่างช่างสงสัยกับไว้วางใจต่อสิ่งรอบข้าง มีทั้งความช่างจินตนาการและชอบลงมือปฏิบัติ ก้ำกึ่งระหว่างมีเล่ห์เหลี่ยมและจริงใจเปิดเผย ก้ำกึ่งระหว่างขี้กังวลและจิตใจสงบมั่นคง ก้ำกึ่งระหว่างชอบทดลองสิ่งใหม่และเป็นพวกอนุรักษ์นิยม ก้ำกึ่งระหว่างชอบพึ่งตนเองและชอบพึ่งพาผู้อื่น ก้ำกึ่งระหว่างควบคุมตนเองได้กับไม่มีวินัย ก้ำกึ่งระหว่างเป็นคนมีความเครียดว้าวุ่นใจและเป็นคนผ่อนคลาย', '1', 'บุคลิกภาพ16PF'),
(15, ' <p><h4>กลุ่มอาชีพทางธุระกิจ</h4>ยกตัวอย่างเช่น พนักงานบัญชี นักวิเคราะห์ธุรกิจ CEO นักเศรษฐศาสตร์ ฯลฯ</p><br/><p><h4>กลุ่มอาชีพการก่อสร้าง และอุตสาหกรรมการผลิต</h4>ยกตัวอย่างเช่น เจ้าหน้าที่ตรวจสอบอาคาร ผู้รับเหมาทั่วไป ช่างก่อสร้าง ฯลฯ</p><br/><p><h4>กลุ่มอาชีพวิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม</h4>ยกตัวอย่างเช่น วิศวกรต่างๆ นักวิทยาศาสตร์ ฯลฯ</p><br/>', '1', 'ความสนใจในอาชีพ'),
(16, ' <p><h4>กลุ่มอาชีพการก่อสร้าง และอุตสาหกรรมการผลิต</h4>ยกตัวอย่างเช่น เจ้าหน้าที่ตรวจสอบอาคาร ผู้รับเหมาทั่วไป ช่างก่อสร้าง ฯลฯ</p><br/><p><h4>กลุ่มอาชีพวิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม</h4>ยกตัวอย่างเช่น วิศวกรต่างๆ นักวิทยาศาสตร์ ฯลฯ</p><br/>', 'dump_email', 'ความสนใจในอาชีพ'),
(17, '<p><h4>ปัญญาด้านภาษา</h4>มักเป็น กวี นักเขียน นักพูด นักหนังสือพิมพ์ ครู ทนายความ หรือนักการเมือง</p><p><h4>ปัญญาด้านมนุษยสัมพันธ์</h4>มักจะเป็นครูบาอาจารย์ ผู้ให้คำปรึกษา นักการฑูต เซลแมน พนักงานขายตรง พนักงานต้อนรับ ประชาสัมพันธ์ นักการเมือง หรือนักธุรกิจ</p><p><h4>ปัญญาด้านมิติสัมพันธ์</h4>จะมีทั้งสายวิทย์ และสายศิลป์ สายวิทย์ ก็มักเป็น นักประดิษฐ์ วิศวกร ส่วนสายศิลป์ มักเป็นศิลปินในแขนงต่างๆ เช่น จิตรกร หรือสถาปนิก เป็นต้น</p>', '1', 'พหุปัญญา'),
(18, 'ชอบเข้าสังคม ชอบคิดเชิงรูปธรรม ค่อนข้างมีวุฒิภาวะทางอารมณ์ แต่อาจมีอารมณ์อ่อนไหวบ้าง ชอบใช้อำนาจ ก้ำกึ่งระหว่างกระตือรือร้นและสุขุมรอบคอบ ก้ำกึ่งระหว่างมีมโนธรรมและทำตามใจตนเอง มีบุคลิกอยู่ระหว่างขี้อายและกล้าแสดงออกในคนเดียวกัน จิตใจอ่อนโยนและมีความเข้มแข็ง ก้ำกึ่งระหว่างช่างสงสัยกับไว้วางใจต่อสิ่งรอบข้าง มีทั้งความช่างจินตนาการและชอบลงมือปฏิบัติ เป็นคนมีเล่ห์เหลี่ยม ก้ำกึ่งระหว่างขี้กังวลและจิตใจสงบมั่นคง ก้ำกึ่งระหว่างชอบทดลองสิ่งใหม่และเป็นพวกอนุรักษ์นิยม ก้ำกึ่งระหว่างชอบพึ่งตนเองและชอบพึ่งพาผู้อื่น ก้ำกึ่งระหว่างควบคุมตนเองได้กับไม่มีวินัย ก้ำกึ่งระหว่างเป็นคนมีความเครียดว้าวุ่นใจและเป็นคนผ่อนคลาย', '1', 'บุคลิกภาพ16PF'),
(19, '<p><h4>ปัญญาด้านการเข้าใจตนเอง</h4>มักจะเป็นนักคิด นักปรัชญา หรือนักวิจัย</p>', '1', 'พหุปัญญา'),
(20, 'ชอบเข้าสังคม มีมุมมองทั้งในเชิงรูปธรรมและนามธรรม ค่อนข้างมีวุฒิภาวะทางอารมณ์ แต่อาจมีอารมณ์อ่อนไหวบ้าง ก้ำกึ่งระหว่างชอบใช้อำนาจและถ่อมตัว สุขุมรอบคอบ ก้ำกึ่งระหว่างมีมโนธรรมและทำตามใจตนเอง กล้าแสดงออก จิตใจอ่อนโยน ช่างสงสัยสิ่งต่างๆ ช่างจินตนาการ เป็นคนมีเล่ห์เหลี่ยม ก้ำกึ่งระหว่างขี้กังวลและจิตใจสงบมั่นคง เป็นพวกอนุรักษ์นิยม ชอบพึ่งพาผู้อื่น ควบคุมตนเองได้ เป็นคนผ่อนคลาย', '1', 'บุคลิกภาพ16PF'),
(21, 'ชอบเข้าสังคม ชอบคิดเชิงนามธรรม มีวุฒิภาวะทางอารมณ์ ชอบใช้อำนาจ กระตือรือร้น มีมโนธรรม กล้าแสดงออก จิตใจอ่อนโยน ช่างสงสัยสิ่งต่างๆ ช่างจินตนาการ เป็นคนมีเล่ห์เหลี่ยม มักวิตกกังวล ชอบทดลองสิ่งใหม่ ชอบพึ่งตนเอง ควบคุมตนเองได้ เป็นคนมีความเครียดว้าวุ่นใจ', '1', 'บุคลิกภาพ16PF'),
(22, '<p><h4>ปัญญาด้านการเข้าใจตนเอง</h4>มักจะเป็นนักคิด นักปรัชญา หรือนักวิจัย</p><p><h4>ปัญญาด้านดนตรี</h4>มักจะเป็นนักดนตรี นักประพันธ์เพลง หรือนักร้อง</p><p><h4>ปัญญาด้านร่างกายและการเคลื่อนไหว</h4>มักจะเป็นนักกีฬา หรือไม่ก็ศิลปินในแขนง นักแสดง นักฟ้อน นักเต้น นักบัลเล่ย์ หรือนักแสดงกายกรรม</p>', '1', 'พหุปัญญา'),
(23, ' <p><h4>กลุ่มอาชีพทางธุระกิจ</h4>ยกตัวอย่างเช่น พนักงานบัญชี นักวิเคราะห์ธุรกิจ CEO นักเศรษฐศาสตร์ ฯลฯ</p><br/>', '1', 'ความสนใจในอาชีพ'),
(24, 'ชอบเข้าสังคม ชอบคิดเชิงนามธรรม มีวุฒิภาวะทางอารมณ์ ชอบใช้อำนาจ กระตือรือร้น มีมโนธรรม กล้าแสดงออก จิตใจอ่อนโยน ช่างสงสัยสิ่งต่างๆ ช่างจินตนาการ เป็นคนมีเล่ห์เหลี่ยม มักวิตกกังวล ชอบทดลองสิ่งใหม่ ชอบพึ่งตนเอง ควบคุมตนเองได้ เป็นคนมีความเครียดว้าวุ่นใจ', '1', 'บุคลิกภาพ16PF');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `job` text NOT NULL,
  `job_group` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job`, `job_group`) VALUES
(19, 'ผู้สอบบัญชีอิสระ', 'กลุ่มอาชีพทางธุระกิจ'),
(20, 'พนักงานบัญชีในบริษัท', 'กลุ่มอาชีพทางธุระกิจ'),
(21, 'นักคณิตศาสตร์ประกันภัย', 'กลุ่มอาชีพทางธุระกิจ'),
(22, 'เลขานุการผู้บริหาร', 'กลุ่มอาชีพทางธุระกิจ'),
(23, 'CEO', 'กลุ่มอาชีพทางธุระกิจ'),
(24, 'นักเศรษฐศาสตร์', 'กลุ่มอาชีพทางธุระกิจ'),
(25, 'ผู้บริหารฝ่ายบัญชีการเงิน', 'กลุ่มอาชีพทางธุระกิจ'),
(26, 'นักวิเคราะห์หลักทรัพย์', 'กลุ่มอาชีพทางธุระกิจ'),
(27, 'เจ้าหน้าที่ตรวจสอบอาคาร', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(28, 'ช่างปูพรม', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(29, 'ช่างไม้', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(31, 'ผู้จัดการการก่อสร้าง', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(32, 'ผู้รับเหมาทั่วไป', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(33, 'เจ้าของโรงงาน', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(34, 'ผู้จัดการโรงงาน', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(35, 'ช่างปูกระเบื้อง', 'การก่อสร้าง และอุตสาหกรรมการผลิต'),
(36, 'ครูโรงเรียนสำหรับผู้ใหญ่', 'การศึกษา'),
(37, 'นักวิจัยการศึกษ', 'การศึกษา'),
(38, 'ครูสอนภาษา', 'การศึกษา'),
(39, 'ครูใหญ่', 'การศึกษา'),
(40, 'อาจารย์มหาวิทยาลัย', 'การศึกษา'),
(41, 'ครูแนะแนว ', 'การศึกษา'),
(42, 'ครูอนุบาล', 'การศึกษา'),
(43, 'ผู้ช่วยครู', 'การศึกษา'),
(44, 'ทนายด้านสิทธิผู้บริโภค', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(45, 'นักวางผังเมือง', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(46, 'ผู้พิพากษา', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(47, 'ผู้ช่วยทนาย', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(48, 'นักการเมือง', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(49, 'ข้าราชการ', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(50, 'นักนิเวศวิทยา', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(51, 'นักนิติวิทยาศาสตร์ ', 'งานราชการและองค์กรไม่หวังผลกำไร'),
(52, 'ทันตแพทย์', 'แวดวงสุขภาพ'),
(53, 'นักสังคมสงเคราะห์', 'แวดวงสุขภาพ'),
(54, 'แพทย์', 'แวดวงสุขภาพ'),
(55, 'พยาบาล', 'แวดวงสุขภาพ'),
(56, 'นักโภชนาการ', 'แวดวงสุขภาพ'),
(57, 'เภสัชกร', 'แวดวงสุขภาพ'),
(58, 'นักกายภาพบำบัด', 'แวดวงสุขภาพ'),
(59, 'จิตแพทย์ ', 'แวดวงสุขภาพ'),
(60, 'เจ้าหน้าที่สาธารณสุข', 'แวดวงสุขภาพ'),
(61, 'สัตวแพทย์', 'แวดวงสุขภาพ'),
(62, 'Software developer', 'เทคโนโลยีและสารสนเทศ'),
(63, 'Database administrator', 'เทคโนโลยีและสารสนเทศ'),
(64, 'Programmer', 'เทคโนโลยีและสารสนเทศ'),
(65, 'Systems Analyst', 'เทคโนโลยีและสารสนเทศ'),
(66, 'Web Developer', 'เทคโนโลยีและสารสนเทศ'),
(67, 'Web Designer', 'เทคโนโลยีและสารสนเทศ'),
(68, 'System Engineer', 'เทคโนโลยีและสารสนเทศ'),
(69, 'System Administrator', 'เทคโนโลยีและสารสนเทศ'),
(70, 'Network Security', 'เทคโนโลยีและสารสนเทศ'),
(71, 'นักแสดง', 'ศิลปะ บันเทิง และวรรณกรรม'),
(72, 'ช่างฝีมือ', 'ศิลปะ บันเทิง และวรรณกรรม'),
(73, 'แดนเซอร์', 'ศิลปะ บันเทิง และวรรณกรรม'),
(74, 'ผู้จัดการนักแสดง', 'ศิลปะ บันเทิง และวรรณกรรม'),
(75, 'ดาราตลก', 'ศิลปะ บันเทิง และวรรณกรรม'),
(76, 'ผู้กำกับ (ละคร ภาพยนตร์) ', 'ศิลปะ บันเทิง และวรรณกรรม'),
(77, 'บรรณาธิการ', 'ศิลปะ บันเทิง และวรรณกรรม'),
(78, 'นักแต่งเพลง', 'ศิลปะ บันเทิง และวรรณกรรม'),
(79, 'ช่างแต่งหน้า', 'ศิลปะ บันเทิง และวรรณกรรม'),
(80, 'นักคณิตศาสตร์', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(81, 'วิศวกร', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(82, 'นักดาราศาสตร์', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(83, 'วิศวกรอวกาศ', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(84, 'วิศวกร โยธา', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(85, 'วิศวกรไฟฟ้า', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(86, 'นักชีววิทยา', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม'),
(87, 'นักฟิสิกส์', 'วิศวกรรม วิทยาศาสตร์ในอุตสาหกรรม');

-- --------------------------------------------------------

--
-- Table structure for table `question_16pf`
--

CREATE TABLE `question_16pf` (
  `q_16pf_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `choice1` text NOT NULL,
  `choice2` text NOT NULL,
  `choice3` text NOT NULL,
  `pers_type` varchar(2) NOT NULL,
  `positive` text NOT NULL,
  `negative` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_16pf`
--

INSERT INTO `question_16pf` (`q_16pf_id`, `question`, `choice1`, `choice2`, `choice3`, `pers_type`, `positive`, `negative`) VALUES
(1, 'ฉันเต็มใจให้เพื่อนยืมใช้ของของฉัน', 'ใช่', 'ไม่ใช่', 'ไม่แน่ใจ', 'A', 'เข้าสังคม', 'เก็บตัว'),
(12, 'ฉันชอบทำงานเป็นทีมมากกว่าทำงานคนเดียว', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'A', 'เข้าสังคม', 'เก็บตัว'),
(13, 'ฉันสะบายใจเวลาได้อยู่คนเดียว', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'A', 'เข้าสังคม', 'เก็บตัว'),
(14, 'เวลาฉันมีปัญหา ฉันมักจะ', 'ปรึกษาเพื่อน', 'หาทางแก้ไขเอง', 'ไม่แน่ใจ', 'A', 'เข้าสังคม', 'เก็บตัว'),
(15, 'เมื่อฉันอกหัก ฉันมักจะ', 'ทำกิจกรรมกับคนรอบข้าง', 'ร้องไห้คนเดียว', 'ไม่แน่ใจ', 'A', 'เข้าสังคม', 'เก็บตัว'),
(16, 'ฉันมักจะโกรธง่าย', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'C', 'มีวุฒิภาวะทางอารมณ์', 'อารมณ์อ่อนไหว'),
(17, 'ฉันมักจะร้องไห้บ่อยๆ', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'C', 'มีวุฒิภาวะทางอารมณ์', 'อารมณ์อ่อนไหว'),
(18, 'ฉันสามารถควบคุมอารมณ์ได้เป็นอย่างดี', 'ใช่', 'ไม่', 'เป็นบางครั้ง', 'C', 'มีวุฒิภาวะทางอารมณ์', 'อารมณ์อ่อนไหว'),
(19, 'ฉันใช้เหตุผลมากกว่าความรู้สึก', 'ใช่', 'ไม่', 'เป็นบางครั้ง', 'C', 'มีวุฒิภาวะทางอารมณ์', 'อารมณ์อ่อนไหว'),
(20, 'ฉันมีอารมณ์อ่อนไหวง่าย', 'ไม่', 'ใช่', 'มีบ้างบางครั้ง', 'C', 'มีวุฒิภาวะทางอารมณ์', 'อารมณ์อ่อนไหว'),
(21, 'ฉันชอบลงการลงมือปฏิบัติ มากกว่าการจินตนาการ', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'B', 'เชิงนามธรรม', 'เชิงรูปธรรม'),
(22, 'ฉันสามารถทำการแสดงต่างๆ ได้ดี', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'B', 'เชิงนามธรรม', 'เชิงรูปธรรม'),
(23, 'ฉันชอบจิตนาการก้อนเมฆเป็นรูปต่างๆ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'B', 'เชิงนามธรรม', 'เชิงรูปธรรม'),
(24, 'หากสิ่งของ เครือ่งใช้ มีปัญหา ฉันมักลงมือซ่อมแซม ด้วยตัวเอง', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'B', 'เชิงนามธรรม', 'เชิงรูปธรรม'),
(25, 'ฉันมีความต้องการเป็นผู้นำกลุ่มอยู่เสมอ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'E', 'ใช้อำนาจ', 'ถ่อมตน'),
(26, 'ฉันอยากทำงานที่เป็นผู้ออกคำสั่ง', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'E', 'ใช้อำนาจ', 'ถ่อมตน'),
(27, 'ฉันเป็นคนขี้เกรงใจ', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'E', 'ใช้อำนาจ', 'ถ่อมตน'),
(28, 'เวลาฉันเถีบงกับผู้อื่นฉันมักจะเป็นผ่ายยอม', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'E', 'ใช้อำนาจ', 'ถ่อมตน'),
(29, 'ฉันไม่ชอบให้ใครมาออกคำสั่ง', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'E', 'ใช้อำนาจ', 'ถ่อมตน'),
(30, 'ฉันมักจะคิดอย่างรอบคอบก่อนลงมือทำ', 'ไม่', 'ใช่', 'เป็นบางครั้ง', 'F', 'ความกระตือรือร้น', 'สุขุมรอบคอบ'),
(31, 'ฉันทำแล้วค่อยคิดเสมอ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'F', 'ความกระตือรือร้น', 'สุขุมรอบคอบ'),
(32, 'ฉันเป็นนักวางแผนมากกว่าเป็นผู้ลงมือกระทำ', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'F', 'ความกระตือรือร้น', 'สุขุมรอบคอบ'),
(33, 'ฉันชอบอยู่นิ่งๆ ชอบทำสมาธิ', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'F', 'ความกระตือรือร้น', 'สุขุมรอบคอบ'),
(34, 'เมื่อคุณเจอคนที่คุณชอบคุณจะ', 'เดินเข้าไปคุยเลย', 'ปล่อยผ่านไป', 'ไม่แน่ใจ', 'F', 'ความกระตือรือร้น', 'สุขุมรอบคอบ'),
(35, 'ฉันทำตามกฏระเบียบเสมอ', 'ใช่', 'ไม่', 'ทำผิดกฎบ้างบางครั้ง', 'G', 'มีมโนธรรม', 'ทำตามใจตนเอง'),
(36, 'เมื่อคุณทำผิด คุณมักจะ', 'ยอมรับทันที', 'หาทางไม่ยอมรับผิด', 'ยอมรับทันที', 'G', 'มีมโนธรรม', 'ทำตามใจตนเอง'),
(37, 'ฉันชอบแหกกฏเสมอ', 'ไม่ใช่', 'ใช่', 'มีบ้างบางครั้ง', 'G', 'มีมโนธรรม', 'ทำตามใจตนเอง'),
(38, 'ฉันชอบที่จะทำการแสดงในที่สาธารณะ', 'ใช่', 'ไม่', 'เฉยๆ', 'H', 'กล้าหาญ', 'ความอาย'),
(39, 'ฉันพูดอย่างมั่นใจ เสียงดัง ฟังชัด', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'H', 'กล้าหาญ', 'ความอาย'),
(40, 'ฉันกล้าจะทำสิ่งแปลกใหม่อยู่เสมอ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'H', 'กล้าหาญ', 'ความอาย'),
(41, 'การร้องไห้หมายถึงการแสดงความอ่อนแอ', 'ไม่ใช่', 'ใช่', 'ไม่แน่ใจ', 'I', 'จิตใจอ่อนโยน', 'จิตใจเข้มแข็ง'),
(42, 'คุณมักจะร้องไห้หากคนรอบข้างร้องไห้', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'I', 'จิตใจอ่อนโยน', 'จิตใจเข้มแข็ง'),
(43, 'คุณเป็นคนขี้สงสาร', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'I', 'จิตใจอ่อนโยน', 'จิตใจเข้มแข็ง'),
(44, 'ฉันเชื่อใจคนง่าย', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'L', 'ช่างสงสัย', 'ไว้วางใจ'),
(45, 'ฉันมักตั้งคำถามกับการกระทำของผู้อื่น', 'ใช่', 'ไม่', 'เป็นบางครั้ง', 'L', 'ช่างสงสัย', 'ไว้วางใจ'),
(46, 'ฉันเป็นคนช่างสังเกต', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'L', 'ช่างสงสัย', 'ไว้วางใจ'),
(47, 'ฉันชอบการลงมือทำ มากกว่า การท่องจำ', 'ไม่', 'ใช่', 'ไม่ในใจ', 'M', 'ช่างจินตนาการ', 'ลงมือปฏิบัติ'),
(48, 'ฉันแต่งนิยายได้ดี', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'M', 'ช่างจินตนาการ', 'ลงมือปฏิบัติ'),
(49, 'ฉันชอบการฟังนิทาน', 'ใช่', 'ไม่', 'เฉยๆ', 'M', 'ช่างจินตนาการ', 'ลงมือปฏิบัติ'),
(50, 'ฉันมักกังวลกับเรื่องที่ยังมาไม่ถึง', 'ใช่', 'ไม่ใช่', 'ไม่แน่ใจ', 'Q4', 'ความเครียดว้าวุ่นใจ', 'ผ่อนคลาย'),
(51, 'ฉันมักคิดมากเสมอเวลาถูกตำหนิ', 'ใช่', 'ไม่', 'เฉยๆ', 'Q4', 'ความเครียดว้าวุ่นใจ', 'ผ่อนคลาย'),
(52, 'ฉันชอบทำตัวสบายๆ มากกว่าการคิดมาก', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'Q4', 'ความเครียดว้าวุ่นใจ', 'ผ่อนคลาย'),
(53, 'ฉันเข้านอน และตื่นนอนตรงเวลาทุกวัน', 'ใช่', 'ไม่ใช่', 'ไม่แน่ใจ', 'Q3', 'ควบคุมตนเองได้', 'ไม่มีวินัย'),
(54, 'ฉันเป็นคนตรงต่อเวลา', 'ใช่', 'ไม่', 'เป็นบางครั้ง', 'Q3', 'ควบคุมตนเองได้', 'ไม่มีวินัย'),
(55, 'ฉันชอบจัดห้องนอนให้เรียบร้อย', 'ใช่', 'ไม่', 'บางครั้ง', 'Q3', 'ควบคุมตนเองได้', 'ไม่มีวินัย'),
(56, 'ฉันชอบทำงานคนเดียว มากกว่าทำงานเป็นทีม', 'ใช่', 'ไม่ใช่', 'บางครั้ง', 'Q2', 'พึ่งตนเอง', 'พึ่งกลุ่ม'),
(57, 'เวลามีปัญหาฉันจะ', 'แก้เองลำพัง', 'ปรึกษาเพื่อน', 'ไม่แน่ใจ', 'Q2', 'พึ่งตนเอง', 'พึ่งกลุ่ม'),
(58, 'ฉันชอบทำสิ่งต่างๆ ด้วยตนเอง', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'Q2', 'พึ่งตนเอง', 'พึ่งกลุ่ม'),
(59, 'ฉันชอบทำอะไรใหม่ๆ ไม่ซ้ำใคร', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'Q1', 'ชอบทดลองสิ่งใหม่', 'อนุรักษ์นิยม'),
(60, 'คุณมักเบื่อมักสิ่งที่จำเจ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'Q1', 'ชอบทดลองสิ่งใหม่', 'อนุรักษ์นิยม'),
(61, 'คุณไม่ชอบทดลองทำสิ่งที่ไม่เคยทำ', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'Q1', 'ชอบทดลองสิ่งใหม่', 'อนุรักษ์นิยม'),
(62, 'คุณมักวิตกกังวลจนเกินเหตุ', 'ใช่', 'ไม่', 'บางครั้ง', 'O', 'จิตใจวิตกกังวล', 'จิตใจสงบมั่นคง'),
(63, 'เมื่อคุณเจอปัญหาใหญ่ๆ คุณรู้สึก', 'กลัว', 'ท้าทาย', 'เฉยๆ', 'O', 'จิตใจวิตกกังวล', 'จิตใจสงบมั่นคง'),
(64, 'เมื่อคุณเจอปัญหาคุณสามารถวางแผนแก้ไขได้เป็นอย่างดี', 'ไม่', 'ใช่', 'ไม่แน่ใจ', 'O', 'จิตใจวิตกกังวล', 'จิตใจสงบมั่นคง'),
(65, 'คุณมักเก็บความลับไม่อยู่', 'ไม่', 'ใช่', 'บางครั้ง', 'N', 'มีเล่ห์เหลี่ยม', 'จริงใจเปิดเผย'),
(66, 'คุณจะพยายามปกปิดความผิดพลาดของคุณ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'N', 'มีเล่ห์เหลี่ยม', 'จริงใจเปิดเผย'),
(67, 'ฉันพูดความจริงเสมอ', 'ใช่', 'ไม่', 'ไม่แน่ใจ', 'N', 'มีเล่ห์เหลี่ยม', 'จริงใจเปิดเผย');

-- --------------------------------------------------------

--
-- Table structure for table `question_intel`
--

CREATE TABLE `question_intel` (
  `q_Intel_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `intell` text NOT NULL,
  `score_yes` int(11) NOT NULL DEFAULT '1',
  `score_no` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_intel`
--

INSERT INTO `question_intel` (`q_Intel_id`, `question`, `intell`, `score_yes`, `score_no`) VALUES
(9, 'ฉันสามารถพูดได้อย่างคล่อง แคล้ว\r\n\r\n', 'ภาษา', 1, 0),
(10, 'ฉันชอบเขียนบันทึกประจำวันหรือสิ่งต่างๆ ที่ฉันพบเจอ', 'ภาษา', 1, 0),
(11, 'ฉันสามารถฟังจับใจความสำคัญได้อย่างรวดเร็ว', 'ภาษา', 0, 1),
(13, 'ฉันถนัดในการเขียนเรียงความ', 'ภาษา', 1, 0),
(14, 'ฉันสามารถจดจำในสิ่งที่ฟังหรืออ่านได้อย่างรวดเร็วและแม่นยำ', 'ภาษา', 1, 0),
(15, 'ฉันสามารถเลือกใช้คำได้อย่างเหมาะสมกับสถานการณ์', 'ภาษา', 1, 0),
(16, 'ฉันมีความสามารถในการแก้ไขปัญหาโจทย์ทางคณิตศาสตร์ได้ดี ', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(17, 'สามารถหาเหตุผล อธิบายสิ่งต่างๆ ที่เกิดขึ้นได้เป็นอย่างดี', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(18, 'ฉันสนใจในการเรียนวิชาคณิตศาสตร์ วิทยาศาสตร์', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(19, 'ฉันชอบคิด แก้ไขปัญหาต่างๆ อย่างเป็นระบบ มีขั้นตอน', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(20, 'ฉันสามารถวิพากษ์วิจารณ์ แนวคิดของผู้อื่น ได้อย่างมีเหตุผล ', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(21, 'ฉันสามารถวิเคราะห์ ผลที่อาจเป็นไปได้ หากมีเหตุการณ์ๆหนึ่งเกิดขึ้น', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(22, 'ฉันชอบเล่นเกม ที่อาศัยการวิเคราะห์ คิดคำนวณ ', 'ตรรกศาสตร์และคณิตศาสตร์', 1, 0),
(23, 'ฉันสามารถอธิบายความสัมพันธ์ เปรียบเทียบ ระหว่างขนาดของวัตถุหนึ่งกัอีกวัตถุหนึ่งได้เป็นอย่างดี', 'มิติสัมพันธ์', 1, 0),
(24, 'ฉันสามารถถ่ายรูปได้สวยงามมีมิติ', 'มิติสัมพันธ์', 1, 0),
(25, 'ฉันชอบวาดรูป ระบายสี สิ่งต่างๆ ที่อยู่รอบตัว', 'มิติสัมพันธ์', 1, 0),
(26, 'ฉันชอบอ่านหนังสือการ์ตูน มากกว่า อ่านหนังสือนิยาย/ตำราเรียน ', 'มิติสัมพันธ์', 1, 0),
(27, 'ฉันชอบเรียนวิชาศิลปะ', 'มิติสัมพันธ์', 1, 0),
(28, 'ฉันชอบการตกแต่งห้องให้สวยงาม ', 'มิติสัมพันธ์', 1, 0),
(29, 'ฉันสามารถบอกความแตกต่างระหว่างวัตถุหรือภาพที่คล้ายคลึงกันได้อย่างลึกซึ้ง', 'มิติสัมพันธ์', 1, 0),
(30, 'ฉันชอบเล่นกีฬาหรือออกกำลังกาย', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(31, 'ฉันไม่ชอบนั่ง นอน นิ่งเฉยๆ ', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(32, 'ฉันรักในงานประดิษฐ์ประดอย', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(33, 'ฉันมีความสามารถด้านการเต้นรำ', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(34, 'ฉันชอบการลงมือทำ มากกว่า การท่องจำ', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(35, 'ฉันชอบวิชาการงาน ที่ใช้ทักษะฝีมือ', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(36, 'ฉันมักจะเคลื่อนไหว แสดง ท่าทาง ขณะอธิบายหรือพูดคุยกับผู้อื่น', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(37, 'ฉันสามารถทำการแสดงต่างๆ ได้ดี ', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(38, 'หากสิ่งของ เครือ่งใช้ มีปัญหา ฉันมักลงมือซ่อมแซม ด้วยตัวเอง', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(39, 'ฉันกล้าที่จะทำการแสดงในที่สาธารณะ', 'ร่างกายและการเคลื่อนไหว', 1, 0),
(40, 'ฉันสามารถร้องเพลงได้อย่างไพเราะ', 'ดนตรี', 1, 0),
(41, 'ฉันมีความสามารถในการแต่งเพลง ', 'ดนตรี', 1, 0),
(42, 'ฉันสามารถจับจังหวะ รับรู้ โน้ต คีย์ เสียงสิ่งต่างๆ ได้เป็นอย่างดี', 'ดนตรี', 1, 0),
(43, 'ฉันสามารถจดจำเพลง ท่วงทำนองของเพลงนั้นๆได้', 'ดนตรี', 1, 0),
(44, 'ฉันมักจะเคาะจังหวะดนตรี ขณะฟังเพลง', 'ดนตรี', 1, 0),
(45, 'ฉันสามารถเล่นเครื่องดนตรีได้ และ รักในการเล่นดนตรี', 'ดนตรี', 1, 0),
(46, 'ฉันชอบฟังเพลง', 'ดนตรี', 1, 0),
(47, 'ฉันสามารถแยกเสียงเครื่องดนตรีต่างๆ ในเพลงๆหนึ่งได้ ', 'ดนตรี', 1, 0),
(48, 'ฉันจับกลุ่มกับเพื่อนๆ ในการเล่นดนตรี', 'ดนตรี', 1, 0),
(49, 'การแต่งเพลงเป็นงานอดิเรกของฉัน', 'ดนตรี', 1, 0),
(50, 'ฉันสามารถเข้ากับคนอื่นได้ดี', 'มนุษยสัมพันธ์', 1, 0),
(51, 'ฉันรู้สึกมีความสุขที่ได้อยู่กับเพื่อน ได้พบเจอเพื่อน หรือผู้คน ', 'มนุษยสัมพันธ์', 1, 0),
(52, 'ฉันสามารถรับรู้ความรู้สึกของผู้อื่นๆ ได้เป็นอย่างดี', 'มนุษยสัมพันธ์', 1, 0),
(53, 'ฉันมักเป็นบุคคลที่เพื่อนมาปรึกษา ระบายความรู้สึก พูดคุย ด้วยอยู่สม่ำเสมอ', 'มนุษยสัมพันธ์', 1, 0),
(54, 'ฉันชอบช่วยเหลือผู้อื่น ', 'มนุษยสัมพันธ์', 1, 0),
(55, 'ฉันชอบทำงานเป็นทีม เป็นกลุ่ม มากกว่า ทำงานเพียงลำพัง', 'มนุษยสัมพันธ์', 1, 0),
(56, 'ฉันสามารถพูดจูงใจ ชักชวนหรือ สร้างแรงบันดาลใจให้ผู้อื่นได้', 'มนุษยสัมพันธ์', 1, 0),
(57, 'ฉันสามารถไกล่เกลี่ย เมื่อเกิดปัญหาการทะเลาะเบาะเเว้งได้', 'มนุษยสัมพันธ์', 1, 0),
(58, 'ฉันสามารถเจรจา ต่อรอง กับคนอื่น ได้ดี ', 'มนุษยสัมพันธ์', 1, 0),
(59, 'ฉันมีเพื่อนหรือบุคคลที่รู้จัก จำนวนมากๆ ', 'มนุษยสัมพันธ์', 1, 0),
(60, 'ฉันชอบอยู่ตามลำพังมากกว่าอยู่กับผู้อื่น', 'การเข้าใจตนเอง', 1, 0),
(61, 'ฉันมักจะเข้าร่วมอบรม โครงการต่างๆ เพื่อพัฒนาศักยภาพของตัวเอง ', 'การเข้าใจตนเอง', 1, 0),
(62, 'ฉันมักค้นพบเป้าหมายของตัวเองและทำมันให้เป็นจริง ', 'การเข้าใจตนเอง', 1, 0),
(63, 'เมื่อมีปัญหา ฉันมักจะสามารถจัดการกับปัญหาด้วยตัวของตัวเอง', 'การเข้าใจตนเอง', 1, 0),
(64, 'ฉันมักจะ นั่งทบทวนความคิดของตัวเองในแต่ละวันเสมอ', 'การเข้าใจตนเอง', 1, 0),
(65, 'ฉันรู้จุดเด่นจุดด้อยของตัวเอง', 'การเข้าใจตนเอง', 1, 0),
(66, 'ฉันไม่ชอบทำงานเป็นทีม', 'การเข้าใจตนเอง', 1, 0),
(67, 'การทำกิจกรรมอยู่เงียบๆ คนเดียว ทำให้ฉันมีความสงบสุขมากกว่าการพบปะผู้อืน', 'การเข้าใจตนเอง', 1, 0),
(68, 'การนั่งหรือทำสมาธิด้วยตนเอง ทำให้ฉันสบายใจมากกว่า การพูดคุยปัญหากับผุ้อื่น ', 'การเข้าใจตนเอง', 1, 0),
(69, 'ฉันบันทึก ความคิด ความรู้สึกของฉันลงในสมุดประจำตัว', 'การเข้าใจตนเอง', 1, 0),
(70, 'ฉันชอบสัมผัสบรรยากาศบนดอย ', 'ธรรมชาติวิทยา', 1, 0),
(71, 'ฉันชอบเที่ยวทะเล', 'ธรรมชาติวิทยา', 1, 0),
(72, 'ฉันชอบเรียนรู้วิถีชีวิตของสิ่งมีชีวิต', 'ธรรมชาติวิทยา', 1, 0),
(73, 'ฉันเพลิดเพลินปลูกต้นไม้ ดูแลต้นไม้ จัดสวน', 'ธรรมชาติวิทยา', 1, 0),
(74, 'ฉันเป็นคนรักสัตว์ ชอบเลี้ยงสัตว์', 'ธรรมชาติวิทยา', 1, 0),
(75, 'หากมีโครงการอนุรักษ์ธรรมชาติ ฉันมักจะสนใจเข้าร่วมอยู่เสมอ ', 'ธรรมชาติวิทยา', 1, 0),
(76, 'ฉันสามารถอธิบายกลไกต่างๆ ของธรรมชาติได้เป็นอย่างดี', 'ธรรมชาติวิทยา', 1, 0),
(77, 'ฉันชอบใช้ชีวิตแบบชนบท ', 'ธรรมชาติวิทยา', 1, 0),
(78, 'ฉันชอบดูสารคดี', 'ธรรมชาติวิทยา', 1, 0),
(79, 'ฉันชอบเที่ยวสวนสัตว์ ', 'ธรรมชาติวิทยา', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `s_id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `test_name` varchar(35) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`s_id`, `user`, `test_name`, `score`) VALUES
(1, 'surin_nin675@hotmail.com', 'บุคลิกภาพ16PF', 10),
(2, 'surin_nin675@hotmail.com', 'พหุปัญญา', 9),
(3, 'surin_nin675@hotmail.com', 'ความสนใจในอาชีพ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `sex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `lname`, `email`, `pass`, `sex`) VALUES
('11', '11', '111', '1', 1),
('2', '2', '12', '2', 1),
('สุรินทร์', 'นิลชัย', 'surin_nin675@hotmail.com', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `history_test`
--
ALTER TABLE `history_test`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `question_16pf`
--
ALTER TABLE `question_16pf`
  ADD PRIMARY KEY (`q_16pf_id`);

--
-- Indexes for table `question_intel`
--
ALTER TABLE `question_intel`
  ADD PRIMARY KEY (`q_Intel_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `history_test`
--
ALTER TABLE `history_test`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `question_16pf`
--
ALTER TABLE `question_16pf`
  MODIFY `q_16pf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `question_intel`
--
ALTER TABLE `question_intel`
  MODIFY `q_Intel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
