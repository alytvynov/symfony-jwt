Symfony project with a JWT token protection
=======
A simple registration system protected with JWT Token.

Check two bundles configs :
* FUSUserBundle (update db) https://github.com/FriendsOfSymfony/FOSUserBundle
* LexikJWTAuthenticationBundle (generate private.pem and public.pem) https://github.com/lexik/LexikJWTAuthenticationBundle
* NelmioCorsBundle https://github.com/nelmio/NelmioCorsBundle


Get a JWT Token
Change a `username` and a `password` parameters
```bash
curl -X POST \
  http://127.0.0.1:8000/api/login_check \
  -H 'cache-control: no-cache' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -H 'postman-token: 8e63f4de-382e-e602-6e1d-3588ae5d99c6' \
  -F username=username \
  -F password=password
```

To test protection use `/api/test` uri.   
Without JWT token in header it should be
```json
{
    "code": 401,
    "message": "JWT Token not found"
}
```

To pass protection add the header `Authorization : Bearer <TOKEN>`
```bash
curl -X GET \
  http://127.0.0.1:8000/api/test \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE1MzU2MzMzNjQsImV4cCI6MTUzNTYzNjk2NCwicm9sZXMiOlsiUk9MRV9VU0VSIl0sInVzZXJuYW1lIjoibHl0dnlub3YifQ.gu903Ei5J4XsZ_RN-OyPDZuq7IsXbPQaZxG3Vx6xJhmRHf-QnvGjt_tHeofrM8ZzjdfTQ7Uz_RGlywudccU4zczbTx2_0oa7m-K1QFXOZbZzYEzt_HjIlrgAhg8a2TrF0uK2qXJQMPUdonJUKY-yC-w2ukMxo1QRyNDZ0IunOhqUt4cznpo2LsVy4UWBas181uboGxBycJowuAuE0sHuouW6zYUqVRWeuf4JymNSBoYlN1VTAKhdj7KS580dDa6Yt6KhcqjAC4kBOadVDMckwiZ81hZUpPZuq2ok34954d0ilO1wiLaXGXNF8jdS7gmeLjhcvevNo7dqwbSpuGOn1WGVwFZRb6CsKVhtQ0cCywnbAq7p6CY6UYjzVrXW4TTwgIV8MVx05qPrgPxOQ3uTr8pqFmmDVIw8plVXRlSipnQKFaC0SaIb3D98imClLuEeb5CPp1Cpt4GpJg30rMxRNELi35zxtf0dSRzxN6ZjTnTFCl_aPMEEPTBBM_N3eAFRv2ijhIXXNs5oTf-C0KfU9TindMDr4Omx_RTAjQKiOHFFINtLNxo_EVD7HTT2bgoE1JthLyLGTYa203ZAgUu33iGmRRGBt2YrWwkmrngUfMAkwjpQr_ni60EBLLc4_xJXHwQsIePXX0mLjE4FlBETaaEgw6dFywlNagWdGxb5W1A' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'postman-token: 7fba95bb-ec3b-49da-0f6e-996edce9f779'
```