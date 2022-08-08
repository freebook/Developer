# Invoke-RestMethod

## GET

`$response = Invoke-RestMethod 'http://api.netkiller.cn/public/price.json'`

`echo $response`



## POST



$data = @{

    customer = 'something'

    name = 'whatever'

}

$data \| ConvertTo-JSON

`Invoke-RestMethod -Method Post -Uri $url -Body $body -ContentType 'application/json'`









