# AI Control Endpoints

For transparency, these serverless endpoints control AI usage. They don’t store your practice content.

- GET /.netlify/functions/ai-status — Kill switch + credit status
- POST /.netlify/functions/reserve-credit — Reserve a credit
- POST /.netlify/functions/confirm-usage — Log success
- POST /.netlify/functions/refund-credit — Refund on failure

See the app’s operations documentation for authoritative details.

