vk_regions:
	php bin/console vk:regions;

start:
	php bin/console server:start;

start_linux:
	php bin/console server:start --env=dev --docroot=/home/lytvynov/projects/lytvynov/ads/web

start_mac:
	php bin/console server:start --env=dev --docroot=/var/www/ads/web

stop:
	php bin/console server:stop;

router:
	php bin/console debug:router;

drop:
	php bin/console doctrine:database:drop --force;
db:
	php bin/console doctrine:database:create;
	php bin/console doctrine:schema:update --force;
	#php bin/console regions:update;
	#php bin/console fake:users:create;
	#php bin/console fake:ads:create;
	#php bin/console oauth:client:create localhost localhost;
	#php bin/console rent_ad:users:manage;

cache:
	php bin/console cache:clear;

create_bundle:
	php bin/console generate:bundle --namespace=ImageBundle;

create_user:
	php bin/console fos:user:create user1 user1@gmail.com Test123!;
	php bin/console fos:user:create user2 user2@gmail.com Test123!;

create_client:
	php bin/console oauth:client:create localhost localhost code;
