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
