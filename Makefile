start:
	php bin/console server:start;

stop:
	php bin/console server:stop;

router:
	php bin/console debug:router;

drop:
	php bin/console doctrine:database:drop --force;

db:
	php bin/console doctrine:database:create;
	php bin/console doctrine:schema:update --force;

cache:
	php bin/console cache:clear;

create_user:
	php bin/console fos:user:create user1 user1@gmail.com Test123!;
	php bin/console fos:user:create user2 user2@gmail.com Test123!;