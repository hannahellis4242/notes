# Public Key Infrastructure

PKI is public key infrastructure. It uses a set of different protocols, algorithms, entities and certificates. These allow you to perform communication based on trusted certificates. This allows encryption to be used and authentication of the server data is received from.

There are multiple elements in PKI, for example the certification authority (CA).

The certification authority's role is to either sign certificates or delegate trust to other entities.

The other entities are called intermediate certification authorities. The main responsibility of intermediate CA's is the signature of new certificates that are issued for other entities, for example a website.

There are different owners of certificates for different purposes.

Every entity in the PKI has it's own public key ([see below](#asymmetric-encryption)) included in the certificate. Including websites that own the certificate.

The main goal of the PKI is to ensure that the public key of every entity in the infrastructure is trusted by other entities. Intermediate CAs and CAs verify the public keys of other entities establishing a "chain of trust".

## Encryption

### Symmetric Encryption

![symetric](./img/symetric.svg)

1. Data is encrypted using a secret key.
2. The encrypted data is sent to the other side
3. The encrypted data is decrypted using the same secret key.

> The same key is used to encrypt and decrypt

#### Some Symmetric Encryption Algorithms

- DES
  - Considered obsolete
  - Key Length 56 bits
- 3DES
  - Improved version of DES (it does DES three times)
  - Considered obsolete
- AES
  - Advanced Encryption System
  - Different length keys (AES128 for 128 bit key, for example)

### Hashing

- Why do we use hashing?

Data can be changed during data transfer. Hashes are sensitive to changes to their input, so sending a hash along with the encrypted data can be used to ensure that the data arrived unchanged.

![hashing](./img/hash.svg)

The hashing algorithm takes in a string of characters and gives back a fixed length number that corresponds to that string. The length of the number depends on the hashing algorithm. The mapping between the input and the resulting number is many to one, so given a hash it is not possible to know what the input was that gave that particular hash.

There are some hashing algorithms that also take a key.

![hashing](./img/hash2.svg)

1. Data is hashed with an hashing algorithm that uses a key.
2. The data and the hash are sent to the receiver.
3. The receiver then hashes the data it receives with their copy of the same key that was originally used to hash the data on the senders side to create their own hash.
4. The receiver checks the hash they generated with the one sent to them. If there is a mismatch then they know there was an error in sending.

#### Including encryption

If encryption is used, then it is usually done before the hashing occurs. Ie the hash is generated from the encrypted data.

#### Why use a key?

A key is not required when doing hashing. Without a key based algorithm we can still do the same data verification check. However if we use a symmetric key, then we can also authenticate the sender of the data. Ie if the same key doesn't hash to the same result then either the data isn't from the sender with that key or the data has an error of some kind, or it has been tampered with somehow.

#### Hashing Algorithms

Some common hashing algorithms are

##### MD5

Output is a 128 bit number

You can use md5 on the bash terminal. It takes in a filename to hash. Demo usage on bash terminal
s

``` bash
touch file.txt
md5 file.txt
echo "Some text" > file.txt
md5 file.txt
```

> Notice how the second call is completely different with a non-empty file.

##### SHA

SHA has different versions with different bit lengths, SHA-1 has 160 bit outputs, SHA-256 has 256 bit outputs and SHA-512 has 512 bit outputs. Most often used version is SHA-256.

You can use shasum on the bash terminal create a sha hash of a file. By default this uses SHA-1. You can use the algorithm flag (-a) to set which algorithm to use.

``` bash
touch file.txt
shasum -h
shasum file.txt
shasum -a 256 file.txt
shasum -a 512 file.txt
```

> Notice the different versions of the SHA algorithm

##### HMAC

Can be used standalone, but often used with either MD5 or SHA algorithms. Main purpose is to add a key along with the hash.
[more information](https://en.wikipedia.org/wiki/HMAC)

### Asymmetric Encryption

![Asymmetric Keys](./img//AsymetricKeys.svg)

Asymmetric encryption uses two keys, a private key and a public key.

![Encryption Asymmetric](./img/Encryption-Asymmetric.svg)

Data encrypted with the private key can only be decrypted with the public key, and data encrypted with the public key can only be decrypted with the private key.

The owner of the keys knows both public and private keys. The owner sends their public key to anyone who wishes to send them data. Once they have the public key, they can use it to encrypt their data. The encrypted data is then sent to the owner who can use their private key to decrypt. This is the second case in the above diagram.

#### Digital signature

Asymmetric encryption can also be used to sign data.

![signature](./img//signature.svg)

1. The data is hashed.
2. The hash is then encrypted using the owners private key.
3. The encrypted hash is then sent along with the original data.
4. The receiver then can hash the data to get their own copy of the hash.
5. The encrypted hash is decrypted using the public key of the owner.
6. The decrypted hash and the local hash can then be compared.
7. Any differences in the hash value show that this wasn't the data the owner signed.

#### Encryption Algorithms

#### RSA

The RSA api lets you create public and private keys of various lengths as well as encrypting and decrypting data. It also allows you to sign data.

Public and private keys are always the same length but can be chosen to be between 1024 and 4096 bits (with fixed options between those two lengths).

## Certificates

A certificate is a file with information about an entity. It includes information about

- The owner of the certificate, things like the url of their website, company name, address etc. Sometimes there will be a serial number for the certificate here.
- The issuer of the certificate. This is where the information about the entity that signed the certificate exists. It will contain information about the CA or the intermediate CA who signed and issued the certificate.
- The signature. This is an encrypted hash of the certificate created with the private key of the issuer. The signature is created by the issuer. This signature allows us to create the chain of trust as discussed above. If we trust the issuer of the certificate then we can trust the owner of the certificate too. There are self-signed certificates, which is a certificate signed by the owner, ie the owner is the issuer. There is no chain of trust here unless you trust the owner.
- Finally and most importantly the certificate contains the __public key__ of the _owner_.

All certificates are publicly accessible, so that you can establish trust. However this is usually done by your browser, so you don't have to do this manually.

## OpenSSL

### Using OpenSSL to generate RSA keys

You can generate RSA keys with OpenSSL by using the following command on your terminal.

``` bash
openssl genrsa
```

This will generate keys and show it on the command line.

#### Encrypted Key

You can create an encrypted key (using a symmetric encryption algorithm) by adding the `--aes256` flag

``` bash
openssl genrsa -aes256
```

This will then generate a key and then prompt you for a pass phrase for the symmetric encryption.

You can use other symmetric key encryption algorithms if you wish, but AES is recommended.

#### Saving to a file

You can save your key to a file

``` bash
openssl genrsa -out private.pem
```

This will save the key to a file called `private.pem`. [What is a .pem file?](https://fileinfo.com/extension/pem)

You can also add encryption like [above](#encrypted-key)by adding the `-aes256` flag.

#### Different Length Key

You can specify the length of the key when generating your key

``` bash
openssl genrsa 4096
```

#### Public Key

The public key is mixed in with the private key when generating keys with `genrsa`. Yes secretly we had both keys all along. To extract the public key we can use the following command.

``` bash
openssl rsa -in private.pem -outform PEM -pubout -out public.pem
```

- `-in` specifies which file to extract the key from.
- `-outform` specifies what format to show the public key in.
- `-pubout` tells rsa we want to extract the public key.
- `-out` as above, specifies the output file.

### Using OpenSSL to encrypt a file

#### OpenSSL Symmetric Encryption

``` bash
openssl enc -aes-256-cbc -pass pass:password -pbkdf2 -in plain.txt -out cypherText.txt
```

This command reads in a file `plain.txt` and outputs an encrypted file `cypherText.txt`. The flags are as follows

- `enc` the encryption command
- `-aes-256-cbc` specifies to use the aes-256 encryption algorithm.
- `-pass pass:password` specifies the password. Everything after `pass:` is the password. If not provided, you will get prompted for a password.
- `-pbkdf2` tells the algorithm to use "password-based key derivation function 2". Required to quieten a warning.
- `-in` input file
- `-out` output file

##### OpenSSL Symmetric Decryption

``` bash
openssl enc -d -aes-256-cbc -pass pass:password -pbkdf2 -in cypherText.txt -out decrypt.txt   
```

Same as [above](#openssl-symmetric-encryption) except for the `-d` flag for decryption.

Note there are more flags and options not covered in these notes, so check the help information.

### OpenSSL Asymmetric Encryption

``` bash
openssl pkeyutl -encrypt -pubin -inkey public_key.pem -out encrypted_message.bin
```
