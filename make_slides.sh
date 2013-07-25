# deprecated in favor of make_presentation.ipynb, because
# that generates presentations that rely on the CDN being
# available
ipython nbconvert --format reveal *.ipynb
cd nbconvert_build
python -m SimpleHTTPServer 8000 &
chromium-browser http://localhost:8000 &
