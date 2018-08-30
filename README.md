Symfony project with JWT token
=======
Simple registration system protected with JWT Token.

Check two bundles configs :
* FUSUserBundle (update db) https://github.com/FriendsOfSymfony/FOSUserBundle
* LexikJWTAuthenticationBundle (generate private.pem and public.pem) https://github.com/lexik/LexikJWTAuthenticationBundle


Get JWT Token
Change a username and a password parameters
```bash
curl -X POST \
  http://127.0.0.1:8000/api/login_check \
  -H 'cache-control: no-cache' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -H 'postman-token: 8e63f4de-382e-e602-6e1d-3588ae5d99c6' \
  -F username=username \
  -F password=password
```

To test protection use /api/test uri
Without JWT token in header it should be
```json
{
    "code": 401,
    "message": "JWT Token not found"
}
```