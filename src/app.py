from flask import Flask, request, redirect

app = Flask(__name__)
urls = {}

@app.route('/')
def shorten():
	original_url = request.args.get("url")
	if not original_url:
		return "Please provide aURL"
	short_key = str(len(urls) + 1)
	urls[short_key] = original_url
	return f"Shortened URL: /{short_key}"

@app.route('/<key>')
def redirect_url(key):
	original_url = urls.get(key)
	if original_url:
		return redirect(original_url)
	return "Invalid short url"
