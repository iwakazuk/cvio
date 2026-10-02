#!/usr/bin/env bash
# Uses existing OpenSSL only. Does not install software or build the app.
set -euo pipefail
umask 077

root="$(cd "$(dirname "$0")/.." && pwd)"
destination="$root/.local-signing"
if [[ -e "$destination" ]]; then
  echo 'Signing directory already exists; refusing to replace the app signing key.' >&2
  exit 1
fi
command -v openssl >/dev/null
mkdir -m 700 "$destination"
trap 'rm -f "$destination/private-key.pem"' EXIT

openssl rand -base64 36 > "$destination/password.txt"
openssl req -new -x509 -newkey rsa:2048 -sha256 -days 10000 \
  -subj '/CN=cvio/O=Silaris' \
  -passout "file:$destination/password.txt" \
  -keyout "$destination/private-key.pem" \
  -out "$destination/certificate.pem" 2>/dev/null
openssl pkcs12 -export -name cvio \
  -inkey "$destination/private-key.pem" \
  -passin "file:$destination/password.txt" \
  -in "$destination/certificate.pem" \
  -out "$destination/cvio-release.p12" \
  -passout fd:3 3< "$destination/password.txt"
openssl pkcs12 -in "$destination/cvio-release.p12" \
  -passin "file:$destination/password.txt" -noout
openssl x509 -in "$destination/certificate.pem" -noout -fingerprint -sha1 \
  > "$destination/sha1.txt"
echo 'Created .local-signing/cvio-release.p12 and password.txt (alias: cvio).'
echo 'Back up this directory securely. Never commit it or regenerate the key for updates.'
