-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 06:33 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecarparkingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addslots`
--

CREATE TABLE `addslots` (
  `sid` int(30) NOT NULL,
  `slotnumber` varchar(30) NOT NULL,
  `slotarea` varchar(30) NOT NULL,
  `fromdate` varchar(30) NOT NULL,
  `todate` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `Amount` varchar(30) NOT NULL,
  `availability` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addslots`
--

INSERT INTO `addslots` (`sid`, `slotnumber`, `slotarea`, `fromdate`, `todate`, `time`, `Amount`, `availability`) VALUES
(1, '544', 'gdfgfcg', '2019-11-14', '2019-11-08', '24hrs', '', '20'),
(2, '789', 'mmthota', '2019-11-23', '2019-11-30', '24hrs', '', '30'),
(3, '55', 'fdfdfd', '2019-11-16', '2019-11-15', '24hrs', '100rs', '24'),
(4, '1', 'asd', '2019-09-24', '2019-10-25', '', '', ''),
(5, '1', 'asd', '2019-01-11', '2019-01-13', '48', '200', '1'),
(6, '2', 'asd', '2019-11-13', '2019-11-23', '24', '100', '24');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingslots`
--

CREATE TABLE `bookingslots` (
  `uid` int(10) NOT NULL,
  `vtype` varchar(30) NOT NULL,
  `vmodel` varchar(30) NOT NULL,
  `bdate` varchar(30) NOT NULL,
  `fdate` varchar(30) NOT NULL,
  `todate` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `area` varchar(35) NOT NULL,
  `slot` varchar(30) NOT NULL,
  `rc` blob NOT NULL,
  `DL` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingslots`
--

INSERT INTO `bookingslots` (`uid`, `vtype`, `vmodel`, `bdate`, `fdate`, `todate`, `time`, `area`, `slot`, `rc`, `DL`) VALUES
(2, 'dfhd', 'dh', '2019-11-21', '2019-11-21', '2019-11-29', '24', 'ghh', '1', 0x3f504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000003f504c5445ffffff000000fbfbfbf7f7f7ebebebdadada5e5e5ef3f3f3e5e5e54545451b1b1ba3a3a3e8e8e8efefef3f3f3fcacaca4b4b4b6f6f6f232323c4c4c43131313f3f3fbbbbbbd2d2d27a7a7a3f3f3fa0a0a03f3f3f4040400808083636360f0f0fadadad2a2a2a555555656565b1b1b11e1e1e6c6c6c1515155959594f4f4f6363635ca1a84b0000073f49444154783fed3fdb3fa2300c3f47b03f22a022270f3f3fa779ff075c6767b569453fda42d92fffc55c71486cd3a469c87c7d21083f20083f20083f20083f20083f20083f20083f20083f20083f20083f201a62d87ee4383f45ba583879e4db46db02c9c52ec2e97935ebdd3fadce53cf216d3f253f7e6a0da9723fd1ca5af4db164e02be352ad1eeaea5e5b72de0673ffeea3f7abf6c03b36d313f31fdcb5bfd7eb8f83fb64515c220e1a63f3f57bc2e2e3a463eacaadf3fa1d3b9a9ea26af163f474e49c73f5532a9a5df0f3f4ecd547f5e5bc15e6f1eb42d76753fd3a3fca3b91516e4672af649115af33f493c2ada16bc2af93ff4736b197317c54beb61a00f791be2d627e2255f79e5f32ff0786b3f470dcb2a041fc6ac1e3f3f423ffcc51d08e26cce0d26f1ab7d3f1127ece5c371633f3f7266253fde05643f3fbde1dc3f3f1fb064c4ddda156eb1d9add552b93f1fe1afa1b056b550ccb4e04d6bad4dd164361349d52dc3203f3fcc45e710353fbb3f1a3fa60bd73fd342a13f1fc244a3fb2a3678c3de3f3b353f505320e6aa3f3f043ac6543f7c1f033f705d373f0e3f295e741dc41c1a61edbba129e6d2653f3f0dad50e07e683f756cb8397c20a248040d3f1b2d7da209a6d94424676f3f3fd6d3d127ba60db2bb609023f3872254b2703304927621b3f3118441da7a947c55b3f1d2c190b304d254b2703bab31f3f0e3f4f27fa5caa6c5230e8ef6f3faef536d864e877be08cc503ce80261dff3d4475b001b124f0a16f4213f44d9e440bde1073fdd3f1a73fdb04f3534643f3f4fb03f3ee522513639d05f7f2f3f2e1bd36d6226513639d074d254fcbc7330bd3f652b51363950573f3f2ff406b5e63f44d9e44033343f3f233430da483f4c16ffbf3ff4bc49ce2c3d483f4d0edbff7ea5c9eeb2093fa54c60aa3fb7d8dd651b7ee0f1e90e7127513639500bda3f1f734674aeebb74104a9c45cc643f43bd32754b850343f643ff4211a263fa9703b51e90838ba3f2a3f1ce8c143ed3ffe3f3f2a383f2a3f1cc0e9ef526c3fc249aae3493030c4b93f47b4413f3f3f66f8e5d23fbe3f0b3d01aca45b1d33c2063fa6073f696a3f52aaa57ea9b62f663f0aa5db60193f3f3f3f4941f47af533196370f75ed362d302ca58773f19dfe06efd023f5f6c2864dd7ca703eefdd6f33ff43f3f725bcfed0760255eeb3f0dbe313fc54db5d2a631acf73b6b5cbdc7d4ce3fabcf357b07ee3be86a3f7f3f0249ab57feb075ef53a5127e3fcdd40767d5266a3fc13f0443bec660ab454fd1fbe0c63fd8ba77ed0ba14346dc5ef86ea63f25774323527e3fbb6725de15af3fd1cc77ece57b1d436e0ec2d5411fbe3faf3fd1f73ffb3df40c483962fe3fc3d3302fbdd019f21f66acf43bdb2ee541c52b56e11a3454353f7e717ebca82b0a5e55dc3d4a7f3fe3acb00862120745686dcb2ed87546c1ab2deecb3478c3be13367863ecbdd73f23d1381a2dc3cceb7da03773baf72db06fbdd7eb4e373f5a1f3c7ea5f73f750707f0173779af5dafc63f273ad24fb2f54bedd6d954f3bdc45bc872ff7ccd3fef3f3f72114f18446952d63c627e4c3f2ecf4f06373f1ccfca6e15293fccf23fc8ef3f037c3f6b3ff83ffff33fd81dd82421083f20083f2008a21d03e24779ba0c6f2cd33cf2c97fb239ec073fe4b81b66db114c67ac47db6cb83b7a3f40d3ca3f3f183f37d91e5ef516dc1cb6ab69d1cdcda241bcb2a6a5e5cc3c626859c9f60ca31f27d5d5fbe53fc4e3ae28e9c64efd3f3f3f643fb80b5649f2e4f05e3f276ca6b9eed9453f3f1e1dd6603fea7c3f481e3fe83f30d4b65feb2014e97859c6dcd3d27f38ef255fdf787fa976b5fa6650d2d0f31f3f5936b13fd03f48dffdf1073fdb273f1326e749367b1e0d3fb46a116d3f67c7683fcc4ad2e83f5d3f284d68ae3f2721daf8c7be3f3f3fb8b93f3fffcea25cdf092fe54aae1c4ddc637c2c3f6ff77cec78ae6359ee643f5a783f4569dbf5a4de7f3f306c3f2c5b7f56edb76e1b2425336ce6d8f5f77ea6ed3fc4b2ebb63fc0e312173f7f593ff80ab328f1a8edf6183f1e7ff5c96715b0d1e4614eccdaaba9351f3ffce5734f3f5e783f5cb7d53fde0d79fd564b1907d763be7d72af17b612c50d1ebc7c22abb029f6f8a9dac67ad3e715cc22793ff420e2633f69e3cedfe6ddbc25573ffe3f7bfeb1e1c2a23eafa06013bae71839f73f0f5a170930e614acd970b61a3feb7d7e6c5045ae226f5dab657075c65cbcd4dc3ff9305937b10955fdb8ee3fdd7536d6f33ffbca45a13fe63fb1a13f7fc1be55edb7745cd7fd5ce9cbfee16f3f77aa0e1a03e66db306aaa5ed49a30af22a5e3fbb453ff113eb26c2fe3f29173faa5e6d60dbf5de2857fcb65fd83d3fe25d7f00e3c5c65afc3345ff3f52531cc32fee7b6163d93e66e67c2b3f6d0cc6137e37b769333f204a615b100277df3f26f73303681d6b75394626146e363f69c3572b6bb1c4a46572556f7902e31615b53f70e13b3e683f28061beeab5902a0b52bd910bec63f3fd5aae9a30cacf03f2b79c36b60fb13253f380039be691bd93d137c3fba526224740cd53f154f01690d35ab29cd7eb5d53f7271f7c74725cfefdf3fb0b5f3e77b5f45457ba8f837c6dfb67718640cff3fe248d9a6cdf6acf3b7d7ead173bab7ac44653865b45fe8626a53bf3f20083f20083f20083f20083f20083f20083f2008a21b7f00ef3f5d4d4e4a11770000000049454e44ae42603f, 0x7366647364),
(2, 'car', 'a', ' 19 11 2019, 09:09:39 AM', '2019-11-01', '2019-11-01', '24hr', 'fdfdfd', '1', 0x3f504e470d0a1a0a0000000d494844520000003f0000003f08020000003f3f3f050000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000036669545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e332d633031312036362e3134353636312c20323031322f30322f30362d31343a35363a32372020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d704d4d3a4f726967696e616c446f63756d656e7449443d22786d702e6469643a41353838423237393842313845333131424343454439453738463338374339342220786d704d4d3a446f63756d656e7449443d22786d702e6469643a45433944464332433532373531314536413345444636333532463742364243342220786d704d4d3a496e7374616e636549443d22786d702e6969643a45433944464332423532373531314536413345444636333532463742364243342220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f70204353352e312057696e646f7773223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a4441323342433834303835304536313141414545464530463246424332304641222073745265663a646f63756d656e7449443d22786d702e6469643a4135383842323739384231384533313142434345443945373846333837433934222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3ec6b2b72c000014fe4944415478daec5d0b5415651ebf3f613f3f683fa0c05aa03fa8016e3f20653f0a3f516ee8f63229733b27b073ca5a3ff674767d3fe5391b783fb93f666de5233fd50d4ab33f402dad3f156601653c14bb260f3f106d4ffb1bfefaf9313377eedc3b2377eef5fb3f7bee3f3bf3bde6fffbbfbefff7cddc3f7efbed373f204bd245021b3f3f203f3fc0463fc0466023486023486023b0d141d3e2a24e1c6ff7257ec52624ae7ea3b077fabaf8bcb6ee63c0f4325d2c5820b01164317f53555e46073f1f6faf3d50ed75dc292ed8d4dcd448c72bd66c0c080cea1f18147d4d3f4fc56900e9d17bd2bd5a3f67cf5b3f3fb354d8342bd2e60d6b3fb66d12d8583f3f3d3f05ed0742bd137f0a3fe60ec1eb24a7a466663d193a2c5ce83fb528203010daf3c0cc492cd8391fd4a7776e262c24f84f7fbcc53f3f3fed6d2ded1dfb6b3f5adb3b3f0ca05f5fbfab2242c2ae1c101ce83f30c8df65bdaf39525ef135fb3f3f3f3f3fb5a8b2bc0c515c6c3f3fdbb4f6e6daea7fe7196901203feefd76ef57075dad78754448d2f83fa3a33f1ae93d3c2ef5d8af413f67b524746844daac393ee26f3f63c310daf26ef9617bab4e5db96d72ecf831c33ff70b6c22e2d3445e40db360e786cde343dec3f15d559d2b2d4c71b073f3f3f00d66fdf5de9a80020b96d725cbfbe3f7a75c4d1c74bc73f347e04be55e1013000cf07a2412f3fa1013fd264413fa031be11a95b4b6f06fe6eeca0c8b17d0306b2332d3f7c79acfecbae3f5b54cb033fef1aec7c783f3123c13f29ebe3d70fed073f46b3f6ffd7d53fc6d1c5afa73a05360e092c3fbee95e1e15767ef83fb3ec35e5073fdba6e420603f3f3ff0d25b1fd2cf3fa418040beaa141cccde1f1693f47290dbfded8d95cfd7143453fc0463fc07df04ea340c83f0430115178c7b126d925cc28313f3ff62062c63c46555d464d3f0f3f1db2c0af1f42e43f3f63d0bea514c8f3fe06f3066d601807636ecdf61f344c79293e46f23aa3470c55b566dac03042cb685fa958172e36e01a6456af3ffbf53fbee91ee5f9d12324c0c6c70c57055e0f300c3ff05e3f605a173ff0f8543fca3f7db06f4aaf3f3f0dc64d3f65a80e3f3fb925a5cfbb10b101a33f42ddd6de3fb77af53fa9531f3f3fff3f3d7b54d9a73c3f3f18a3eaa53f36aabebefef1453fd03ebe71acd6fe24110bc0a045294f3f6b5f7cf1051dbff6faebafac5b77ff7df7c91055d60a564b2d2b3f0718e31312dadada700ce0d1fe073b773f1b3bb667fb433fded8fa060c3f3fd9be6307033f08d2ad3fe90eda3f5b27682401734647dbdafeba74a97b3ffbbc4d3f4ba80c18623f113fe9b4fd7603edfb32361dc70ec9ce444646cace0c1830c040fb4d4edb0f32d0be2f63f33fc5440fae65dcb871fc3fa773733f15db3f6bf5b4af3f48fe2537570676f6a33f3a45f442c4e6d80f5f2a4fc239676765dd3f3f3fcfb6ad5b75f26e573fcac6c41645fbd01bb40f0940e33367cedcfbf9e73850005f27e2343fcb5d3fb7c83cf63fa0a055cf3faf51eb70f5c7ca3fa5ffadc1dc5316add96bca3fdf384b56125119623fcdf63f127a2351ed27ff74a93cb004c7e5dcb4b775763fda5f7b4869d31a2b3f5d6a1f3f3bca795f70d8c073a8ea3f23ff71603f3fc83feefd16df25dddf326aa828d2ef3f50f2e067db442c703fc00ea52aa802a33f3f6e6defa0cd37ec4046aab5543f11796875cb3f3f065fa05efb0a3f5565f1f6dd557c44d0d9755a09eabe3fe7b43f1b74d76ac0d8acb3b606d5415845eb3f3f33523f00483007c2794741337cccfeda265e3f763f56cf3f1cab6adc7eacf90f1a471768bf3f5f3f2001b03f37d7e1bc757c3f15b1210107427aec1b0b01b6bc5baef43d61210354b73e0100e83f7ef7266c3f3f04dbb5b1a004e13ff2d23fdd553fcde6fde4add8d03f3fea2569df73c8003f3f27292531262c24583f3f3faabf11d8f436296148fafd3f60d71f1310d83f4f305fa3a3cf2d040015d505503f3fe75567a6afece8f4116c245d493f74e56a493f3f0a6cac4549e34702a1db7c4b696cdefb1c3f2c3f7e6cde746f7fa2c337f53fe0b1f91c3fe7a405363f0436021b41021b3f3f203f3f204bce3d0fffd8b6f6ec533f3f303fc7e7eaf03fd02b3f3d3e41e9ec3addfc63eb773ff6ce3fa73f15effdb8c36f5444bc3f6273b2ebd4770d76d54bbbbabfc3423faf3f08193f66782f2f3fb54a2f323ab4f7ab3fdaef616931f6a6234b63e35cb1ecadf874aff607abbe38c074fabec1beabacda3fc45c4036cd253fb6143f3f6b3327c73fa7bcf2617bdb3fdd3f2ea1d23f20c867b1193234c25553b3b1a06474f4303f7739b847db77573faaed00d5a611d77a60c9ae3fe234f7de3fb8bfb6e9d9353bbe37c9ec00efbf6f78df0d607c3f3fee1fe83f59e8ec3af5d25b1fbaf14a3ba51d03303a5fbca6a45e7b27b467b031727bf040fcde5a373f59fbe63faa3fd9ceab60790d36065f090b5ba4fa00542f00133f3fe8e3362d6a3f51b3b0abb4da55e3061f631018e352e505d83f12eac0b8b9b43f766341a9416024bdb9ded7f5c62ccbd0bd0dfab4ce70d96de7dfc3535e1be3e3d8d8ba5fab6c4a280ce3a667da6f4ab8dc3f7fdce1496caebb7e3f29ed3fe94e2d3f3fb8aea73ca5da3c44dea737443b1cbfe416e43477a93f264eb930b041c0633fd7f9aec1ae3f2f702fda56356826ca3fa5b101a5dd69daabe21d0100a5693529a5ef413fe6096c66cd316bba00d551f53a15d507cd1a6dc6030b2e206c40a9e6a93f32123fc63fb52403f3eba908cd63d8cc7e603f59e9a9fd35f277713fecad316b3f0f662fb2793f3c3f0d3f5968d23fca295f3fc23fd26e50693c3f46f32436e475cc3217b2f70b3f15052ccc5d6af334796c0f54ceca7cb322020ea743e658dd790b3ceb693c3f0d6e3ed30c3fceeb3f295100c2c8ccac45360b3f27f70e3e3ffda429363f4162caea75ce73f91e5949b31636a067d76c34ce3fef1beda440c63f03b2733f7a3c04b00a360066f51b3f06e139fca3340335fe3f144428f03436cb3fe7f743c3f1e43c67f02f0c5bd9b7db3f3f3f066b66b3125962afba71be4069487b3c251f3e3f0dd913234ef8e4c95327dd7536e8dab85d3d1fd44bffefa93f6a0f543f7a4fba1bffa43d7372dc76cd151d6d3fb0593facf5fc0d6ccbabdb3f7263dee75e3f06542c0b3fe5f43f51deb2dccd1bd6ea2f1f1612ec522c20393f3ff9563ffc7b1f36a0aaf2b2654f653537353fde320265ccfc2de860bc061b101ccfe657d7aecf7bdeac0631af5c3fbbd4e2eae21dd8104175d6e7af2cdab6c94823dd59b2277be1cfd32f2c6c0c22e43fa87819360ca1a23fb73f0b36e9f143c023edce39d6c93ff938363ff6ec2a2af9a078cfae62e5642839256de23fd4e43f54eb7b7bdfc43f0769dfe73fd67c5d1d1018e41b3ff80e363e4c021b3f3f203f3fc0463fc0466023b820b01124b011d8b8373faf3d70e63fa6b8ee27284c3fc3db1b6aedf5b5c77f3a3fe33f3fe8c13f5141573f3aadd5fe53f3d1fa3ad4c571dfcbfb3f44463f3f3f3577543f07aaba7e393fe3c02b3f3f5f13ab67545ad824460da60369a9783f3f7f3ffdc3cd713f7f3f4d485cfd46a1eceae60d6bd7e73f2fcb7d013f19b3e6c83fb91abfa9dabc223f3f672fce3ff108b73fabc444507af63fa8f83f745cf1fe3fca3f5bc16559d76861d23dd9c0c911d73e7a230f3fcace3f777153ef3f3f3f213bffe93beb3f2d5c4fc74f6c2c75ca5fb4fcdebae5ca51c54c4c3f747736e440a3aeaefd021076ede4fc2b792b3512c3cb3fcaca5b3fab4c4a4a4b671bd6fef93fb9fa05b0f8e5650c18303f01f3decbcb3f7a334fc902e2ce6b4fcfab2e29525ec2495c5202433f3f06d1ac117541fb3f24d551d125d22443d83fd6e7af7474092cdef2ea3f1c5d05a83cae50c1d9f316f079fbaaf2323fab32d03fba3f3f73da7077363f653ff5501148250af052092e33503fc6f0ac47615441455ec3d02c1a770f18423f5744340e6162a33f54f64dad4d717adf6d272d3f6cdba4ba42f5a23f4e2841a5edb56c3d3fdfee5454b0c9e9da177f27b8bdf43f2b3f3f63463fcef36610dc67b0c176c148b24bf8c95b3fe90f2de155adf0c5c524d4687cf4c4543dee414630b04c2dd038ba503f653f4dc3b2b9b0074a5575b4cd1d58cf6cdd3f3fcf43e178c6593ca03ada5dd3fdb03f6031bb1f5e63703f32ff04a630bb073f336641a83f2943151e183f523f3fb2ba4470feac35060c09d03ff44c5ee63fda34a63a72a5593fabeda8d8b17f40a0ecaafed72a30292676f366a7f1db2a5efc3f756312d33f3f4054c64ec64fcd50d63f3f4f56edc2a5d8ec3f351b2cd739262edae4dafb3a61bef8c52bc8bbb6c8f301d83f43f26061c8d03fccec4571ced63f61f13f3f3ffb3200ba3a4e30f154ad1e3878082fcb543f3fd6befe2a26453fa423a2a918ebc23d620ac41354073f347947437ac35c376d4ae203303f3feac6227e06033f3f6d070c1d164e3f47692ce90315e64e701bbca9d1491a37af0daa763feb3f3f72c07e2ae3bd097764a25f59c0e21e361318fb103f3f0307a33f2fd1d83fc7bfda023f34fcbf53ef722ed439da0c6bc63875fbc2e506f9d53fc4db5238c5753fdfa51ac73f1043b33fed4975f03fb9241f163baab830a7c75e3d00037830513f1a39dd3f3fc03fb91904606e044b1e24e80d6f7e497b3f104cb4f6b4c6656c78cb03d5e127f9da3f7b53e82c0b3fa170b03fb36e3fd7def4ccee01a838354d16243f2db2101908c144e73f325d0f422ec4696ccb3dcde7e9184c77ba010cf0a02e103f3f443b64e51c2910bb2bd93cce3f287e5ac6fd7fdb3f6f3f3506427cf2c9283670dd32f107d333b33fd4af793fe7ed3f2b610079e7d4bd275dddc3f3420763edaabdb60841e971230faf7a1b6ac43f652931b16eb93ff6b8f6fc3f0c3f3f071e76f5a54e283f3fb374dbc715bc3fe2f3d33dee6a70283fffabe65dbc3f2064703ff3576de5050eb7535bb1c71c6cc059c6533f3ff5cc58a119b24c28f40608c9e07114e0f271f3bf5e5ca2d33fea3f78333f793ff0c00440d93bec1b2f70755525e660c33fcbd93ade17442119be3f0ade525ebd6baeae07c6f97c33f8c8a26a19d13f3f464021217dcd3fa94ce015433f5664135ed5c9a9d3f9f20b733fe051f8ac1d2f702cb4d13fd8ba3f0d3f79bfb2aeaceea84b2f4b2c2ed8a4aa3f3aaba73e3fc36e463f3f72b9613673046caa1a5057794e301924213fd1aa0554b52d243cda3feab8aae8ee63e312b13f196c1a4232d9553e3fd67e5e09067afafc25cc4c23c861f9473e37a5b4786071c5fb5b3f4f66ae1848b3633f1832cb3f46e0a55d4d7f39ca3f15bfbc4c093ceb3f3f1243f9345769c6ac396c2604246abeae46f810d06d123f0aceadeb403f3f6a21b809ed29cc5bcc6ef8fec80d34ef3fea3ffdc10dbff6f4bc1bd3e7517ab1f14055c5ce2dac053fe71bc44f4aa5503f3b7e6a0659bcf6a3cd3f156e602ac8db1fb96cadc80267fbf63f5b3cb443f9181a15c408534e47a33f3f7a3f67b0a1d7d8b1b43fa3dc68b6be57dd4118e17b480fc0506809a60ed2146ffe1240421aa33fbc524d3fe267d3b7fb282e3fb30854a8a2afbcdf56da2bd535d309b64c5a08672b3f3f4635213d5323d971de3f61d77ea903ceaf58b351bfebe25768d86a1b6e6ff6e27c3fc401103fadd0b079bb724700efc93fbddb193c3f07a3d2603d3f3f7047a6460b5a7b395ec93bb33f16a7e3053f3050cd3f1a2403353442b93f09b3f6eeb64d251f141f39d400df03ef123a2ce2baeb27c0e8c9603f3fed2f29a663d50547482273213fd0e5533f08493f1f3d02d850113f1f360746433b113f1e2b776eb5d74b3e003f0312183fa8d83faa6e46d23f034e3f73c8a6f1a33f3fc254a22e3f2a2a4e6adc697a50ec4fb32e096c04363fce0736145ff2c63fcc7a7ab614c0c01b3f4e4a3fb1de5f5acc0276fce47362b0f8703f2839383c0ad1113f463f5d1e403bcad0323f6329d37c760a4d6b3fe817be3ff6f62158223f4cf9417ca3004ef2b5300c344e6dd2d868f0383f2121a8c379787e3e033fc234183fa4ba34723fa76234cfa5de692467423feecd3f74ef38a046280ec4c9c04143d011bff904c53f36d6f13f53d760c2ed0b3f3b3f622e763f3fc2f8aacb3f64d911c4ec3439477ff03f3ff6002bf141c7b4d5083fd201cd13e1c0093f7c634c3fa000b327363f76753fc02829d6a41d4cd432cda8c153784e7ed63f3fa8d5d7bf3fadbca118f54bacc178d01dcdec703fab181b1ac1f4226bcd7b7c103fabf83cbcea6dd4a5780f752116183655a43f014b47f223443fecde3f21c401fcc4bd20b2206ea03554a7b151e3c41f49b8bbbb0607d83fbbcbd83f3f08f5d03f6cbe3f180313283e47426ce2e37d4a430d1b791da5fc201d7415df3f64503fe257693f7676230b30e0335dc00f25f930f7687d1d6970f8c858443e3f3f57120228373f243fc5f1c95f7e063cbcd8d14e3e3f013f3f3937c24f3f3f4b474a3b3feec8a4fc10cf3faece136451a83ae303af133f07e75111aa3fc16000c03fa9b8cbd8a03304b2b807592a1b1c3f3f4fe6131bd23fde3beb3fbb2031563f3b693f360a60b8b24903e5fb502cff3fe91061580cc61ac4b2b2783f424f3ed5f1c2dc247c183b60404853d1293f3f26a7e8425a0fee29a43fd23f41303e3f2f2e2655c331c64041301ac13821194ad1245d413f73d9fe6e7b053f3f493f366f320b2f137469cfd03f2ada3f02ee61caece6fe341a136e0907caced07a3fbc50f7543fdf38c967b1c014483aee19dac604f3dc3f7377323fe67a3c17d005543f3f43763f322bec244c1c3e6c4a41b03f0bac23b0030343e310355eb3ed3fb5346c3618661b49edd017a0b2f5dca148252923c7c63f4e2137285f3fb7183f537555063247ed4b12363874feaaad1023d544b50e6caa4ac01ddc364c0129a32c3f0173c706c76c3f52c4c83fe11b4a201d3f3f25cca022280f3f0ebbc73f443f6cb83f596827ef54095dd43fac683c3f41763fe91c3fc12fcc496ddc3a37a41b3f41ec703f3f0b3f672308c15fb00fb73ffda125243f743f3fa5eddebb3438320ae7e916e0ffd114f84e3f023faadc0d4a360d7de1123dbc70fcd8113f053f4b3f79e6193f13e6a352103f6efa5cea0723763f7f3f7fd0a0eee0ce4653eeb0a8d1c42f5c4219723f03c322503f443f0e50786068243f5de2e73f33a36e3f3fc2f879f0abf21fbe2c1f3e263f3c0a3df83f4f477b0bbea90cb8003fe006a8ebe1636e68fa661fee0de751eb3f4ba506790f41fd0e0c3fc4f971b7a463a83f501cec2f2b3f3f24a63fc80aa3c141a13f40bae3784beafc1c6a1f75297fdad25c3f2e3f3fbd3fd43f64abf5483fe42c47c626673c3fe161303f7c553fc1e016126ebd57aa72f6c11a7c63ccb871ba29eaf13ff616f0e7d7d3a7aebb251df728c544fe01297317a12931bf11734f41021b3f3f203f3f203f3fc0463fc0c6a7e9ff020c003f02016f57353fc80000000049454e44ae42603f, 0x31);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `ctype` varchar(10) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cnumber` varchar(20) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `cexpiry` varchar(10) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `uid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `amount`, `ctype`, `cname`, `cnumber`, `cvv`, `cexpiry`, `pin`, `uid`) VALUES
(1, '100', 'debit', 'abhi', '123456', '123', '11', '3211', '2');

-- --------------------------------------------------------

--
-- Table structure for table `ureg`
--

CREATE TABLE `ureg` (
  `uid` int(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `mobileno` varchar(30) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(30) NOT NULL,
  `profile` blob NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ureg`
--

INSERT INTO `ureg` (`uid`, `uname`, `pwd`, `mobileno`, `uemail`, `address`, `state`, `country`, `profile`, `status`) VALUES
(1, 'a', '9331', '9874563210', '9876543210', 'dd', 'd', 'd', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d224800000081504c5445ffffff000000fbfbfbf7f7f7ebebebdadada5e5e5ef3f3f3e5e5e54545451b1b1ba3a3a3e8e8e8efefef848484cacaca4b4b4b6f6f6f232323c4c4c43131318a8a8abbbbbbd2d2d27a7a7a999999a0a0a09595954040400808083636360f0f0fadadad2a2a2a555555656565b1b1b11e1e1e6c6c6c1515155959594f4f4f6363635ca1a84b0000079449444154789ced9ddb9aa2300c8047b08822a022270f888aa779ff075c6767b5694585da42d92fffc55c71486cd3a469c87c7d210882200882200882200882200882200882200882200882200882200882201a62d87ee4388b45ba583879e4db46db02c9c52ec2e97935ebdd98adce53cf216d8b258b7e6a0da97294d1ca5af4db164e02be352ad1eeaea5e5b72de06798feea857abf6c03b36d318531fdcb5bfd7eb8f883b64515c220e1a6928257bc2e2e3a463eacaadf95a1d3b9a9ea26af1698474e49c7965532a9a5df0f934ecd547f5e5bc15e6f1eb42d76758ad3a3fca3b91516e4672af649115af392493c2ada16bc2af983f4736b197317c54beb61a00f791be2d627e2255f79e5f32ff0786b9d470dcb2a041fc6ac1e868f4296fcc51d08e26cce0d26f1ab7d921127ece5c37163928a7266258ede05648388bde1dc88941fb064c4ddda156eb1d9add552b98c1fe1afa1b056b550ccb4e04d6bad4dd164361349d52dc320813fcc45e7103585bb891a91a60bd79bd342a1841fc244a3fb2a3678c3de833b358e505320e6aa9e98043ac654917c1f0387705d378c0e80295e741dc41c1a61edbba129e6d26593820dad50e07e6889756cb8397c20a248040d831b2d7da209a6d94424676f8088d6d3d127ba60db2bb60902833872254b2703304927621b843118441da7a947c55b881d2c190b304d254b2703bab31f890e804f27fa5caa6c5230e8ef6f89aef536d864e877be08cc503ce80261dff3d4475b001b124f0a16f4218e44d9e440bde10799dd801a73fdb04f3534649b884fb0983ee522513639d05f7f2f9e2e1bd36d6226513639d074d254fcbc7330bd3f652b513639505796882ff406b5e69144d9e44033349f84233430da48934c16ffbf86f4bc49ce2c3d48944d0edbff7ea5c9eeb20987a54c60aa9fb7d8dd651b7ee0f1e90e7127513639500bda8a1f734674aeebb74104a9c45cc643f43bd32754b850348d6486f4211a2685a9703b51e90838ba922a9b1ce8c143ed8cfe8d802a38942a9b1cc0e9ef526c9ac249aae3493030c4b99847b441998a8666f8e5d295be970b3d01aca45b1d33c20698a60791696a8252aaa57ea9b62f669a0aa5db6019878e93944941f47af533196370f75ed362d302ca58779a19dfe06efd029a5f6c2864dd7ca703eefdd6f380f48b95725bcfed0760255eeb970dbe3186c54db5d2a631acf73b6b5cbdc7d4ce9eabcf357b07ee3be86a857f990249ab57feb075ef53a5127e8acdd40767d5266a9cc19b0443bec660ab454fd1fbe0c68cd8ba77ed0ba14346dc5ef86ea69225774323527e82bb6725de15af86d1cc77ece57b1d436e0ec2d5411fbe9faf8dd1f781fb3df40c483962fe9bc3d3302fbdd019f21f66acf43bdb2ee541c52b56e11a3454358c7e717ebca82b0a5e55dc3d4a7f8de3acb00862120745686dcb2ed87546c1ab2deecb3478c3be13367863ecbdd78823d1381a2dc3cceb7da03773baf72db06fbdd7eb4e373f5a1f3c7ea5f784750707f0173779af5dafc697273ad24fb2f54bedd6d954f3bdc45bc872ff7ccd99ef979d72114f18446952d63c627e4c832ecf4f06378e1ccfca6e15299bccf29cc8ef98037c8b6b93f88afff387d81dd8242108822008822008a21d03e24779ba0c6f2cd33cf2c97fb239ec078be4b81b66db114c67ac47db6cb83b7a8b40d3ca998a188137d91e5ef516dc1cb6ab69d1cdcda241bcb2a6a5e5cc3c626859c9f60ca31f27d5d5fbe594c4e3ae28e9c64efd9e823f648bb80b5649f2e4f05e99276ca6b9eed94592961e1dd66097ea7c8a481e9ae88930d4b65feb2014e97859c6dcd3d27f38ef255fdf787fa976b5fa6650d2d0f31f9b5936b192d08948dffdf10786db27911326e749367b1e0d9cb46a116d9067c7689bcc4ad2e8995d91284d68ae9f2721daf8c7be93958ab8b9848effcea25cdf092fe54aae1c4ddc637c2c956ff77cec78ae6359ee648e5a788e4569dbf5a4de7f3f306c3f2c5b7f56edb76e1b2425336ce6d8f5f77ea6ed94c4b2ebb68fc0e312173f7f598df80ab328f1a8edf6188c1e7ff5c96715b0d1e4614eccdaaba9351f9dfce5734f9d5e78835cb7d592de0d79fd564b1907d763be7d72af17b612c50d1ebc7c22abb029f6f8a9dac67ad3e715cc22793ff420e2638869e3cedfe6ddbc255784fe947bfeb1e1c2a23eafa06013bae71839f7860f5a170930e614acd970b61a84eb7d7e6c5045ae226f5dab657075c65cbcd4dc3ff9305937b10955fdb8ee92dd7536d6f393fbca45a13fe68db1a19d7fc1be55edb7745cd7fd5ce9cbfee16f9977aa0e1a03e66db306aaa5ed49a30af22a5e94bb4593f113eb26c2fe8029173faa5e6d60dbf5de2857fcb65fd83d9ae25d7f00e3c5c65afc3345ff9952531cc32fee7b6163d93e66e67c2b8c6d0cc6137e37b7693399204a615b100277df9b26f73303681d6b75394626146e369569c3572b6bb1c4a46572556f7902e31615b59570e13b3e688e28061beeab5902a0b52bd910bec6869fd5aae9a30cacf0942b79c36b60fb132596380039be691bd93d137c97ba526224740cd586154f01690d35ab29cd7eb5d5977271f7c74725cfefdf87b0b5f3e77b5f45457ba8f837c6dfb67718640cff8ee248d9a6cdf6acf3b7d7ead173bab7ac44653865b45fe8626a53bf802008822008822008822008822008822008822008a21b7f00ef8d5d4d4e4a11770000000049454e44ae426082, 0),
(2, 'Navyas', '947', '9090909091', 'nn@gmail.com', 'nzbs', 'telanganas', 'indias', 0x89504e470d0a1a0a0000000d494844520000008900000099080200000094908e050000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000036669545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e332d633031312036362e3134353636312c20323031322f30322f30362d31343a35363a32372020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d704d4d3a4f726967696e616c446f63756d656e7449443d22786d702e6469643a41353838423237393842313845333131424343454439453738463338374339342220786d704d4d3a446f63756d656e7449443d22786d702e6469643a45433944464332433532373531314536413345444636333532463742364243342220786d704d4d3a496e7374616e636549443d22786d702e6969643a45433944464332423532373531314536413345444636333532463742364243342220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f70204353352e312057696e646f7773223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a4441323342433834303835304536313141414545464530463246424332304641222073745265663a646f63756d656e7449443d22786d702e6469643a4135383842323739384231384533313142434345443945373846333837433934222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3ec6b2b72c000014fe4944415478daec5d0b5415651ebf956186806892a0c05aa096a8016e9420658a0a96516ee8f63229733b27b073ca5a85f674767d94e5391b788eb996666de52389d50d4ab387402dad80156601653c14bb260f93106d4ffb1bfefaf9313377eedc3b2377eef5fb9f7bee993bf3bde6fffbbfbefff7cddc8b7efbed379b204bd245021b818d20818dc04690c0466023486023486023b0d141d3e2a24e1c6ff7257ec52624ae7ea3b077fabaf8bcb6ee63c0f4325d2c5820b01164317f53555e46073f1f6faf3d50ed75dc292ed8d4dcd448c72bd66c0c080cea1f18147d4d8c4fc56900e9d17bd2bd5a8a67cf5b909db354d8342bd2e60d6b8bb66d12d85894963d9505ed0742bd137f0a9be60ec1eb24a7a466663d193a2c5ce88db528203010daf3c0cc492cd8391fd4a7776e262c24f84f7fbcc58d8a87ed6d2ded1dfb6b9b5adb3b8c0ca05f5fbfab2242c2ae1c101ce83f30c8df65bdaf39525ef135fb999c929699b5a8b2bc0c515c6c8297dbb4f6e6daea7fe71969012095eefd76ef57075dad78754448d2f891a3a3871ae93d3c2ef5d8af419567b524746844daac393ee26f8c63c310daf26ef9617bab4e5db96d72ecf831c38df70b6c22e2d3445e40db360e786cde343dec8615d559d2b2d4c71b079d919600d66fdf5de9a80020b96d725cbfbe977a75c4d1c74bc79d347e04be55e1013000cf07a2412f8ea1018fd264419fa031be11a95b4b6f06fe6eeca0c8b17d0306b2332d3f7c79acfecbae9f5b54cb0386ef1aec7c789d3123c19129ebe3d70fed078546b3f6ffd7d589c6d1c5afa73a05360e092c8bbee95e1e15767ef88db3ec35e5073fdba6e42060989d96f0d25b1fd2cf94a418040beaa141cccde1f1698047290dbfded8d95cfd71434591c04685c07df04ea340c8880430115178c7b126d925cc28318381f62062c63c46555d464d9d0f8c1db2c0af1f42e4819163d0bea514c8f3fe06f3066d601807636ecdf61f344c79293e46f23aa3470c55b566dac03042cb685fa958172e36e01a6456af8efbf58bbee91ee5f9d12324c0c6c70c57055e0f300c9ef05e9f605a179bf0f85497ca837db06f4aaf83800dc64d8965a80e8d94b925a5cfbb10b101a39542ddd6de9eb77af594a9531f9c3fff933d7b54d9a73c999218a3eaa59436aabebefef1458bd03ebe71acd6fe24110bc0a045294f826b5f7cf1051dbff6faebafac5b77ff7df7c91055d60a564b2d2b810718e31312dadada700ce0d1fe073b778e1b3bb667fb4385ded8fa060c929dd9be6307038608d2ad87e90eda975b27682401734647dbdafeba74a97b8dfbbc4d934ba80c18629f119be9b4fd7603edfb32361dc70ec9ce444646cace0c1830c040fb4d4edb0f32d0be2f63f33fc5440fae65dcb871fc99a773739515db9b6bf5b4af9c48fe2537570676f6a38f3a45f442c4e6d80f5f2a4fc239676765dd949c8ccfb6ad5b75f26e5799cac6c41645fbd01bb40f0940e33367cedcfbf9e73850005f27e23489cb5d3fb7c83cf680a0a055cf3faf51eb70f5c7ca93a5ffadc1dc5316add96bca87df384b56125119623fcdf63f127a2351ed27ff74a93cb004c7e5dcb4b775769dda5f7b4869d31a2b8b5d6a1f8d3bca795f70d8c073a8ea8123ff7160978ac897eefd16df25dddf326aa828d2ef3f50f2e067db442c708ec00ea52aa802a39a876e6defa0cd37ec4046aab5548111796875cb868f065fa05efb0a9e5565f1f6dd557c44d0d9755a09eabe82e7b48d1b74d76ac0d8acb3b606d5415845eb9e9833528000483007c2794741337cccfeda265e87769556cf9c1cab6adc7eacf90f1a471768bf8f5f3f2001b08f37d7e1bc757c8c15b1210107427aec1b0b01b6bc5baef43d61210354b73e0100e8877ef7266c9a9b04dbb5b1a004e199f2d28edd5580cde6fde4add8d09a8dea2569df73c800818d27292531262c245881999faabf11d8f436296148fafd8860d71f1310d8984f305fa3a3cf2d040015d50550818de75567a6afece8f4116c245d499274e56a4987860a6cac4549e34702a1db7c4b696cdefb1c812c9e7e6cde746f7fa2c337f586e0b1f91c89e7a40536820436021b41021b818d20818d204bce3d0fffd8b6f6ec53998c3099c7e7eaf090d02b833d3e41e9ec3addfc63eb778df6ce93a79b15effdb8c36f5444bc8f6273b2ebd4770d76d54bbbbabfc34282af8a08193f66782f2f8bb54a2f323ab4f7ab83daef616931f6a6234b63e35cb1ecadf874aff607abbe38c074fabec1beabacda91c45c4036cd2590b61495836b3327c79da7bcf2617bdb8edd952ea1d23f20c867b1193234c25553b3b1a06474f4308d7739b847db775795aaed00d5a611d77a60c9ae97e234f7de9db8bfb6e9d9353bbe37c9ec00efbf6f78df0d607c3f86ee1fe88e59e8ec3af5d25b1fbaf14a3ba51d03303a5fbca6a45e7b27b467b031727bf040fcde5a378059fbe687aa9bd9ceab60790d36065f090b5ba4fa00542f00139b90e8e3362d6a9451b3b0abb4da55e3061f631018e352e505d89812eac0b8b9b49f766341a9416024bdb9ded7f5c62ccbd0bd0dfab4ce70d96de7dfc3535e1be3e3d8d8ba5fab6c4a280ce3a667da6f4ab8dc9b7fdce1496caebb7e8229ed80e94e2d9b91b8aea73ca5da3c44dea737443b1cbfe416e43477a99f264eb930b041c06396d7f9aec1ae912f702fda56356826ca93a5b101a5dd69daabe21d0100a5693529a5ef4183e6096c66cd316bba00d551f53a15d507cd1a6dc6030b2e206c40a9e6a98e321283c698b52403f3eba908cd63d8cc7e608159e9a9fd35f2777194ecad316b9c0f662fb279943c800d805968d29fca295f95c23fd26e50693c9546f32436e475cc3217b2f70b9815052ccc5d6af334796c0f54ceca7cb322020ea743e658dd790b3ceb693c8c0d6e3ed30c83ceeb8a295100c2c8ccac45360b9027f70e3e98fda429369d4162caea75ce73f91e5949b31636a067d76c34ce88ef1beda440c69703b273967a3c04b00a360066f51b8506e139fca3340335fe9e144428f03436cb90e7f743c3f1e43c67f02f0c5bd9b7db949c92066b66b3125962afba71be4069487b3c251f3e8b0dd913234ef8e4c95327dd7536e8dab85d3d1fd44bffefa9936a0f543f7a4fba1bffa43d7372dc76cd151d6d99b05992acf5fc0d6ccbabdb3f7263dee75e8406542c0b8ce5f48651deb2dccd1bd6ea2f1f1612ec522c20399895f95698fc7b1f36a0aaf2b2654f653537359ade320265ccfc2de860bc061b101ccfe657d7aecf7bdeac0631af5c98bbd4e2eae21dd8104175d6e7af2cdab6c94823dd59b2277be1cfd32f2c6c0c22e48da87819360ca1a282b78a0b36e9f143c023edce39d6c98ff938368cf6ec2a2af9a078cfae62e5642839256de294d4e49454eb7b7bdfc4860769dfe79fd67c5d1d1018e41b90f80e363e4c021b818d20818dc04690c0466023b820b01124b011d8b83787af3d70e681a6b8ee27284c9fc3db1b6aedf5b5c77f3a82e39088e8c191514157843aadd5fe53f3d1fa3ad4c571dfcbfb874446878f8a3577548d07aaba7e3981e3c02b86845f13ab67545ad824460da60369a97887937f8bfdc3cd71947f8c4d485cfd46a1eceae60d6bd7e73f2fcb7d019819b3e6c896b91abfa9dabc228b8e672fce97f108b787abc444507af68aa8f889745cf1fe96ca9d5bc16559d76861d23dd9c0c911d73e7a230f9dcace83777153ef8a9f96213bffe93beb3f2d5c4fc74f6c2c75ca5fb4fcdebae5ca51c54c4c9b747736e440a3aeaefd021076ede4fc2b792b3512c3cb9ecaca5b96ab4c4a4a4b671bd6fef991b9fa05b0f8e5650c18308e01f3decbcb3f7a334fc902e2ce6b4fcfab2e29525ec2495c5202439a8406d1ac117541fb9024d551d125d22443d880d6e7af7474092cdef2ea3f1c5d05a83cae50c1d9f316f079fbaaf2329dab32d08cba8a9273da70773693659ef5501148250af052092e335099c6f0ac47615441455ec3d02c1a770f1842975744340e6162a39254f64dad4d717adf6d272d9c6cdba4ba42f5a29a4e2841a5edb56c3d98dfee5454b0c9e9da177f27b8bdf4852b9895634686cef36610dc67b0c176c148b24bf8c95b98e90f2de155adf0c5c524d4687cf4c4543dee414630b04c2dd038ba509a658c4dc3b2b9b0074a5575b4cd1d58cf6cdd8c9ecf43e178c6593ca03ada5dd3fdb09f6031bb1f5e63709f32ff04a630bb078e336641a8992943151e1899528298b2ba4470feac35060c09d084f44c5ee68cda34a63a72a5599aabeda8d8b17f40a0ecaafed72a30292676f366a7f1db2a5efc95756312d3948c4054c64ec64fcd50d68a8e4f56edc2a5d8ec8c351b2cd739262edae4dafb3a61bef8c52bc8bbb6c8f301d89143f26061c8d088ccec4571ced68c61f1998c83fb3200ba3a4e30f154ad1e3878082fcb548c97d6befe2a26458aa423a2a918ebc23d620ac413540791347947437ac35c376d4ae203308681eac6227e06039d936d070c1d164e8f47692ce90315e64e701bbca9d1491a37af0daa7680eb949872c07e2ae3bd097764a25f59c0e21e361318fb1092910307a3992fd1d88ac7bfda029134fcbf53ef722ed439da0c6bc63875fbc2e506f9d59bc4db5238c5758fdfa51ac79b1043b387ed4975f08db9241f163baab830a7c75e3d0003783051851a39dd938ec08cb91904606e044b1e24e80d6f7e497b80104cb4f6b4c6656c78cb03d5e127f9da8f7b53e82c0b91a170b087b36e8ed7def4ccee01a838354d1624842db2101908c144e73f325d0f422ec4696ccb3dcde7e9184c77ba010cf0a02e109295443b64e51c2910bb2bd93cce8b287e5ac6fd7fdb806f993506427cf2c9283670dd32f107d333b39ed4af7980e7ed8f2b610079e7d4bd275dddc3f3420763edaabdb60841e971230faf7a1b6ac49b652931b16eb986f6b8f6fc8d0c898c071e76f5a54e289f9db374dbc715bc8be2f3d33dee6a70289bffabe65dbc882064703ff3576de5050eb7535bb1c71c6cc059c6538a80f5cc58a119b24c28f40608c9e07114e0f271f3bf5e5ca2d391ea99783383799ef0c00440d93bec1b2f70755525e660c387cbd93ade17442119be8b0ade525ebd6baeae07c6f97c33f8c8a26a19d19a8d464021217dcd99a94ce015439c5664135ed5c9a9d3f9f20b7393e051f8ac1d2f702cb4d198d8ba8c0d8079bfb2aeaceea84b2f4b2c2ed8a4aa853aaba73e94c36e469a8d72b9613673046caa1a5057794e3019242191d1aa0554b52d243cda88eab8aae8ee63e312b18c196c1a4232d9553e80d67e5e09067afafc25cc4c23c861f9473e37a5b4786071c5fb5b984f66ae1848b363841832cb8346e0a55d4d7f39ca9815bfbc4c093ceb91971243f9345769c6ac396c2604246abeae46f810d06d128b0aceadeb40819c6a21b809ed29cc5bcc6ef8fec80d34ef81ea90fdc10dbff6f4bc1bd3e7517ab1f14055c5ce2dac059ce71bc44f4aa550923b7e6a0659bcf6a3cd9f156e602ac8db1fb96cadc80267fbf6935b3cb443f9181a15c408534e47a38a9b7a9767b0a1d7d8b1b49ba3dc68b6be57dd4118e17b480fc0506809a60ed2146ffe1240421aa39abc524d92e267d3b7fb282e3fb30854a8a2afbcdf56da2bd535d309b64c5a08672b9b8e4635213d5323d971de9f61d77ea903ceaf58b351bfebe25768d86a1b6e6ff6e27c8dc4011095add0b079bb724700efc980bddb193c8c07a3d2603d80997047a6460b5a7b395ec93bb39816a7e305893050cd871a2403353442b98809b3f6eeb64d251f141f39d400df03ef123a2ce2baeb27c0e8c9608388ed2f29a663d505474822732194d0e5538a08498f1f3d02d850119e1f360746433b11871e2b776eb5d74b3e008d0312189fa8d889aa6e46d295034e9673c8a6f1a38282c254a22e8d2a2a4e6adc697a50ec4fb32e096c043682ce0736145ff2c697cc7a7ab614c0c01b8f4e4a85b1de5f5acc0276fce47362b0f8708c2839383c0ad1118546975d1e403bcad032826329d37c760a4d6b82e817be94f6f62158229f4cf9417ca3004ef2b5300c344e6dd2d868f0388f2121a8c379787e3e0384c234189ca4ba347294a76234cfa5de6924674292eecd8874ef38a046280ec4c9c04143d011bff904c58e36d6f18d53d760c2ed0b973b8a622e769a8cc2f8aacb8a64d911c4ec3439477ff09f94f6002bf141c7b4d50888d201cd13e1c0093f7c634c98a000b327369676759cc02829d6a41d4cd432cda8c153784e7ed6899fa8d5d7bf3fadbca118f54bacc178d01dcdec7080ab181b1ac1f4226bcd7b7c1081abf83cbcea6dd4a5780f752116183655a494014b47f2234483ecde8921c401fcc4bd20b2206ea03554a7b151e3c41f49b8bbbb0607d88abbcbd8808f08f5d0906cbe8d180313283e47426ce2e37d4a430d1b791da5fc201d7415df8864509ee257698e7676230b30e0335dc00f25f930f7687d1d6970f8c858443e8e82571202283789249ac5f1c95f7e063cbcd8d14e3e94019b943937c24f828a4b474a3b98eec8a4fc10cf93aece136451a83ae303af138007e75111aa83c16000c08ca9b8cbd8a03304b2b807592a1b1c8c8e4fe6131bd28ade3beb95bb2031568a3b6983360a60b8b24903e5fb502cff91e91061580cc61ac4b2b27897424f3ed5f1c2dc247c183b60404853d129948c26a7e8425a0fee29a498d28341303e852f2e2655c331c64041301ac13821194ad1245d419573d9fe6e7b0599884994366f320b2f137469cfd0812ada9402ee61caece6fe341a136e0907caced07a8fbc50f7548bdf38c967b1c014483aee19dac604f3dc9273773283e67a3c17d00554873f43769f322bec244c1c3e6c4a41b0810bac23b0030343e310355eb3ed8db5346c3618661b49edd017a0b2f5dca148252923c7c6864e2137285f98b71896537555063247ed4b12363874feaaad1023d544b50e6caa4ac01ddc364c0129a32c9f0173c706c76c9a52c4c882e11b4a201d8c8c25cca022280f9b0ebbc780449b6cb890596827ef54095dd482ac683c8641769ce91c8ec12fcc496ddc3a37a41b9841ec7089820b96672308c15fb00fb73ffda125249a748f92a5eddebb3438320ae7e916e0ffd114f84e820287aadc0d4a360d7de1123dbc70fcd8118d05884b9e79e6198713e6a35210856efa5cea072376997f807fd0a0eee0ce4653eeb0a8d1c42f5c4219728903c322508544890e50786068248a5de2e78733a36e9882c2f879f0abf21fbe2c1f3e26813c0a3df8824f477b0bbea90cb8008ee006a8ebe1636e68fa661fee0de751eb924ba506790f41fd0e0c8bc4f971b7a463a890501cec2f2b869624a63fc80aa3c141a19140bae3784beafc1c6a1f75297fdad25c8f2e868fbd81d49a64abf54883e42c47c626673c82e161303f7c558ec1e016126ebd57aa72f6c11a7c63ccb871ba29eaf197f616f0e7d7d3a7aebb251df728c544fe01297317a12931bf11734f41021b818d20818d20818dc04690c0c6a7e9ff020c009e02016f573587c80000000049454e44ae426082, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addslots`
--
ALTER TABLE `addslots`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `ureg`
--
ALTER TABLE `ureg`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addslots`
--
ALTER TABLE `addslots`
  MODIFY `sid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ureg`
--
ALTER TABLE `ureg`
  MODIFY `uid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
