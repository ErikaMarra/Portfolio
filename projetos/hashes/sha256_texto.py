import hashlib

texto = input("Digite um texto: ")
hash_sha256 = hashlib.sha256(texto.encode()).hexdigest()

print("SHA-256:", hash_sha256)
