-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 01:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--
CREATE DATABASE IF NOT EXISTS `news-site` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `news-site`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports', 5),
(32, 'Politics', 4),
(33, 'Health', 4),
(36, 'Technology', 5);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(43, 'Understanding the Role of AI in the U.S. 2024 Elections and Beyond', 'robot with a campaign button, symbolizing the intersection of AI and politics The intersection of artificial intelligence (AI) and politics is rapidly evolving, reshaping the way campaigns are conducted and how voters engage with political discourse. AI-powered tools are being leveraged to analyze vast datasets, target voters with precision, and personalize messaging, creating a new era of campaigning.\r\n\r\nKey Developments:\r\n\r\nMicro-targeting: AI algorithms can analyze voter data to identify specific demographics and interests, enabling campaigns to tailor messages to individual voters.\r\nSocial media analytics: AI is used to track social media sentiment, identify trends, and measure the effectiveness of campaign messaging.\r\nChatbots and virtual assistants: AI-powered chatbots can engage with voters, answer questions, and even provide personalized recommendations.\r\nDeepfakes and misinformation: The rise of AI-generated deepfakes presents new challenges for combating misinformation and ensuring the integrity of political discourse.\r\nWhile AI offers numerous opportunities for campaigns, it also raises concerns about privacy, bias, and the potential for manipulation. As AI continues to advance, it is crucial to develop ethical guidelines and regulations to ensure its responsible use in politics.\r\n\r\nQuestions for Discussion:\r\n\r\nHow can AI be used to promote civic engagement and voter participation?\r\nWhat are the potential risks and benefits of AI-powered political advertising?\r\nHow can we address the challenges of deepfakes and misinformation in the digital age?\r\n\r\n#AIinPolitics #Campaigning #Technology #Democracy', '32', '23 Oct, 2024', 39, '32-43.png'),
(44, 'The Global Energy Crisis: A Call for Sustainable Solutions', 'The world is facing a critical energy crisis, characterized by rising energy prices, geopolitical tensions, and the urgent need to transition away from fossil fuels. This crisis demands innovative and sustainable solutions to ensure energy security, combat climate change, and promote economic prosperity.\r\n\r\nKey Challenges:\r\n\r\nDependence on fossil fuels: Many countries remain heavily reliant on fossil fuels, contributing to greenhouse gas emissions and environmental degradation.\r\nGeopolitical tensions: Conflicts and instability in energy-producing regions can disrupt supply chains and drive up prices.\r\nEnergy poverty: Millions of people around the world lack access to reliable and affordable energy, hindering development and quality of life.\r\nSustainable Solutions:\r\n\r\nRenewable energy: Investing in renewable energy sources like solar, wind, and hydropower can reduce dependence on fossil fuels and mitigate climate change.\r\nEnergy efficiency: Improving energy efficiency in buildings, transportation, and industry can significantly reduce energy consumption and costs.   \r\nGrid modernization: Upgrading and modernizing energy grids can enhance grid stability, integrate renewable energy sources, and improve energy distribution.\r\nInternational cooperation: Promoting international cooperation and collaboration can help address global energy challenges, facilitate technology transfer, and ensure energy security.\r\nAddressing the global energy crisis requires a multifaceted approach that combines technological innovation, policy reforms, and international cooperation. By embracing sustainable energy solutions, we can create a more resilient, equitable, and environmentally friendly future.\r\n\r\nQuestions for Discussion:\r\n\r\nWhat are the most promising renewable energy technologies for addressing the global energy crisis?\r\nHow can we incentivize investment in sustainable energy projects and infrastructure?\r\nWhat role can governments and international organizations play in promoting energy cooperation and addressing energy poverty?\r\n#EnergyCrisis #ClimateChange #Sustainability #RenewableEnergy', '32', '23 Oct, 2024', 39, '32-44.jpg'),
(45, 'As Election Nears, Kelly Warns Trump Would Rule Like a Dictator', 'Few top officials spent more time behind closed doors in the White House with President Donald J. Trump than John F. Kelly, the former Marine general who was his longest-serving chief of staff.\r\n\r\nWith Election Day looming, Mr. Kelly — deeply bothered by Mr. Trump’s recent comments about employing the military against his domestic opponents — agreed to three on-the-record, recorded discussions with a reporter for The New York Times about the former president, providing some of his most wide-ranging comments yet about Mr. Trump’s fitness and character.\r\n\r\nMr. Kelly was homeland security secretary under Mr. Trump before moving to the White House in July 2017. He worked to carry out Mr. Trump’s agenda for nearly a year and a half. It was a tumultuous period in which he drew internal criticism over his own performance and grew disenchanted and distressed by conduct on the part of the president that he considered at times to be inappropriate and reflecting no understanding of the Constitution.\r\n\r\nIn the interviews, Mr. Kelly expanded on his previously expressed concerns and stressed that voters, in his view, should consider fitness and character when selecting a president, even more than a candidate’s stances on the issues.\r\n\r\n“In many cases, I would agree with some of his policies,” he said, stressing that as a former military officer he was not endorsing any candidate. “But again, it’s a very dangerous thing to have the wrong person elected to high office.”\r\n\r\nImage\r\nFormer President Donald J. Trump, wearing a blue suit and red tie, speaks into a microphone.\r\nMr. Kelly said that Mr. Trump met the definition of a fascist.Credit...Doug Mills/The New York Times\r\nHe said that, in his opinion, Mr. Trump met the definition of a fascist, would govern like a dictator if allowed, and had no understanding of the Constitution or the concept of rule of law.\r\n\r\nHe discussed and confirmed previous reports that Mr. Trump had made admiring statements about Hitler, had expressed contempt for disabled veterans and had characterized those who died on the battlefield for the United States as “losers” and “suckers” — comments first reported in 2020 by The Atlantic.\r\n\r\nSteven Cheung, a spokesman for Mr. Trump’s campaign, assailed Mr. Kelly in a statement, calling Mr. Kelly’s accounts of his time in the White House “debunked stories” and saying Mr. Kelly had “beclowned” himself.\r\n\r\nHere are excerpts from, and audio of, Mr. Kelly’s comments.\r\n\r\nKelly said that based on his experience, Trump met the definition of a “fascist.”\r\n\r\nIn response to a question about whether he thought Mr. Trump was a fascist, Mr. Kelly first read aloud a definition of fascism that he had found online.\r\n\r\n“Well, looking at the definition of fascism: It’s a far-right authoritarian, ultranationalist political ideology and movement characterized by a dictatorial leader, centralized autocracy, militarism, forcible suppression of opposition, belief in a natural social hierarchy,” he said.\r\n\r\nKelly on Trump and Fascism\r\nMr. Kelly said that definition accurately described Mr. Trump.\r\n\r\n“So certainly, in my experience, those are the kinds of things that he thinks would work better in terms of running America,” Mr. Kelly said.\r\n\r\nHe added: “Certainly the former president is in the far-right area, he’s certainly an authoritarian, admires people who are dictators — he has said that. So he certainly falls into the general definition of fascist, for sure.”\r\n\r\nKelly said Trump chafed at limitations on his power.\r\n\r\n“He certainly prefers the dictator approach to government,” Mr. Kelly said.\r\n\r\nMr. Trump “never accepted the fact that he wasn’t the most powerful man in the world — and by power, I mean an ability to do anything he wanted, anytime he wanted,” Mr. Kelly said.', '32', '23 Oct, 2024', 39, '32-45.webp'),
(46, 'Historic Political Showdown: National Leaders Battle Over Controversial Economic Reforms', 'In one of the most anticipated political confrontations of the decade, national leaders went head-to-head in a live televised debate, fiercely contesting a sweeping new economic reform bill. The proposed reforms aim to overhaul the nation’s tax system, reduce inflation, and stimulate growth in key industries such as technology, healthcare, and energy. However, they have sparked outrage from opposition parties, who argue the reforms favor large corporations and the wealthy while neglecting the middle class and vulnerable populations.\r\n\r\nThe ruling government, led by the current Prime Minister, claims that the bill’s tax cuts for businesses and deregulation will create jobs and strengthen the economy. They argue that attracting foreign investment is the key to recovering from the recent economic downturn.\r\n\r\nOn the other side, opposition leaders accused the government of pushing an agenda that increases inequality. They demand higher taxation on corporations and the wealthy to fund public services like education, healthcare, and social security. “This reform only deepens the divide between the rich and the poor,” said the opposition leader during the debate.\r\n\r\nThe debate quickly became heated as both sides exchanged sharp criticisms and passionately defended their positions. The Prime Minister insisted that without these reforms, the country’s economic recovery would stall, while the opposition warned of long-term harm to ordinary citizens.\r\n\r\nAs the debate raged on, social media platforms lit up with comments from viewers, many of whom expressed their frustration and anxiety about the future of the country. Protests have been organized in several cities, with citizens demanding more transparency and inclusion in the decision-making process.\r\n\r\nWith the reform bill now set to be voted on in the coming days, the nation waits anxiously. Economic experts predict that the outcome could define the country’s financial future for years to come.', '32', '23 Oct, 2024', 39, '32-46.webp'),
(47, ' AI and Robotics Steal the Spotlight at the World Tech Expo', 'he future of technology took center stage at the World Tech Expo, where the latest advancements in artificial intelligence and robotics left audiences stunned. With industry leaders unveiling groundbreaking innovations, the event showcased cutting-edge robots performing complex tasks, and AI-powered systems promising to revolutionize industries from healthcare to transportation.\r\n\r\nOne of the major highlights was the debut of a humanoid robot that can adapt to real-time situations and assist in everything from manufacturing to elder care. The tech world is buzzing with excitement as companies push the boundaries of automation and AI integration, paving the way for smarter and more efficient technologies.\r\n\r\nExperts at the event discussed how these advancements are set to transform the global economy, with automation projected to replace many manual jobs while creating new opportunities in AI-driven sectors. Attendees were also able to interact with the latest gadgets, from AI-powered assistants to self-driving cars, giving a glimpse of what everyday life might look like in the near future.\r\n\r\nAs the Expo continues, all eyes are on the next big leap in AI and robotics that could redefine how we live and work.', '36', '24 Oct, 2024', 39, '36-47.webp'),
(48, ' Major Tech Company Unveils Revolutionary Smartphone with AI-Powered Features', 'In an exciting event, a leading tech company unveiled its latest smartphone model, featuring advanced AI integration and a cutting-edge camera system. The sleek design and powerful specs are set to compete with the top models on the market. With AI-driven photography, the phone can automatically adjust settings to capture stunning images in any environment. Other highlights include enhanced privacy features and faster performance. Enthusiasts and journalists at the event were quick to praise the innovation, and the smartphone is expected to make waves in the tech world.', '36', '24 Oct, 2024', 39, '36-48.webp'),
(49, 'Futuristic Data Centers: The Backbone of the Cloud Computing Revolution', 'As the demand for cloud computing grows, data centers have become the critical infrastructure supporting the digital world. Today’s data centers are not just rows of servers but highly advanced, efficient, and secure facilities equipped with AI and robotic management. Companies are now investing billions in these futuristic spaces to ensure reliable data storage and processing, making sure that our ever-increasing digital footprint is handled smoothly. With advancements in cooling technology and power efficiency, the future of cloud computing looks more sustainable than ever.', '36', '24 Oct, 2024', 39, '36-49.webp'),
(50, ' AI Breakthroughs in Labs Around the World: The Future of Technology', 'In cutting-edge labs worldwide, scientists are pushing the boundaries of artificial intelligence, developing systems that can think, learn, and adapt faster than ever. From healthcare to autonomous vehicles, these breakthroughs are set to transform entire industries. Researchers are working tirelessly to enhance AI algorithms, ensuring they are not only more powerful but also ethical and safe. These efforts promise to revolutionize technology and improve the quality of life for people around the globe.', '36', '24 Oct, 2024', 39, '36-50.png'),
(51, ' Record-Breaking Performance of Salah in Historic Match', '                 Record-Breaking Performance as Salah Triumphs in Historic Match\r\n\r\nContent: In a thrilling and unforgettable match, [Team/Player Name] delivered a stunning performance to claim victory in the [Event Name]. The atmosphere in the packed stadium was electric as fans cheered their team to an epic win. With skill and determination, [Player/Team Name] set new records, dominating the field and securing their place in sports history.\r\n\r\nThe match, which will be remembered as one of the greatest moments in [sport type], showcased exceptional talent from both sides. In the final moments, a last-minute goal/point sealed the victory, sending fans into a frenzy. Social media exploded with reactions as people celebrated the win and praised the athletes\' incredible efforts.\r\n\r\nWith this victory, Salah has strengthened their position as a dominant force in the sport, setting the stage for even greater achievements in the upcoming season. ', '34', '24 Oct, 2024', 39, '34-52.png'),
(52, ' Shahid Afridi Honored for Lifetime Contributions to Cricket and Philanthropy', '                                Legendary cricketer Shahid Afridi has once again made headlines, but this time off the field. The former Pakistan captain and cricketing icon was honored with a prestigious award recognizing his lifetime contributions to the sport and his tireless philanthropic efforts. Afridi, known for his explosive batting and match-winning performances, has earned respect both as an athlete and as a humanitarian through his work with the Shahid Afridi Foundation.\r\n\r\nAfridi, affectionately known as \"Boom Boom,\" took to social media to express his gratitude, thanking his fans and supporters for standing by him throughout his career. \"This is not just an award for me but for every person who believed in me and the causes I’ve championed,\" Afridi said.\r\n\r\nSince retiring from international cricket, Afridi has dedicated his time to improving healthcare and education access across Pakistan through his foundation. His efforts have impacted countless lives, and he continues to inspire young athletes to give back to their communities.\r\n\r\nFans and fellow cricketers around the world have congratulated Afridi on this well-deserved recognition, solidifying his status as both a cricket legend and a global ambassador for social change.  ', '34', '24 Oct, 2024', 39, '34-54.jpg'),
(53, ' Muhammad Ali Honored as the Greatest Athlete of All Time in Global Survey', 'Muhammad Ali, widely regarded as the greatest boxer and one of the most influential athletes in history, has been posthumously honored as the “Greatest Athlete of All Time” in a global survey conducted by leading sports organizations. The poll, which included millions of fans and experts from around the world, celebrated Ali\'s unparalleled achievements both inside the boxing ring and his transformative role as a social and cultural icon.\r\n\r\nAli, known for his quick reflexes, unmatched charisma, and revolutionary style, captured the world’s attention by winning three heavyweight championships and fighting in some of the most memorable bouts in boxing history. Beyond the sport, his bravery in standing up for his beliefs, including his stance against the Vietnam War and advocacy for civil rights, cemented his legacy as a champion of justice and equality.\r\n\r\nFans around the world continue to celebrate his legacy, with many praising his unwavering faith and humanitarian efforts. \"The greatest not just in sports but in humanity,\" one fan commented. Ali’s influence spans generations, inspiring athletes and people from all walks of life to stand firm in their convictions and fight for what they believe in.\r\n\r\nAs the world reflects on his contributions, Muhammad Ali remains a symbol of courage, resilience, and the power of sports to inspire positive change.      ', '34', '24 Oct, 2024', 39, '34-58.png'),
(54, 'Sir Mo Farah Bids Farewell to Competitive Running After Legendary Career', 'Sir Mo Farah, one of the greatest long-distance runners in history, has officially announced his retirement from competitive athletics, marking the end of an extraordinary career. The British athlete, born in Somalia, leaves behind an unmatched legacy with four Olympic gold medals and six world championship titles. Farah’s dominance on the track, particularly in the 5,000m and 10,000m events, has earned him a place among the greatest athletes of all time.\r\n\r\nIn an emotional farewell, Farah reflected on his journey from humble beginnings to becoming a national hero. \"It’s been an incredible career, and I’m grateful for all the love and support over the years,\" Farah said. \"Now is the time to focus on my family and new challenges.\"\r\n\r\nFarah’s impact goes beyond his athletic achievements. As a proud Muslim and an advocate for refugee rights, his story has inspired millions around the world. He has used his platform to raise awareness about important global issues, from education to hunger relief, through his charity, the Mo Farah Foundation.\r\n\r\nFans, fellow athletes, and world leaders have celebrated Farah’s remarkable career, with tributes pouring in from across the globe. Sir Mo Farah’s influence will continue to inspire future generations, not only for his accomplishments on the track but for his humility, resilience, and dedication to giving back.  ', '34', '24 Oct, 2024', 39, '34-58.jpg'),
(55, 'Karim Benzema Shines as He Wins the Prestigious Ballon d\'Or Award', '                In a career-defining moment, Karim Benzema has been awarded the prestigious Ballon d\'Or, cementing his status as one of the greatest footballers of his generation. The French forward, known for his incredible skill, vision, and consistency, has finally been recognized for his years of dominance on the pitch. Benzema played a crucial role in Real Madrid\'s successful campaign, leading the club to both domestic and international glory, including winning the UEFA Champions League.\r\n\r\nReceiving the award, Benzema thanked his family, teammates, and fans for their unwavering support. \"This is a dream come true. I\'ve worked my whole life for moments like this, and it\'s an honor to be recognized among the greatest,\" he said during his acceptance speech.\r\n\r\nBenzema\'s journey to the top has been one of resilience and hard work, overcoming challenges and criticism throughout his career. His form over the last few seasons has been nothing short of remarkable, with his leadership and goal-scoring prowess proving crucial for both Real Madrid and the French national team.\r\n\r\nAs a devout Muslim, Benzema has also been an inspiration to millions around the world, serving as a role model for aspiring athletes. His discipline, professionalism, and dedication to the game have earned him respect not only as a footballer but also as a global sports icon.\r\n\r\nThe Ballon d\'Or win marks a new chapter in Karim Benzema’s illustrious career, further solidifying his legacy as one of the sport\'s all-time greats.     ', '34', '24 Oct, 2024', 39, '34-59.jpg'),
(58, 'Telehealth Services Surge in Popularity Amid Pandemic Aftermath', 'Telehealth services have surged in popularity as patients and healthcare providers continue to embrace remote consultations in the aftermath of the COVID-19 pandemic. Studies indicate that a significant percentage of patients now prefer virtual visits for routine check-ups and follow-up appointments due to their convenience and safety. Healthcare providers report that telehealth has expanded their reach, allowing them to serve patients in remote areas and those with mobility issues. As a result, many healthcare systems are investing in telehealth technology and training to enhance their services, suggesting that virtual healthcare will remain a staple even as in-person visits resume.', '33', '24 Oct, 2024', 39, '33-58.jpg'),
(56, 'AI-Powered Code Review Tools Gain Popularity Among Developers', 'In the fast-paced world of software development, AI-powered code review tools are becoming essential assets for developers. These innovative tools utilize advanced machine learning algorithms to analyze code for potential bugs and security vulnerabilities, suggest optimizations, and even enforce coding standards. As a result, they not only help improve the quality of the code but also streamline the development process, allowing teams to focus on higher-level design and feature development. The increasing complexity of applications and the pressure to deliver quality software at speed are driving this trend, making AI-driven solutions a key component of modern development workflows.', '36', '24 Oct, 2024', 39, '36-56.png'),
(57, 'AI Technology Revolutionizes Early Detection of Chronic Diseases', '                                Advances in artificial intelligence (AI) are transforming the landscape of early detection for chronic diseases such as diabetes, heart disease, and cancer. Researchers have developed AI algorithms capable of analyzing medical data, including imaging, genetic information, and lifestyle factors, to identify patients at risk before symptoms appear. In clinical trials, these AI systems have demonstrated remarkable accuracy in predicting disease onset, allowing for earlier intervention and more personalized treatment plans. This revolutionary approach could lead to improved patient outcomes and lower healthcare costs by shifting focus from reactive to proactive care, underscoring the potential of technology in modern medicine.  ', '33', '24 Oct, 2024', 39, '33-58.png'),
(59, 'New Vaccines Show Promise in Combatting Emerging Infectious Diseases', '                In light of recent global health challenges, scientists have made significant progress in developing new vaccines targeting emerging infectious diseases. Recent clinical trials have demonstrated that these vaccines effectively elicit strong immune responses against viruses like Zika, Nipah, and the latest variants of influenza. These developments are crucial as they can potentially curb outbreaks before they become widespread, protecting vulnerable populations. Health organizations are now prioritizing these vaccines for emergency use, highlighting the importance of preparedness in the face of infectious disease threats and the need for ongoing research and funding in vaccine technology. ', '33', '24 Oct, 2024', 39, '34-59.png'),
(60, 'Breakthrough Study Links Gut Microbiome to Mental Health', 'A groundbreaking study has found significant connections between the gut microbiome and mental health, suggesting that the bacteria in our digestive systems can influence mood and cognitive function. Researchers analyzed samples from hundreds of participants and discovered that individuals with diverse gut bacteria reported fewer symptoms of anxiety and depression. The findings imply that gut health may play a crucial role in mental wellness, leading to new treatment avenues such as probiotics and dietary changes. This research could pave the way for holistic approaches to mental health care, emphasizing the importance of diet and gut health in psychological well-being.', '33', '24 Oct, 2024', 39, '33-60.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Hamza News', '-61.png', '© Copyright 2024 News | Powered by <a href=\"https://facebook.com/fbhamza\">Hamza News</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(40, 'normel', 'normel', 'normel', 'bc75d1bc5edbea12d53ed3f7f8e649ce', 0),
(39, 'MD', 'Hamza', 'hamza', '8950259507cd8ce2a99f8b94674f2b77', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"news-site\",\"table\":\"post\"},{\"db\":\"news-site\",\"table\":\"category\"},{\"db\":\"news-site\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-26 11:23:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
