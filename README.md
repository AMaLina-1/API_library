# API_library
This is for UPSTART1  SOA project API, we can find and test all the API here.

## Project Idea
以新竹市政府開放資料平台的「景點清單」資料集作為在地旅遊/導覽的資料來源，先完成取樣與自動化蒐集，之後可以放進sanbox game。

## Resources of Interest
- <Hsinchu Open Data> — <GET /API/v3/Rest/OpenData/5A07674C217C3EC7>

## Data Elements
- <景點名稱(name)>
- <地址(address)>
- <景點介紹(description)>
- <AreaCode(行政區代碼)>
- <機關代碼(提供單位)>

## Business Entities
- <Entity A>、<Entity B>、<Entity C>

## API Docs & Auth
- Base: `<https://opendata.hccg.gov.tw>`
- Endpoint: `<GET /API/v3/Rest/OpenData/5A07674C217C3EC7>`
- Auth: <none>
- Headers: `Accept: application/json`
- Rate limits / Notes: <一次500筆>

## CLI Sampling
```bash
curl -H "Accept: application/json" "https://<host>/<path>?take=10&skip=0"