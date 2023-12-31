-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2023 at 11:17 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `howto_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Valorant', 'valorant', 'valorantpicture.jpg', '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(2, 'Genshin Impact', 'genshin-impact', 'genshinpicture.jpg', '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(3, 'Monster Hunter', 'monster-hunter', 'monsterhunterpicture.jpg', '2023-12-02 08:31:09', '2023-12-02 08:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_31_120504_create_posts_table', 1),
(6, '2023_10_31_130459_create_categories_table', 1),
(7, '2023_12_02_171721_add_is_admin_to_users_table', 2),
(8, '2023_12_29_183544_add_google_id_column', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Provident eveniet dolor perferendis.', 'fuga-itaque-enim-enim-rem-dolores-qui-eaque-consequatur', NULL, 'Mollitia at asperiores laboriosam sapiente ea. Eveniet nam explicabo explicabo dolore aut. Fugiat consequatur aliquid tenetur harum voluptas dolor. Placeat ad est culpa et excepturi eos nisi.', '<p>Aliquid exercitationem dolorum quia tempore debitis. Quis vitae vero quo. Quia aut maiores quas sed nulla iste.</p><p>Iure repellat quibusdam atque itaque. Sit consequatur consequatur rerum quisquam veritatis. Et facilis rem nihil qui consequatur. Eos placeat voluptatibus quidem aperiam nihil quia quae.</p><p>Eligendi animi soluta ut ut possimus aut aspernatur. Qui commodi voluptas voluptas eligendi. Consequatur voluptatibus deleniti numquam et ipsum nam nobis. Eligendi laborum aut sit ab consequatur autem.</p><p>Totam ea iste at deserunt quidem. Nisi alias eos sed atque ut voluptatem distinctio. Quo et eligendi autem debitis rerum sed possimus voluptatum.</p><p>Et sit suscipit accusantium voluptates eveniet. Qui consequatur quaerat in non. Qui accusantium adipisci aut qui ducimus quos.</p><p>Eveniet eaque voluptatum fugit ut quod. Recusandae enim cupiditate maxime possimus repellendus sint. Porro occaecati ut dicta veniam qui quidem. Eius quia in eaque omnis. Odio repudiandae eveniet odio et facere est.</p><p>Optio labore voluptas aperiam vel dolore distinctio. Vero consequatur qui dolorem ratione ipsum molestiae modi. Aperiam nihil et fuga soluta.</p><p>Optio quidem enim voluptates animi et non. Sed cum unde ea similique eaque ut. Molestiae placeat officia atque.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(2, 2, 3, 'Minima rem commodi dolores.', 'incidunt-voluptatibus-fuga-totam', NULL, 'Soluta qui earum provident similique ratione deleniti est. Repellendus quas doloremque quis soluta et dicta aut.', '<p>Quidem quis fugit excepturi et. Non ut neque enim pariatur in omnis autem.</p><p>Sit quia rem sed et est ut. Tempore facilis quod dolores temporibus doloremque eius voluptas aut. Dolore consequatur autem illum a dolor reprehenderit.</p><p>Eos voluptatem quis ab excepturi in sed illum. Aliquid reiciendis exercitationem dolorem. Perspiciatis deleniti optio explicabo distinctio molestiae necessitatibus. Impedit quidem et provident.</p><p>Dolore alias ullam nobis tempore. Culpa harum aspernatur perferendis reprehenderit. Quo aut expedita ea eaque tempora non sit itaque. Magnam perspiciatis ut assumenda. Reiciendis pariatur laboriosam et molestias.</p><p>Deserunt ea animi voluptatibus. Voluptatem occaecati ut et excepturi odit. Velit in corporis tempore eaque. Et cupiditate voluptates labore repellat.</p><p>Vel et unde sequi sed dolores qui odit aliquid. Totam commodi eius dolorum deleniti excepturi. Qui voluptatem dolor esse commodi nostrum dolor.</p><p>Et quae reprehenderit aut unde. Asperiores iure consequatur ut voluptatibus. Soluta ex expedita nihil voluptatum.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(3, 3, 3, 'Molestiae optio porro et.', 'eius-occaecati-voluptatibus-repellat-praesentium-quis-harum-sit', NULL, 'A non amet voluptatem natus nesciunt rerum in. Est alias tenetur quibusdam et. Aut accusamus molestiae et aut harum sit. Aut rerum aut sed.', '<p>Ut omnis nostrum voluptas blanditiis dignissimos. Ut optio est quam voluptatum occaecati velit. Consequatur quia nulla occaecati id in nobis officiis ipsam.</p><p>Quia sed non id molestias aut ratione. Ex rerum amet commodi repellat. Sequi culpa tempora officiis porro.</p><p>Sit ea non est repellendus deserunt consequatur. Eos corporis maxime eligendi rerum qui cupiditate.</p><p>Ea sit eaque voluptatem dicta minima nostrum. Quasi eum sit saepe esse. Occaecati soluta non ipsam tenetur numquam.</p><p>Ut reprehenderit at non quibusdam. Ut est unde vel quis sapiente. Quia quia unde nihil molestias. Culpa magni nihil reprehenderit dolores.</p><p>Voluptas sed et hic eum. Aut ut praesentium qui. Aut adipisci vitae eum aut repudiandae veritatis aperiam. Adipisci est aut omnis soluta.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(4, 2, 2, 'Molestiae sint doloremque amet praesentium ipsa deserunt.', 'est-sit-quis-aut-error-voluptate-sit-quisquam', NULL, 'Voluptatibus aliquam quia velit temporibus labore culpa. Autem culpa eos sed neque temporibus aut qui. Earum delectus iure sed fugit aliquam magni. Autem nisi aspernatur placeat expedita et rem non.', '<p>Nisi omnis enim aspernatur neque. Cum numquam modi commodi velit fugiat. Optio est consequatur rerum eveniet deserunt voluptas.</p><p>Facere aperiam animi sed quibusdam ut ex est. Harum nemo quo rerum et. Et labore fugiat officia quod modi quos aliquid.</p><p>Laudantium corporis quos sed et maiores officiis eius. Esse consectetur laboriosam ducimus. Est iusto deserunt provident quasi dolores voluptate et. Qui quasi dignissimos perferendis exercitationem.</p><p>Sit qui nesciunt molestiae ut rerum earum sequi. Nesciunt dignissimos rerum aut. Expedita iure quia eum ut repellendus nisi.</p><p>Sapiente numquam deserunt qui nemo nobis. Error nobis veritatis dolor saepe delectus adipisci eius. Officia est officiis voluptas accusantium quo. Aliquid nisi dolor assumenda commodi. In qui ab ut odio vel.</p><p>Hic numquam dolorem aspernatur et omnis illum. Perspiciatis consequatur est iusto possimus neque tempore. Ducimus rerum quo et laborum. Maiores itaque omnis ullam dolorem odit officiis odit.</p><p>Nemo ratione corrupti aut labore hic quo repellendus. Et esse qui ut architecto expedita iure voluptatem. Fuga odio atque rem non reiciendis reprehenderit quae.</p><p>Animi perferendis ea repellat distinctio reiciendis. Tempore vel qui velit voluptates neque qui. Aliquid dicta voluptatem officia quia. Voluptate ratione quos dolores cumque ea.</p><p>Quae omnis consequatur architecto quia in minima repellat nihil. Tempore expedita quasi non modi blanditiis et. Illum ullam et mollitia voluptatem qui atque nihil.</p><p>Nostrum dolorum rerum repellat dolorem cupiditate. Autem cupiditate non aut nam. Qui voluptas repudiandae illo et quidem qui eius.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(5, 3, 3, 'Est alias aut ut sit fugit nulla.', 'reiciendis-similique-qui-et-inventore-id', NULL, 'Nihil exercitationem quo nesciunt explicabo possimus quos. Magni voluptatem sit ea doloremque nostrum et quos. Dicta minus officiis impedit aperiam eligendi.', '<p>Qui ut impedit incidunt est nihil quos laudantium. Velit accusamus ut est ut. Ut possimus eum sed non officia rerum et quibusdam. Dolore doloremque et dolorum suscipit et quae aliquid.</p><p>Ipsam eius est iure aut aliquid labore accusamus et. Eveniet laboriosam voluptas rerum quam perferendis praesentium officia. Recusandae est consequatur cum cumque laborum ipsam. Libero sed qui omnis quis.</p><p>Placeat quia repellat doloribus qui. Nisi illo qui autem dignissimos magnam quod incidunt ad. Libero occaecati aperiam sapiente esse qui. Accusamus error occaecati aperiam.</p><p>Vero est quo sed. Ut quia quia ea ab nihil aut.</p><p>Perspiciatis aliquam ea ea aliquam. Animi quo eum qui autem ut et fuga. Sit omnis eveniet quod nesciunt.</p><p>Eveniet possimus et vero laboriosam. Ex aut id est aliquam. Et est qui aspernatur ea velit.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(6, 3, 2, 'Veritatis aliquid cumque molestiae nam.', 'et-possimus-non-debitis-dolores', NULL, 'Omnis voluptatum consequuntur rerum nulla tempora. Et quia voluptas est accusantium ut quam corrupti. Maxime eius exercitationem labore. Deleniti et et mollitia optio qui.', '<p>Amet distinctio amet architecto voluptatem soluta ut fuga. Molestiae deserunt voluptas tempora commodi. Eveniet vel nobis illo enim doloremque. Voluptatem itaque sed dicta ut nemo.</p><p>Aliquam error enim qui voluptates. Dolorum et totam voluptatum necessitatibus. Voluptates est officiis nobis omnis itaque illum aspernatur perferendis.</p><p>Rerum reprehenderit voluptatum corrupti accusamus enim explicabo et. Alias aspernatur consectetur rerum voluptatibus qui eligendi.</p><p>Hic id iure inventore. Occaecati debitis numquam et qui aut est eos. Perspiciatis consequatur possimus aperiam vitae.</p><p>Expedita ex temporibus voluptatem deleniti animi. Omnis dolor aut facilis. Incidunt et perferendis repellendus aut.</p><p>Perferendis odio suscipit quae eaque. Eligendi perspiciatis laboriosam aut magnam omnis praesentium. Quasi quo praesentium qui eum dolores aliquid omnis facilis. Iure beatae impedit non.</p><p>Aut quisquam id maxime tempore qui est voluptas. Laborum fuga harum expedita aut accusamus fuga odit quo. Ea nulla sapiente provident quos. Inventore aperiam iusto dolorum rem reprehenderit qui ex.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(7, 3, 3, 'Vitae et doloribus fugiat ratione.', 'unde-dolorum-aliquam-dignissimos-suscipit', NULL, 'Repellendus quam qui necessitatibus ipsum. Modi tempore fugiat id vitae aut. Necessitatibus qui est voluptatem cupiditate optio voluptate. Eligendi pariatur at unde ipsam aut ut id.', '<p>Odit eum doloremque doloribus praesentium quisquam aperiam deserunt. Adipisci adipisci at consequatur exercitationem itaque voluptas quos.</p><p>Odit aut iste in nulla ea. Sint voluptatum cumque iste et modi illo et. Quis voluptatibus ratione voluptas asperiores fugiat et ea est. Illum voluptas animi voluptatem odit voluptas et. Laborum debitis perspiciatis exercitationem tempora minima.</p><p>Qui nesciunt aspernatur recusandae nemo qui aut. Atque et dolor dicta eos quaerat in commodi. Iste eveniet sequi ipsum fugiat ut architecto.</p><p>Deleniti dolores enim sint magnam. Est nesciunt minima commodi ad sed labore iusto. Qui quis excepturi ut qui. Delectus porro vitae dolor pariatur magnam atque.</p><p>Voluptas aut inventore eos consequatur sed enim. Ea in omnis quas beatae et. Eos distinctio hic ad voluptatem dicta est neque.</p><p>Sed ea qui quia minus consectetur deleniti nihil magnam. Dolor est ipsum illo. Odit explicabo et sed impedit. Vel cupiditate fugit dignissimos veniam.</p><p>Fugiat voluptates sapiente eos cumque laborum. Ut vero impedit tenetur ut unde vel at. Omnis deleniti nisi et ut. Dolores cupiditate quis quo exercitationem.</p><p>Pariatur et consequatur modi dolore qui provident et nisi. Laborum illum blanditiis autem consequatur ex expedita. Harum dolores minima dolores.</p><p>Quia omnis quisquam quibusdam deserunt totam fugiat. Repellat autem placeat sit aliquid quod alias ea. Eos asperiores quis et reprehenderit.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(8, 3, 1, 'Sit accusantium repellendus.', 'sapiente-unde-nam-velit-maxime-iste-sit-minima', NULL, 'Omnis magnam quis commodi dolorem accusantium iste. Ducimus nobis labore adipisci explicabo quo a eos. Tenetur tempora ducimus nostrum consequatur.', '<p>Cumque sit ut nemo repellendus non est. Voluptatem ut magnam inventore repudiandae numquam. Quo ipsam unde porro qui ut.</p><p>Tempora deserunt magnam labore vel quisquam harum ipsam. Et molestiae velit sunt qui. Porro quisquam odit fugit ratione. Aut et consequatur dolorum omnis ad aperiam.</p><p>Nemo minima rerum aut ipsam ab non. Dolorem voluptate maiores perspiciatis facilis officiis. Dolor dolores sunt temporibus nemo doloremque deleniti fuga et.</p><p>Ipsam sequi molestias non sequi consequatur. Facilis molestiae debitis sit deleniti perspiciatis molestias quis. Delectus voluptatibus non qui sunt facilis quo. Accusamus voluptas sed quisquam id qui in.</p><p>Sit quas eaque facilis minus ad facere omnis ipsum. Omnis deleniti excepturi est qui minus. Quaerat ut odit vel vitae iure. Fugiat repellat architecto repudiandae ut reprehenderit.</p><p>Et perspiciatis quis cumque eaque ipsam. Rerum eum qui qui soluta voluptatem eos. Itaque voluptas quae quia quo. Ipsam omnis ipsum ducimus asperiores expedita sapiente.</p><p>Omnis rerum est eligendi sed. Et laborum incidunt recusandae quas consequuntur. Qui dolor aut accusamus officiis ratione est. Voluptatem voluptatum quod optio fugiat.</p><p>Architecto quo doloremque ad cumque harum at nobis. Repellendus exercitationem voluptatem esse doloremque aut voluptatem. Consectetur exercitationem quia itaque.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(9, 2, 2, 'Assumenda qui quo eaque fuga est impedit ea earum.', 'pariatur-est-dolor-quae-nemo-non', NULL, 'Qui enim minus id incidunt est vel praesentium ea. Explicabo quis quia id necessitatibus eaque magnam quo. Quae quibusdam qui nihil quibusdam laudantium ipsum.', '<p>Deleniti aliquid esse sed aut ea incidunt in. Est mollitia iste ut veritatis. Est aut maiores ratione labore voluptatem et ut. Minima aut voluptatibus et amet cum.</p><p>Sunt consequatur saepe illo maxime. Architecto ut quis sed sit consectetur. Numquam autem iure voluptas mollitia fugit.</p><p>Qui illum ea dolor est aut praesentium mollitia. Non dolores quaerat nobis voluptas. Est voluptatem ab officia quis reprehenderit.</p><p>Facere quia consequuntur sapiente voluptatem molestiae quia reiciendis. Quam tenetur porro ut porro dicta libero molestias.</p><p>Possimus laboriosam praesentium saepe alias perspiciatis autem. Voluptatem sed impedit facere omnis voluptate temporibus. Voluptatem aut aut et minus. Deleniti delectus voluptas voluptatem quisquam in aliquam earum. In quae assumenda nihil eveniet voluptatem placeat libero.</p><p>Sunt quia tenetur fugiat quam aspernatur. Sit maiores quo autem nisi omnis. Explicabo quo ipsa illo.</p><p>Ipsum explicabo occaecati modi molestias consequuntur incidunt. Explicabo totam cupiditate dolorum voluptatem autem molestias amet voluptates. Est deserunt eligendi rerum corrupti dolore voluptatem exercitationem.</p><p>Deserunt ut ut quia incidunt voluptatem aut repudiandae. Porro aut accusantium sequi quo sint. Fugit saepe quos voluptatem sed ab laborum. Ut cupiditate similique eum dicta.</p><p>Officiis aut corporis voluptatibus et voluptas. Adipisci harum nesciunt reiciendis officiis sit totam qui. Ea laudantium qui aut laborum modi.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(10, 1, 1, 'Doloribus ducimus.', 'beatae-quia-quia-illo-deserunt-tempore-a-ut', NULL, 'Aliquam et laboriosam maiores non. Aliquid sit omnis incidunt non sapiente et molestias. Velit mollitia quis totam facilis.', '<p>Delectus maxime mollitia voluptas corporis aperiam totam. Placeat sapiente beatae deserunt commodi consequatur fugit magni. Eveniet eveniet qui a voluptas aspernatur adipisci quo.</p><p>Inventore eveniet est numquam provident quibusdam quisquam minus. Perspiciatis animi sit doloribus aspernatur qui cumque. Natus omnis adipisci vel est.</p><p>Omnis necessitatibus ex consequatur alias. Vel sunt alias error voluptas ipsum et repellat. Architecto iste vel doloremque dolorum minima aut.</p><p>Aut molestiae iusto illum nesciunt sit. Rerum molestiae et ullam blanditiis ab. Necessitatibus reiciendis iure saepe ex et pariatur. Nam nihil pariatur tenetur veniam et nulla. Nihil et odit alias ipsum.</p><p>Nam quisquam voluptates in. Dolores dolorum quod dolor aperiam. Eum voluptate hic omnis est reiciendis dignissimos qui.</p><p>Ad molestiae modi omnis voluptates tempore et. Aut qui impedit esse optio. Amet sed animi totam ea beatae praesentium enim.</p><p>Quia fugit et omnis. Magnam consequatur neque quam atque excepturi fugit. Dolore facere labore nulla. A aspernatur ut consequatur pariatur unde nemo enim.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(11, 1, 3, 'Nostrum nostrum sequi veritatis.', 'accusantium-voluptate-architecto-sint-quisquam-in-corrupti', NULL, 'Dolore commodi itaque dicta sed sed dolor qui. Non pariatur sed voluptate. Id accusantium laboriosam quidem consectetur corrupti nihil. Omnis quis voluptatum at fugiat quam.', '<p>Placeat consequuntur similique sint doloribus et. Impedit id sunt eum nisi. Consequatur et ut error hic asperiores deleniti autem.</p><p>Itaque ipsum vero repudiandae enim placeat. Quas enim qui fugit deserunt. Minima non atque et necessitatibus id aut blanditiis nihil. Eos reprehenderit cupiditate quia enim perferendis aut quis.</p><p>Consequatur quam et ut doloribus. Iusto inventore impedit et vero natus impedit. Doloremque sed voluptas officiis ut qui sunt sint aut.</p><p>Libero et laudantium vero totam sapiente tempora dolor. Saepe ipsa ducimus modi sequi velit ratione. Iste optio at sunt exercitationem quibusdam. Aut odit et vitae aperiam dolorum asperiores.</p><p>Placeat sit aliquam laborum officia et et repellat. Omnis corporis et aliquam voluptas beatae. Autem minus sit molestiae similique id harum voluptate. Inventore nihil possimus et voluptates numquam laudantium magni.</p><p>Quis quis dolores ad saepe nemo dolore libero. Eius vero ullam odit voluptatem. Incidunt dolor corporis dolores quas. Expedita incidunt voluptatem magni dolor.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(12, 3, 2, 'Doloremque praesentium laborum.', 'reprehenderit-et-corporis-sunt-quis-qui-optio', NULL, 'In et at facere quisquam vitae. Ullam porro voluptates culpa illum doloremque suscipit aut.', '<p>Corporis quas et est. Unde quae assumenda accusamus qui illo odio. Et tempora recusandae aut nostrum architecto molestias nulla.</p><p>Commodi sed culpa asperiores nobis molestiae. Vel harum maxime optio.</p><p>Et rerum qui non eum. Rerum consequatur aut adipisci expedita. Ullam velit cupiditate placeat.</p><p>Ex qui odio voluptatem rem veniam qui incidunt. Dolor accusamus doloremque exercitationem est ut in a illo. Voluptatibus quis dolor ea modi itaque quia.</p><p>Dolorem rerum excepturi eos et quasi laborum voluptatem. Quasi qui vel nobis ullam rerum corporis est. Perspiciatis enim totam eos ratione ut et.</p><p>Ea harum tempore est qui debitis dolorem. Accusamus magnam assumenda voluptate aut. Enim rem aut voluptate occaecati sed. Et ea ut rerum doloribus.</p><p>Quidem numquam rerum dolor dolores omnis et ipsum. Deserunt molestias temporibus similique quia consequatur.</p><p>Ullam voluptas placeat illo sed sint. Cupiditate voluptatem dignissimos quo qui. Sunt officiis itaque molestias qui harum.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(13, 3, 1, 'Non quia assumenda et fuga ut error rem nulla.', 'atque-dolor-ipsum-et', NULL, 'A odio ab totam doloremque id qui repudiandae. Quos magnam illo autem aspernatur mollitia omnis.', '<p>Totam consequatur voluptatum tempore accusamus adipisci aut dolores incidunt. Accusamus praesentium qui velit aut tempore. Quod quia velit molestias quod.</p><p>Pariatur veniam sed numquam reiciendis. Est quia est a eius dicta doloremque. Sit perferendis maxime accusantium quia. Voluptatem unde quas consequuntur et autem veniam voluptatem.</p><p>Voluptates ducimus perferendis dolore natus ducimus recusandae. Id iure est consectetur facere saepe esse distinctio. Enim quo maiores perferendis quos illum velit quia. Magni dignissimos qui nisi.</p><p>Id quis saepe dolor reiciendis dolores distinctio. Repellat ullam a non aspernatur sint officiis incidunt. Non provident distinctio laudantium atque aliquam. Quidem doloribus quia autem possimus ipsum.</p><p>Cumque inventore officiis nihil officiis iusto explicabo nesciunt. Maxime quo beatae earum eius est. Iusto maiores quidem ratione rerum. Animi ea modi sit ipsam et quas pariatur.</p><p>Laborum voluptatibus excepturi ut. Dignissimos ipsum laudantium cumque laudantium tenetur. Non sint nihil quis aut porro.</p><p>In porro dignissimos blanditiis earum provident. Accusamus voluptatem saepe numquam quas dolor. Molestias possimus cupiditate ut cupiditate quis. Odit a officia est nulla commodi dolorum ea ipsum.</p><p>Laboriosam aut in magni sint et dolor. Earum nihil fugit rem accusantium dolor doloremque eos reprehenderit. Totam doloremque occaecati voluptas blanditiis amet molestias. Minima tenetur quas reiciendis et quis eos vel. Pariatur ipsum temporibus odit quibusdam.</p><p>Iste provident incidunt natus sunt magnam repudiandae. Sit qui tempora corrupti facere odit vel consequuntur.</p><p>Qui fugit assumenda numquam ea maxime. Ea iure debitis sunt nihil voluptatem dolor. Repudiandae consequatur dolorum eius. Officia ipsum aut ex vitae.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(14, 1, 3, 'Accusantium nobis voluptate qui ipsam ad eum.', 'veritatis-sed-odit-dolor-in-sed', NULL, 'Molestias provident enim odit provident magni non et. Totam est qui ut voluptas dolorem laborum suscipit. Voluptates quia est non eos dolores explicabo.', '<p>Minus eum voluptatem amet qui quasi vel mollitia consequuntur. Ullam nam illum vero. Temporibus vel aut vel aspernatur quas nihil totam vel. Qui iusto aspernatur labore nesciunt quia.</p><p>Et nam in cupiditate vitae excepturi voluptatum nam. Quia rerum aliquid harum libero vel harum. Sunt laudantium dolorem corporis nam necessitatibus possimus placeat. Ex nostrum natus possimus recusandae.</p><p>Quisquam fuga ullam ipsam sapiente ea architecto. Iure voluptatem ut et maiores porro.</p><p>Architecto accusamus aut reprehenderit recusandae dolor et maxime dicta. Quo et debitis nemo occaecati vitae officia. Quia consequatur odio repellendus ut fugit id enim. Similique magnam quasi quo molestiae praesentium nihil distinctio autem. Soluta voluptatum sed et dolor est et.</p><p>Neque cupiditate nobis cupiditate. Quaerat repellendus dolorem quod quas ut ea itaque quia. Et commodi voluptates cumque dolorem et alias fuga. Atque enim ad vero consequatur voluptas.</p><p>Aperiam illum odit quam corrupti perferendis sunt. Voluptatem odit iste rerum error recusandae ullam qui in. Sint et veniam expedita ut eius sed. Quidem qui esse aut ipsam occaecati cum exercitationem voluptas.</p><p>Veniam corrupti est reprehenderit dolore possimus. Repellendus eius optio est quia delectus nesciunt quae. Qui quis eveniet dolor neque impedit numquam iusto.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(15, 2, 3, 'Deserunt cum blanditiis asperiores rem maiores qui tenetur doloremque.', 'est-omnis-iure-molestiae', NULL, 'Non deserunt laborum inventore eaque dolorum culpa soluta. Dolore hic rerum labore autem sed. Tempora dolorem qui mollitia quos ullam.', '<p>Dolorum quo facilis voluptate et nam. Vel minus repellendus fuga consequatur. Eligendi repellat similique vel dolore voluptatum ipsa suscipit. Id qui ut iusto qui consequatur aliquid.</p><p>Eveniet quia quaerat et quia enim quam fugit. At incidunt autem sapiente. Commodi commodi voluptas ex magni vel consequatur.</p><p>Dolorem error qui eligendi labore. Quia iste a repellendus cupiditate voluptates voluptates dolor. Porro dolores sed odit iste nesciunt mollitia. Fuga commodi qui ducimus est sint aut.</p><p>Id assumenda et voluptas reprehenderit rerum enim. Eum beatae repellendus quas velit omnis inventore totam. Excepturi ab non consequatur amet debitis. Voluptatum autem quos dolores eveniet numquam voluptatem sit.</p><p>Et illo doloremque rem ratione veniam aliquid. Ea voluptatum aut dolorem perferendis repudiandae. Non autem dolores ducimus et enim perspiciatis. Velit ullam molestiae ea.</p><p>Beatae sit dolorem odit ducimus. Quibusdam voluptatem labore aspernatur repellendus at. Labore voluptatem qui non et mollitia aut.</p><p>Quis vero voluptates et tenetur deserunt mollitia et. Ad aliquid soluta omnis eligendi aut asperiores. Quod facere voluptatem non debitis est officia dolor voluptates.</p><p>Cumque eum debitis saepe nobis dolorem. Velit corporis eum pariatur.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(16, 2, 3, 'Nisi odit voluptas voluptatem vel veniam.', 'veniam-aspernatur-molestias-accusantium-non-sequi-fugiat', NULL, 'Ut et est veritatis non aperiam est adipisci. Maxime nulla id ab atque nihil. Sint impedit officia mollitia suscipit reprehenderit aliquid. Aliquid perferendis odit enim dignissimos blanditiis animi.', '<p>Illum saepe error est voluptas nulla qui exercitationem. Vel minus nesciunt ut voluptas provident beatae.</p><p>Ut aspernatur provident ea cumque quos eum quos. Eveniet provident perferendis sed est. Ut quo nam saepe vel molestias labore veritatis. Ad consequuntur libero natus et vero sit cumque.</p><p>Fuga voluptas qui hic odio quo commodi ipsam. Qui cum harum eligendi. Ut vitae rerum sint laudantium corrupti aperiam possimus. Est quisquam sint quis dolor quo qui voluptas ducimus.</p><p>Ex consequatur voluptatibus et ullam architecto modi laborum. Doloribus voluptatem quia exercitationem minima molestiae dolorem similique exercitationem. Ab rerum repudiandae maiores et non dolores. Cum omnis ea minima numquam enim rem hic sequi. Nesciunt modi reiciendis illo voluptates.</p><p>Et architecto aliquid sed ab. Provident eos recusandae fuga voluptas. Voluptatem aperiam explicabo necessitatibus saepe optio.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(17, 2, 3, 'Ea reprehenderit debitis.', 'fugit-vitae-inventore-voluptates-deleniti-et-omnis-nostrum', NULL, 'Harum minima rerum impedit repellat non vero similique facere. Et nobis porro voluptate veritatis qui et. Blanditiis eveniet modi sapiente.', '<p>Quia blanditiis ea mollitia eum consequatur quam amet. Voluptatum aut minima distinctio porro vero.</p><p>Et ea eos totam quis. Ab velit iure atque ratione accusantium. Perspiciatis non molestiae dolorem.</p><p>Et quos vel quas reiciendis. Autem enim optio itaque sed sed. Molestiae rerum pariatur ipsam illum dolorum tempora.</p><p>Ut distinctio aut veniam. Temporibus at nemo quisquam ea veniam quisquam. Quis ipsam pariatur veniam similique quibusdam.</p><p>Quasi facilis culpa assumenda in. Voluptatem porro eligendi iusto commodi. Quibusdam neque ut magnam eaque quas. Distinctio veniam et quas illo temporibus.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(18, 2, 3, 'Ut facere saepe impedit.', 'dolorem-occaecati-animi-a-similique-et', NULL, 'Qui vitae quos consequatur omnis. Architecto expedita provident perspiciatis et. Deleniti earum necessitatibus voluptates pariatur at ipsa quia id. Suscipit voluptate voluptas beatae aut sit suscipit. Ipsa consequatur veritatis voluptates.', '<p>Qui aperiam recusandae iure nobis. Quos et laborum provident placeat voluptas quisquam natus. Voluptas hic qui assumenda ratione necessitatibus. Itaque velit error sunt. Enim voluptas doloribus dolorem quos amet.</p><p>Minus impedit est reprehenderit non. Qui occaecati explicabo eos est quae illum. Beatae sed laudantium laudantium libero consequatur adipisci et cum.</p><p>Voluptatem qui blanditiis voluptate eaque architecto non dolor. Eos amet alias earum aut recusandae autem ea porro. Praesentium unde aut exercitationem sint libero. Suscipit quidem enim natus quia officia.</p><p>Aliquam voluptate sint voluptatibus soluta ex sequi. Maiores id ullam sed id non quaerat eos. Quia repellat dolores deleniti quia et.</p><p>Quidem nulla vel sunt rerum. Suscipit facilis aut maxime repudiandae. Maxime adipisci ad fugit. Modi cum quisquam et qui.</p><p>Consequuntur sequi non quasi aliquid modi quo eum. Tenetur illo illum eveniet deserunt. Eos tempore culpa voluptatem nam. Quod vel repudiandae quaerat vero aspernatur. Laboriosam ut sed error optio quod quo est.</p><p>Eveniet voluptate aut repellat unde corporis ut. Ea sapiente nihil fugiat blanditiis in consectetur. Minus sit nam aperiam. Recusandae aperiam earum omnis illum.</p><p>At corrupti sit et et. Excepturi non perferendis cum ipsam consequatur. In ut quia atque quia aut hic.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(19, 2, 3, 'Ut pariatur ut labore in.', 'laudantium-soluta-aut-ex-sint-cupiditate-nulla-dignissimos', NULL, 'Qui provident adipisci earum occaecati consequatur. Quae dolor qui ex asperiores voluptate aliquam debitis tempore. Est quos asperiores inventore sed corrupti in. Est ullam molestiae et voluptas natus culpa.', '<p>Impedit ut et sit harum illum. Delectus molestiae corrupti et maxime ut distinctio. Unde quaerat dolore aut eligendi voluptas labore.</p><p>Necessitatibus et ut voluptas soluta. Aspernatur est nam architecto. Autem ut necessitatibus aut deleniti et. Ducimus ea sint sed tenetur sit ab.</p><p>Eos est exercitationem omnis sunt deleniti quis maiores. Atque non incidunt rerum fugit ut non. Ad in illo ut est consequatur ullam. Qui et facilis corrupti ipsam est eum qui.</p><p>Est delectus ab architecto iusto mollitia occaecati labore. Aut in dolor eius voluptatibus. Libero quis qui minima eveniet illum.</p><p>Voluptatem sed sit commodi earum architecto. Accusantium et quis sint quidem odio neque. Inventore veniam nisi fugiat repudiandae qui culpa itaque. Provident qui rerum dolorum consequatur voluptatem laborum. Laborum hic autem aut assumenda architecto placeat quisquam fugiat.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(20, 2, 2, 'Non nihil quo.', 'et-ipsum-laudantium-occaecati-quidem-nisi-laborum-corrupti', NULL, 'Et quibusdam expedita odit est unde. Voluptatum non ullam ducimus fugiat. Vitae impedit et possimus commodi earum rerum. Voluptas aliquam fuga et corporis et ut.', '<p>Rerum quis provident ut sit. Qui quia ratione ducimus enim. Odio et aut repellat incidunt voluptatem. Quibusdam ex animi laudantium.</p><p>Sed enim vitae iste vel eligendi qui eum eum. Quidem quam at aut animi voluptatem nostrum adipisci saepe. Voluptatibus voluptatibus veniam velit modi.</p><p>Ad ut aliquid aut fuga pariatur qui dolor. Beatae distinctio ea neque quo veritatis et. Quasi quibusdam aut facere et.</p><p>Consectetur exercitationem reprehenderit fuga sapiente et. Sit vel est et. Omnis tenetur animi sed. Beatae aut maiores sit rerum maxime dolorem.</p><p>Dolores ea id quibusdam excepturi at reiciendis nobis. Voluptatem dignissimos aut adipisci quaerat illo placeat. Rerum harum quod facere voluptatem culpa eveniet. Asperiores illum sit quasi voluptas voluptatibus rerum.</p><p>Quidem tenetur perspiciatis sint non unde. Ducimus aliquam tempore sint blanditiis aliquid. In officia nulla quia nihil laboriosam dolore nihil.</p><p>Sed nihil asperiores qui quisquam eveniet dicta. Est amet quo itaque accusantium repellendus.</p><p>Eaque consequatur placeat saepe rerum. Omnis sunt ipsam aut qui et quia voluptatem. Quis aut corporis quod voluptas. Id placeat placeat et et similique.</p><p>Qui provident cumque sint nam fuga ut dolor. Eos consequatur qui et. Asperiores quibusdam sit dolor sit voluptatem enim.</p>', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09'),
(24, 2, 5, 'Ayaka bawa pedang besar', 'ayaka-bawa-pedang-besar', 'post-images/KHgrL8orclHpdYqcaiQjkx5NtHP9j9U4CBSysFzY.webp', 'Ayaka is primarily a DPS character. You can use her as elemental support for another DPS thanks to the Cryo effect her dash applies, though putting her in that role misses out on her potential as a po...', '<div>Ayaka is<strong> primarily a DPS character</strong>. You can use her as elemental support for another DPS thanks to the Cryo effect her dash applies, though putting her in that role misses out on her potential as a powerful main DPS.</div><div>Ayaka’s passive Talent Amatsumi Kumitsumi Sanctification increases her normal and charged damage by 30% after using her Skill, and the Kanten Senmyou Blessing Talent increases Cryo damage by 18% for 10 seconds after the Cryo fog effect from Ayaka’s dash connects with an enemy. That’s<strong> a 48% boost</strong> without even considering the potential for additional critical damage from freezing opponents.</div><div>Ayaka’s critical damage increases as she levels up. Given how easily she can apply Cryo, the most popular way to build Ayaka is <strong>as a Freeze machine</strong>, with the <strong>Blizzard Strayer set, an extra Cryo character, and a Hydro character</strong>.</div><div>Pairing her with fighters such as <strong>Xingqiu and Kamisato Ayato</strong>, whose Hydro effects linger long after the characters leave the field, means you can continually Freeze enemies. Blizzard Strayer increases the user’s critical hit rate against Frozen enemies by 40%, and the Shattering Ice Resonance effect, obtained by having two Cryo characters in your party, boosts it a further 15%.</div><div>The same principle applies to parties built around other elements as well. Pair Ayaka with<strong>Xiangling or Bennett for a Melt party</strong>, while<strong> Fischl and the Raiden Shogun are handy for Superconduct parties</strong>, which has the added bonus of reducing the enemy’s physical resistance.</div><div>If you managed to recruit Yun Jin, she’s an excellent support unit for Ayaka (or anyone else, for that matter). Yun Jin’s Burst increases the party’s normal attack damage based on her defense, which pairs well with Ayaka’s natural attack boost from her passive talent.</div>', NULL, '2023-12-29 21:12:46', '2023-12-31 03:08:31'),
(25, 3, 5, 'Dan il', 'dan-il', 'post-images/AUyN2cMVYDpIwUF1VQTFiUWwllRMgXeh3YwBFePB.jpg', 'Hehehe bukan dan il', '<div>Hehehe bukan dan il</div>', NULL, '2023-12-29 21:21:36', '2023-12-29 21:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `google_id`) VALUES
(1, 'Tresna Eka Widiana', 'tresnaekawidiana', '193040071@mail.unpas.ac.id', NULL, '$2y$10$BKcGhQEL7ahMiyrqnoAnNu2Ep6vfDciNWyuAeO14IfZC6MT4hr1qW', NULL, '2023-12-02 08:31:09', '2023-12-02 08:31:09', 1, NULL),
(2, 'Aurora Maya Hassanah', 'zulkarnain.ilsa', 'adiarja.nainggolan@gmail.com', '2023-12-02 08:31:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f4TARSKKfK', '2023-12-02 08:31:09', '2023-12-02 08:31:09', 0, NULL),
(3, 'Malika Jessica Winarsih M.Ak', 'sihombing.bahuwirya', 'natalia79@gmail.com', '2023-12-02 08:31:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MLTNIk60lPnFrFfr05JTIS51mMdYrRxcJppDLNInpz5aSv0XfeI7nxIO1lzW', '2023-12-02 08:31:09', '2023-12-02 08:31:09', 0, NULL),
(4, 'Ibrani Thamrin', 'dwibowo', 'laksana95@gmail.com', '2023-12-02 08:31:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iTHY05vdrZ', '2023-12-02 08:31:09', '2023-12-02 08:31:09', 0, NULL),
(5, 'Tresna Eka Widiana', 'Tresna Eka Widiana', 'ideal.nagi@gmail.com', NULL, '$2y$10$4fMczD/WRsryytVnFV3HbuIdC/qo.DaDALcNV3PSjN9I0jkmhdKje', NULL, '2023-12-29 18:01:10', '2023-12-29 18:01:10', 0, '115784756279607736358'),
(6, 'dsa512', 'dsa', 'dsa@gmail.com', NULL, '$2y$10$OTL88G3TBGoQKuaJvH911.Prfd3PXkaZL81s6rwu27wESPBrbQ85W', NULL, '2023-12-30 21:27:45', '2023-12-30 21:27:45', 0, NULL),
(7, 'keren', 'keren', 'keren@gmail.com', NULL, '$2y$10$bM2Mi5rhpNBZHS73DmmYFeA1NoW/qv18Msx.NWQZ0uQSwQuGSgt7.', NULL, '2023-12-30 21:31:09', '2023-12-30 21:31:09', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
