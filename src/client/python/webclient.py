import argparse
import ssl
import requests

USAGE = "webclient.py"

def main():
	url = "https://localhost:8443"
	DEFAULT_TRUST_PATH = "src/front/conf/cert.pem"

	parser = argparse.ArgumentParser()
	parser.add_argument(
		"--trust",
		type=str,
		default=DEFAULT_TRUST_PATH,
		help=f"Path to the trusted TLS certificates (default: {DEFAULT_TRUST_PATH})",
	)
	args = parser.parse_args()

	print(f"TLS version: {ssl.OPENSSL_VERSION}")
	ssl_context = get_ssl_context()
	ciphers = ssl_context.get_ciphers()
	print("Client ciphers:")
	for cipher in ciphers:
		print(cipher['description'])

	try:
		r = requests.get(url, verify=args.trust) # FIXME verify
	except requests.exceptions.SSLError as e:
		print(f"TLS Error: {e}")
		return
	
	print(r.status_code)
	print(f"GET {url}")

def get_ssl_context() -> ssl.SSLContext:
	context = ssl.create_default_context()
	return context

if __name__ == "__main__":
	main()
