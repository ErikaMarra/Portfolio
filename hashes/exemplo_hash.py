import hashlib
 texto = "teste"
 print ("MD5:" , hashlib.md5 ( texto.encode()).hexdigest())
 print ("SHA-256:", hashlib.sha256( texto.encode()).hexdigest())
