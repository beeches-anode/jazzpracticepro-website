# Backup & Restore

Keep your data safe with local backups or optional encrypted cloud backup.

## Local v3 Backup

- Export a full backup (v3 JSON) at any time
- Import backups with Merge or Replace

## Encrypted Cloud Backup (Optional)

- End-to-end encryption with your passphrase (PBKDF2-SHA256 + AES-GCM-256)
- Compression: gzip before encryption
- Stored in Supabase Storage with per-user access rules
- Passphrase never leaves your device and lives only in-memory per tab

## Tips

- Create a passphrase you’ll remember and store it securely
- Export a local backup before major changes
