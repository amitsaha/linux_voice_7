from app import app
def test_get_root():
    client = app.test_client()
    res = client.get('/')
    assert res.data == b'Hello World!'
