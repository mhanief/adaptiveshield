# Your Token details
# This can be generated from Adaptive Shield dashboard
# Steps to generate API key: User Profile > API > Generate new key
$apiKey = "<your_api_key>"
$accountId = "<your_account_id>"
$baseUrl = "https://api.adaptive-shield.com/api/v1"

# Include authorize in the header
$headers = @{
    "Authorization" = "Token $apiKey"
}

# Replace 'your-endpoint-here' with the specific API endpoint you want to access
# $url = "$baseUrl/your-endpoint-here"
# Can refer to this API document: https://adaptiveshield.document360.io/docs/api-reference 
# To access the document, click you name > Knowledge Base. 
$url = "$baseUrl/accounts/$accountId/user_inventory"

# HTTP requests with GET 
$response = Invoke-RestMethod -Uri $url -Headers $headers -Method Get

# Work with the $response variable to access API data
# For example, you can output the response to the console
$response | ConvertTo-Json