#!/usr/bin/env python3
from tqdm import tqdm
import requests as req
import json

ACCESS_TOKEN = '???'
API_URL = '???' + 'api/v1/'

data = json.loads(open('data.json').read())

s = req.Session()
s.headers.update({'Authorization': f'Token {ACCESS_TOKEN}'})

for chal in tqdm(data):
    r = s.post(
        API_URL + 'challenges', 
        headers = {'Content-Type': 'application/json'}, 
        json = {
            'name': chal['name'], 
            'category': chal['category'], 
            'value': chal['value'], 
            'description': open('description/' + chal['description']).read(), 
            'type': chal['type'], 
            'state': chal['state'], 
        }
    )

    chal_id = r.json()['data']['id']

    s.post(
        API_URL + 'flags', 
        headers = {'Content-Type': 'application/json'}, 
        json = {
            'challenge_id': chal_id, 
            'type': 'static', 
            'content': chal['flag'], 
            'data': ''
        }
    )

