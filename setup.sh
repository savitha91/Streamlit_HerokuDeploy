mkdir -p ~/.streamlit/
echo "[general]
email = \"savi.ramesh91@gmail.com\"
" > ~/.streamlit/credentials.toml
echo "[server]
headless = true
port = $PORT
enableCORS = false
" > ~/.streamlit/config.toml