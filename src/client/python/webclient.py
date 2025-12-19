import argparse
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

    try:
        r = requests.get(url, verify=args.trust) # FIXME verify
    except requests.exceptions.SSLError as e:
        print(f"TLS Error: {e}")
        return
    
    print(r.status_code)
    print(f"GET {url}")

if __name__ == "__main__":
    main()
