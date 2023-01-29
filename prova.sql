/*CREATE TABLE "user" (
"id" SERIAL NOT NULL,
"email" TEXT NOT NULL,
"name" TEXT NOT NULL,
"password" TEXT NOT NULL,
CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "posts" (
"id" SERIAL NOT NULL,
"title" TEXT NOT NULL,
"content" TEXT NOT NULL,
"authorId" INTEGER NOT NULL,
CONSTRAINT "posts_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "hashtags" (
"id" SERIAL NOT NULL,
"name" TEXT NOT NULL,
CONSTRAINT "hashtags_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "postsHashtags" (
"id" SERIAL NOT NULL,
"postId" INTEGER NOT NULL,
"hashtagId" INTEGER NOT NULL,
CONSTRAINT "postsHashtags_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "postLikes" (
"id" SERIAL NOT NULL,
"postId" INTEGER NOT NULL,
"userId" INTEGER NOT NULL,
CONSTRAINT "postLikes_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "posts" ADD CONSTRAINT "posts_authorId_fkey" FOREIGN KEY ("authorId")
REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "postsHashtags" ADD CONSTRAINT "postsHashtags_postId_fkey" FOREIGN KEY ("postId")
REFERENCES "posts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "postsHashtags" ADD CONSTRAINT "postsHashtags_hashtagId_fkey" FOREIGN KEY ("hashtagId")
REFERENCES "hashtags"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "postLikes" ADD CONSTRAINT "postLikes_userId_fkey" FOREIGN KEY ("userId")
REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "postLikes" ADD CONSTRAINT "postLikes_postId_fkey" FOREIGN KEY ("postId")
REFERENCES "posts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

insert into "user" ("email", "id", "name", "password") values ('nathan@email.com', 1, 'Nathan', '123456');
insert into "user" ("email", "id", "name", "password") values ('cicero@email.com', 2, 'Cicero', '123456');
insert into "user" ("email", "id", "name", "password") values ('franklin@email.com', 3, 'Franklin', '123456');
insert into "user" ("email", "id", "name", "password") values ('magdiel@email.com', 4, 'Magdiel', '123456');
insert into "user" ("email", "id", "name", "password") values ('vital@email.com', 5, 'Vital', '123456');
insert into "hashtags" ("id", "name") values (1, 'Livros');
insert into "hashtags" ("id", "name") values (2, 'Moda');
insert into "hashtags" ("id", "name") values (3, 'Lazeerr');
insert into "hashtags" ("id", "name") values (4, 'Lazer');
insert into "hashtags" ("id", "name") values (5, 'Esporte');
insert into "hashtags" ("id", "name") values (6, 'Política');
insert into "hashtags" ("id", "name") values (7, 'Economia');
insert into "posts" ("authorId", "content", "id", "title") values (1, 'Conteudo post 1', 1, 'Post 1');
insert into "posts" ("authorId", "content", "id", "title") values (2, 'Conteudo post 2', 2, 'Post 2');
insert into "posts" ("authorId", "content", "id", "title") values (3, 'Conteudo post 3', 3, 'Post 3');
insert into "posts" ("authorId", "content", "id", "title") values (4, 'Conteudo post 4', 4, 'Post 4');
insert into "posts" ("authorId", "content", "id", "title") values (5, 'Conteudo post 5', 5, 'Post 5');
insert into "posts" ("authorId", "content", "id", "title") values (5, 'Conteudo post 5', 6, 'Post 5');
insert into "postsHashtags" ("hashtagId", "id", "postId") values (1, 1, 1);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (1, 2, 2);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (2, 3, 2);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (4, 4, 4);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (5, 5, 5);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (4, 6, 5);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (7, 7, 6);
insert into "postsHashtags" ("hashtagId", "id", "postId") values (4, 8, 6);
insert into "postLikes" ("id", "postId", "userId") values (1, 1, 5);
insert into "postLikes" ("id", "postId", "userId") values (2, 2, 4);
insert into "postLikes" ("id", "postId", "userId") values (3, 3, 2);
insert into "postLikes" ("id", "postId", "userId") values (4, 4, 3);
insert into "postLikes" ("id", "postId", "userId") values (5, 5, 1);*/


