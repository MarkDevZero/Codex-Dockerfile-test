from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '''<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Hello Codex</title>
<style>
@keyframes blink {
  0% { opacity: 1; }
  50% { opacity: 0; }
  100% { opacity: 1; }
}
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  background-color: #f0f0f0;
  font-family: Arial, sans-serif;
}
h1 {
  animation: blink 1s infinite;
}
</style>
</head>
<body>
<h1>Hello Codex coding!!</h1>
</body>
</html>'''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
