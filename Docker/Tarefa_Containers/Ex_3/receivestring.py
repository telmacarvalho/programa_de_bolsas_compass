import hashlib

while True:
    data = input('Digite um texto:\n')
    enconded_data = data.encode()
    hash_text = hashlib.sha1(enconded_data)
    hash = hash_text.hexdigest()
    print(hash)
