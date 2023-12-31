<?php


namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
        "title" => "Judul Post Pertama",
        "slug" => "judul-post-pertama",
        "author" => "Tresna Eka Widiana",
        "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa dolor inventore veniam doloremque, earum qui unde quidem ullam dolorum error et accusantium nisi tempora animi? Corrupti voluptas repellat voluptates aperiam, in facilis enim qui debitis autem dignissimos dolorum impedit libero ipsam at deleniti odit odio voluptatem? Accusamus similique sit praesentium ducimus corporis voluptate officia assumenda cupiditate sunt, repellat harum quae a beatae veniam labore, aliquid atque nemo iure quidem deleniti dolore minus totam. Hic, eligendi beatae quidem vel fugiat similique."
        ],
        [
        "title" => "Judul Post Kedua",
        "slug" => "judul-post-kedua",
        "author" => "Dian Nuryana",
        "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa dolor inventore veniam doloremque, earum qui unde quidem ullam dolorum error et accusantium nisi tempora animi? Corrupti voluptas repellat voluptates aperiam, in facilis enim qui debitis autem dignissimos dolorum impedit libero ipsam at deleniti odit odio voluptatem? Accusamus similique sit praesentium ducimus corporis voluptate officia assumenda cupiditate sunt, repellat harum quae a beatae veniam labore, aliquid atque nemo iure quidem deleniti dolore minus totam. Hic, eligendi beatae quidem vel fugiat similique."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        // $post = [];
        // foreach($posts as $p){
        //     if($p["slug"] === $slug){
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}