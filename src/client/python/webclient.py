import requests

USAGE = "webclient.py"

def main():
    url = "https://localhost:8443"
    r = requests.get(url, verify=False) # FIXME verify
    print(r.status_code)
    print(f"GET {url}")
    print(USAGE)

if __name__ == "__main__":
    main()
