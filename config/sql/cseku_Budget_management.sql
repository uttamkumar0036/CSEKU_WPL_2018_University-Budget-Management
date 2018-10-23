-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 10:25 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget_sector`
--

CREATE TABLE `budget_sector` (
  `budget_sector_id` int(11) NOT NULL,
  `budget_sector_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_sector`
--

INSERT INTO `budget_sector` (`budget_sector_id`, `budget_sector_name`) VALUES
(30, 'Pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `budget_subsector`
--

CREATE TABLE `budget_subsector` (
  `budget_subsector_id` int(11) NOT NULL,
  `budget_sector_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `budget_progress` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `amount` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_subsector`
--

INSERT INTO `budget_subsector` (`budget_subsector_id`, `budget_sector_id`, `start_date`, `end_date`, `budget_progress`, `description`, `amount`) VALUES
(9, 31, '2018-10-16', '2018-10-23', '33', 'dsdsaad', 0),
(8, 31, '2018-10-16', '2018-10-23', '33', 'dsdsaad', 0),
(7, 30, '2018-10-02', '2018-10-04', '44', 'ssssssssssss', 0),
(6, 29, '2018-10-10', '2018-10-25', '78', 'fnbfg', 0),
(10, 32, '2018-10-01', '2018-10-31', '10', 'description', 10000),
(11, 32, '2018-10-01', '2018-10-31', '15', 'Description', 210000);

-- --------------------------------------------------------

--
-- Table structure for table `jms_job`
--

CREATE TABLE `jms_job` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `LastDateOfApplication` date NOT NULL,
  `Salary` float NOT NULL,
  `Qualification` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

CREATE TABLE `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{858FB3B4-7E8E-4659-A5B7-05DF481D17BF}', 'CSE-1101', 'Computer Fundamentals', 2, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{D7A37FAE-A70A-4556-87DA-AC535FC11B59}', 'Mathematicsss', 'Computer Fundamentals', 2, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

CREATE TABLE `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

CREATE TABLE `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

CREATE TABLE `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

CREATE TABLE `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

CREATE TABLE `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

CREATE TABLE `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

CREATE TABLE `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

CREATE TABLE `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

CREATE TABLE `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

CREATE TABLE `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

CREATE TABLE `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

CREATE TABLE `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

CREATE TABLE `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

CREATE TABLE `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

CREATE TABLE `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematicsss', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{93B456E5-64CF-4323-B41B-779AC1F1C069}', 'claster', '', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{AB8DE15F-DF2D-487D-B73D-158EA3E185AB}', 'Mathematicsss', '', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

CREATE TABLE `ums_permission` (
  `TableID` int(11) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(4005, 'COURSE_C', 'COURSE_C', 'COURSE'),
(4006, 'COURSE_R', 'COURSE_R', 'COURSE'),
(4007, 'COURSE_U', 'COURSE_U', 'COURSE'),
(4008, 'COURSE_D', 'COURSE_D', 'COURSE'),
(4009, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(4010, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(4011, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(4012, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(4013, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(4014, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(4015, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(4016, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(4017, 'CLUB_C', 'CLUB_C', 'CLUB'),
(4018, 'CLUB_R', 'CLUB_R', 'CLUB'),
(4019, 'CLUB_U', 'CLUB_U', 'CLUB'),
(4020, 'CLUB_D', 'CLUB_D', 'CLUB'),
(4021, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(4022, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(4023, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(4024, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(4025, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(4026, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(4027, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(4028, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(4029, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(4030, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(4031, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(4032, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(4033, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(4034, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(4035, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(4036, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(4037, 'FILE_C', 'FILE_C', 'FILE'),
(4038, 'FILE_R', 'FILE_R', 'FILE'),
(4039, 'FILE_U', 'FILE_U', 'FILE'),
(4040, 'FILE_D', 'FILE_D', 'FILE'),
(4041, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(4042, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(4043, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(4044, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(4045, 'POSITION_C', 'POSITION_C', 'POSITION'),
(4046, 'POSITION_R', 'POSITION_R', 'POSITION'),
(4047, 'POSITION_U', 'POSITION_U', 'POSITION'),
(4048, 'POSITION_D', 'POSITION_D', 'POSITION'),
(4049, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(4050, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(4051, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(4052, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(4053, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(4054, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(4055, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(4056, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(4057, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(4058, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(4059, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(4060, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(4061, 'RESULT_C', 'RESULT_C', 'RESULT'),
(4062, 'RESULT_R', 'RESULT_R', 'RESULT'),
(4063, 'RESULT_U', 'RESULT_U', 'RESULT'),
(4064, 'RESULT_D', 'RESULT_D', 'RESULT'),
(4065, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(4066, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(4067, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(4068, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(4069, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(4070, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(4071, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(4072, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(4073, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(4074, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(4075, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(4076, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(4077, 'ROLE_C', 'ROLE_C', 'ROLE'),
(4078, 'ROLE_R', 'ROLE_R', 'ROLE'),
(4079, 'ROLE_U', 'ROLE_U', 'ROLE'),
(4080, 'ROLE_D', 'ROLE_D', 'ROLE'),
(4081, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(4082, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(4083, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(4084, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(4085, 'SESSION_C', 'SESSION_C', 'SESSION'),
(4086, 'SESSION_R', 'SESSION_R', 'SESSION'),
(4087, 'SESSION_U', 'SESSION_U', 'SESSION'),
(4088, 'SESSION_D', 'SESSION_D', 'SESSION'),
(4089, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(4090, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(4091, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(4092, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(4093, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(4094, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(4095, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(4096, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(4097, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(4098, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(4099, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(4100, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(4101, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(4102, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(4103, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(4104, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(4105, 'TERM_C', 'TERM_C', 'TERM'),
(4106, 'TERM_R', 'TERM_R', 'TERM'),
(4107, 'TERM_U', 'TERM_U', 'TERM'),
(4108, 'TERM_D', 'TERM_D', 'TERM'),
(4109, 'USER_C', 'USER_C', 'USER'),
(4110, 'USER_R', 'USER_R', 'USER'),
(4111, 'USER_U', 'USER_U', 'USER'),
(4112, 'USER_D', 'USER_D', 'USER'),
(4113, 'YEAR_C', 'YEAR_C', 'YEAR'),
(4114, 'YEAR_R', 'YEAR_R', 'YEAR'),
(4115, 'YEAR_U', 'YEAR_U', 'YEAR'),
(4116, 'YEAR_D', 'YEAR_D', 'YEAR'),
(4117, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(4118, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(4119, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(4120, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(4121, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(4122, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(4123, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(4124, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(4125, 'JOB_C', 'JOB_C', 'JOB'),
(4126, 'JOB_R', 'JOB_R', 'JOB'),
(4127, 'JOB_U', 'JOB_U', 'JOB'),
(4128, 'JOB_D', 'JOB_D', 'JOB'),
(4129, 'BUDGET', 'BUDGET_C', 'BUDGET'),
(4130, 'BUDGET_R', 'BUDGET_R', 'BUDGET'),
(4131, 'BUDGET_U', 'BUDGET_U', 'BUDGET'),
(4132, 'BUDGET_D', 'BUDGET_D', 'BUDGET');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

CREATE TABLE `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

CREATE TABLE `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

CREATE TABLE `ums_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(1891, 'administrator', 'ATTENDANCE_C'),
(1892, 'administrator', 'ATTENDANCE_R'),
(1893, 'administrator', 'ATTENDANCE_U'),
(1894, 'administrator', 'ATTENDANCE_D'),
(1895, 'administrator', 'BUDGET'),
(1896, 'administrator', 'BUDGET_R'),
(1897, 'administrator', 'BUDGET_U'),
(1898, 'administrator', 'BUDGET_D'),
(1899, 'administrator', 'CLUB_C'),
(1900, 'administrator', 'CLUB_R'),
(1901, 'administrator', 'CLUB_U'),
(1902, 'administrator', 'CLUB_D'),
(1903, 'administrator', 'COURSE_C'),
(1904, 'administrator', 'COURSE_R'),
(1905, 'administrator', 'COURSE_U'),
(1906, 'administrator', 'COURSE_D'),
(1907, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(1908, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(1909, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(1910, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(1911, 'administrator', 'COURSE_TYPE_C'),
(1912, 'administrator', 'COURSE_TYPE_R'),
(1913, 'administrator', 'COURSE_TYPE_U'),
(1914, 'administrator', 'COURSE_TYPE_D'),
(1915, 'administrator', 'DISCIPLINE_C'),
(1916, 'administrator', 'DISCIPLINE_R'),
(1917, 'administrator', 'DISCIPLINE_U'),
(1918, 'administrator', 'DISCIPLINE_D'),
(1919, 'administrator', 'DISCUSSION_C'),
(1920, 'administrator', 'DISCUSSION_R'),
(1921, 'administrator', 'DISCUSSION_U'),
(1922, 'administrator', 'DISCUSSION_D'),
(1923, 'administrator', 'DISCUSSION_CAT_C'),
(1924, 'administrator', 'DISCUSSION_CAT_R'),
(1925, 'administrator', 'DISCUSSION_CAT_U'),
(1926, 'administrator', 'DISCUSSION_CAT_D'),
(1927, 'administrator', 'DISCUSSION_COMMENT_C'),
(1928, 'administrator', 'DISCUSSION_COMMENT_R'),
(1929, 'administrator', 'DISCUSSION_COMMENT_U'),
(1930, 'administrator', 'DISCUSSION_COMMENT_D'),
(1931, 'administrator', 'FILE_C'),
(1932, 'administrator', 'FILE_R'),
(1933, 'administrator', 'FILE_U'),
(1934, 'administrator', 'FILE_D'),
(1935, 'administrator', 'GRADE_SETUP_C'),
(1936, 'administrator', 'GRADE_SETUP_R'),
(1937, 'administrator', 'GRADE_SETUP_U'),
(1938, 'administrator', 'GRADE_SETUP_D'),
(1939, 'administrator', 'JOB_C'),
(1940, 'administrator', 'JOB_R'),
(1941, 'administrator', 'JOB_U'),
(1942, 'administrator', 'JOB_D'),
(1943, 'administrator', 'MARKS_SETUP_C'),
(1944, 'administrator', 'MARKS_SETUP_R'),
(1945, 'administrator', 'MARKS_SETUP_U'),
(1946, 'administrator', 'MARKS_SETUP_D'),
(1947, 'administrator', 'PERMISSION_C'),
(1948, 'administrator', 'PERMISSION_R'),
(1949, 'administrator', 'PERMISSION_U'),
(1950, 'administrator', 'PERMISSION_D'),
(1951, 'administrator', 'POSITION_C'),
(1952, 'administrator', 'POSITION_R'),
(1953, 'administrator', 'POSITION_U'),
(1954, 'administrator', 'POSITION_D'),
(1955, 'administrator', 'PROJECT_C'),
(1956, 'administrator', 'PROJECT_R'),
(1957, 'administrator', 'PROJECT_U'),
(1958, 'administrator', 'PROJECT_D'),
(1959, 'administrator', 'QUESTION_C'),
(1960, 'administrator', 'QUESTION_R'),
(1961, 'administrator', 'QUESTION_U'),
(1962, 'administrator', 'QUESTION_D'),
(1963, 'administrator', 'REGISTRATION_C'),
(1964, 'administrator', 'REGISTRATION_R'),
(1965, 'administrator', 'REGISTRATION_U'),
(1966, 'administrator', 'REGISTRATION_D'),
(1967, 'administrator', 'RESULT_C'),
(1968, 'administrator', 'RESULT_R'),
(1969, 'administrator', 'RESULT_U'),
(1970, 'administrator', 'RESULT_D'),
(1971, 'administrator', 'ROLE_C'),
(1972, 'administrator', 'ROLE_R'),
(1973, 'administrator', 'ROLE_U'),
(1974, 'administrator', 'ROLE_D'),
(1975, 'administrator', 'SCHOOL_C'),
(1976, 'administrator', 'SCHOOL_R'),
(1977, 'administrator', 'SCHOOL_U'),
(1978, 'administrator', 'SCHOOL_D'),
(1979, 'administrator', 'SESSION_C'),
(1980, 'administrator', 'SESSION_R'),
(1981, 'administrator', 'SESSION_U'),
(1982, 'administrator', 'SESSION_D'),
(1983, 'administrator', 'SURVEY_C'),
(1984, 'administrator', 'SURVEY_R'),
(1985, 'administrator', 'SURVEY_U'),
(1986, 'administrator', 'SURVEY_D'),
(1987, 'administrator', 'SURVEY_QUESTION_C'),
(1988, 'administrator', 'SURVEY_QUESTION_R'),
(1989, 'administrator', 'SURVEY_QUESTION_U'),
(1990, 'administrator', 'SURVEY_QUESTION_D'),
(1991, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(1992, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(1993, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(1994, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(1995, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(1996, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(1997, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(1998, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(1999, 'administrator', 'TERM_C'),
(2000, 'administrator', 'TERM_R'),
(2001, 'administrator', 'TERM_U'),
(2002, 'administrator', 'TERM_D'),
(2003, 'administrator', 'USER_C'),
(2004, 'administrator', 'USER_R'),
(2005, 'administrator', 'USER_U'),
(2006, 'administrator', 'USER_D'),
(2007, 'administrator', 'VIDEO_C'),
(2008, 'administrator', 'VIDEO_R'),
(2009, 'administrator', 'VIDEO_U'),
(2010, 'administrator', 'VIDEO_D'),
(2011, 'administrator', 'VIDEO_COMMENT_C'),
(2012, 'administrator', 'VIDEO_COMMENT_R'),
(2013, 'administrator', 'VIDEO_COMMENT_U'),
(2014, 'administrator', 'VIDEO_COMMENT_D'),
(2015, 'administrator', 'YEAR_C'),
(2016, 'administrator', 'YEAR_R'),
(2017, 'administrator', 'YEAR_U'),
(2018, 'administrator', 'YEAR_D'),
(2120, 'student', 'CLUB_C'),
(2121, 'student', 'CLUB_R'),
(2122, 'student', 'CLUB_U'),
(2123, 'student', 'CLUB_D'),
(2124, 'student', 'COURSE_C'),
(2125, 'student', 'COURSE_R'),
(2126, 'student', 'COURSE_U'),
(2127, 'student', 'COURSE_D'),
(2128, 'student', 'DISCUSSION_C'),
(2129, 'student', 'DISCUSSION_R'),
(2130, 'student', 'DISCUSSION_U'),
(2131, 'student', 'DISCUSSION_D'),
(2132, 'student', 'DISCUSSION_COMMENT_C'),
(2133, 'student', 'DISCUSSION_COMMENT_R'),
(2134, 'student', 'DISCUSSION_COMMENT_U'),
(2135, 'student', 'DISCUSSION_COMMENT_D'),
(2136, 'student', 'JOB_R'),
(2137, 'student', 'PROJECT_C'),
(2138, 'student', 'PROJECT_R'),
(2139, 'student', 'PROJECT_U'),
(2140, 'student', 'PROJECT_D'),
(2141, 'student', 'QUESTION_C'),
(2142, 'student', 'QUESTION_R'),
(2143, 'student', 'QUESTION_U'),
(2144, 'student', 'QUESTION_D'),
(2145, 'student', 'REGISTRATION_R'),
(2146, 'student', 'RESULT_R'),
(2147, 'student', 'USER_R'),
(2148, 'student', 'VIDEO_C'),
(2149, 'student', 'VIDEO_R'),
(2150, 'student', 'VIDEO_U'),
(2151, 'student', 'VIDEO_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

CREATE TABLE `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

CREATE TABLE `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('', '160236', 'uttamkumar0036@gmail.com', '123', 'uttam', NULL, 'paul', '160236', NULL, NULL, NULL, NULL),
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$pM7S85LE300vkDhYnFIz0.WKfpSPJLMNzTS4y1wLCH0TeR0qno27q', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$dC79StvSEJN4.ued1YBjkujLtx7vFcuXE.LqMOiJYwNAeTOEiHOzO', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('monir150227@gmail.com', '150227', 'monir150227@gmail.com', '$2y$10$9TIXf/7/Hbzk5zJd9MlNGeM2ss/N3n2zcY4OmMGt5oJJnm4WfUPyS', 'Md:', 'Moni', 'ruzzaman', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$nLZhZRneURR.v2AFqWw9KOe6/J60pCV/ioBnJnruw5H/Xf3x0lFy6', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

CREATE TABLE `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('monir150227@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

CREATE TABLE `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

CREATE TABLE `ums_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

CREATE TABLE `ums_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator'),
(166, 'monir150227@gmail.com', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget_sector`
--
ALTER TABLE `budget_sector`
  ADD PRIMARY KEY (`budget_sector_id`);

--
-- Indexes for table `budget_subsector`
--
ALTER TABLE `budget_subsector`
  ADD PRIMARY KEY (`budget_subsector_id`);

--
-- Indexes for table `jms_job`
--
ALTER TABLE `jms_job`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course`
--
ALTER TABLE `reg_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_sessional_type`
--
ALTER TABLE `reg_course_sessional_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_student_registration`
--
ALTER TABLE `reg_course_student_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_teacher`
--
ALTER TABLE `reg_course_teacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_teacher_registration`
--
ALTER TABLE `reg_course_teacher_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_type`
--
ALTER TABLE `reg_course_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_registration_session`
--
ALTER TABLE `reg_registration_session`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_term`
--
ALTER TABLE `reg_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_year`
--
ALTER TABLE `reg_year`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_result`
--
ALTER TABLE `rms_course_marks_result`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_result_publish`
--
ALTER TABLE `rms_course_marks_result_publish`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_tests`
--
ALTER TABLE `rms_course_marks_tests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_grade_setup`
--
ALTER TABLE `rms_grade_setup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_marks_setup`
--
ALTER TABLE `rms_marks_setup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_discipline`
--
ALTER TABLE `ums_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_permission`
--
ALTER TABLE `ums_permission`
  ADD PRIMARY KEY (`TableID`);

--
-- Indexes for table `ums_position`
--
ALTER TABLE `ums_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_role`
--
ALTER TABLE `ums_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `ums_user`
--
ALTER TABLE `ums_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `ums_user_details`
--
ALTER TABLE `ums_user_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget_sector`
--
ALTER TABLE `budget_sector`
  MODIFY `budget_sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `budget_subsector`
--
ALTER TABLE `budget_subsector`
  MODIFY `budget_subsector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ums_permission`
--
ALTER TABLE `ums_permission`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4133;
--
-- AUTO_INCREMENT for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2152;
--
-- AUTO_INCREMENT for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
