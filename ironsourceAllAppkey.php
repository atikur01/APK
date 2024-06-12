<?php

$authURL = 'https://platform.ironsrc.com/partners/publisher/auth';
$authHeaders = array(
    'secretkey: 963ba711c2980d4496f797ead64b2e42',
    'refreshToken: 472943593e79c664368d334df2013376',
);

$curlClient = curl_init($authURL);
curl_setopt($curlClient, CURLOPT_HTTPHEADER, $authHeaders);
curl_setopt($curlClient, CURLOPT_RETURNTRANSFER, true);
$bearerTokenResponse = curl_exec($curlClient);

// Check for errors
if(curl_errno($curlClient)){
    echo 'Curl error: ' . curl_error($curlClient);
}

$bearerToken = str_replace('"','',$bearerTokenResponse);
curl_close($curlClient);

// Now that we have the bearer token, we can use it to make another request
$apiURL = 'https://platform.ironsrc.com/partners/publisher/applications/v6?appStatus=active';
$apiHeaders = array(
    'Authorization: Bearer ' . $bearerToken,
);

$curlClient = curl_init($apiURL);
curl_setopt($curlClient, CURLOPT_HTTPHEADER, $apiHeaders);
curl_setopt($curlClient, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($curlClient);

// Check for errors
if(curl_errno($curlClient)){
    echo 'Curl error: ' . curl_error($curlClient);
}

curl_close($curlClient);

// Decode the JSON response
$data = json_decode($response, true);


    // Print appKey and appName
    foreach ($data as $app) {
        echo $app['appKey'] . ': ' . $app['appName'] . '<br>'   ;
    }
 
?>
