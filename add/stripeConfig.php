<?php
include_once('./stripe/init.php');

$publishableKey="pk_test_51PILPYEDzw81FMlzM2spNTZ5GKXQ1NvHyiffkULMUgMG9aMzpM5tFRky6AooVHho2DvqQh0o3LbIT6jOF1n0H7AB00E9Twzk2C";

$secretKey="sk_test_51PILPYEDzw81FMlzuElbgYcK5hJtKYB1Ygq1IxRGhmTqJ0lGwSo1wzeKKE78Cpx0NVLcozIdB7uaGlxWRs1NrXHk00CIacUEDb";

\Stripe\Stripe::setApiKey($secretKey);
?>
