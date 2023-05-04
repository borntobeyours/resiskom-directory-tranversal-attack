from flask import Flask, request, send_from_directory, abort
import os

app = Flask(__name__)

@app.route('/')
def index():
    return "Welcome to the Resiskom Directory Tranversal challenge!"

@app.route('/files', methods=['GET'])
def get_file():
    file_path = request.args.get('path')
    if file_path:
        try:
            return send_from_directory('static', file_path)
        except:
            abort(404)
    else:
        return "Please provide a valid file path."

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5000)
