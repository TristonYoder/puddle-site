---
layout: page
title: Privacy Policy
permalink: /privacy/
description: How Puddle Jumper handles your data. The developer collects none.
effective_key: privacy_effective
applies: "Applies to Puddle Jumper for macOS, iPadOS and iOS, published by 7 & Co LLC."
---


## Summary

7 & Co LLC does not collect, receive, or store any data from your use of Puddle Jumper. The app has no accounts, no analytics, no advertising, no tracking, and no servers operated by us.

## What the app stores, and where

**Hosts, folders, tags, connection settings, notes, last-connected time, pinned host-key fingerprints, and credential names and public-key fingerprints (no secrets).**
Stored on your device, and synced through your private iCloud database (CloudKit private database) when you are signed in to iCloud. Only you can access it, through your Apple Account. Apple operates iCloud under its own terms and privacy policy. We cannot see this data.

**Passwords, key passphrases, and imported private keys.**
Stored in the Keychain, marked for iCloud Keychain sync. Only you can access them. Apple end-to-end encrypts iCloud Keychain. The app asks for Face ID, Touch ID or your device passcode before using a stored secret.

**App preferences, such as appearance and host list layout, and on Mac the location of an SSH agent socket you choose.**
Stored on your device (app preferences). Only you can access them.

**SSH session traffic.**
Sent directly from your device to the server you chose. It is not routed through us and is not stored by the app. You and the server you connect to can access it.

If you use an SSH agent (for example 1Password), the app asks the agent to sign a login challenge. The private key stays in the agent and is not stored by Puddle Jumper.

## Data collected by the developer

None. We run no backend, so there is nowhere for your data to be sent. We do not receive crash reports or usage statistics from the app. If you choose to share diagnostic information with Apple (for example through TestFlight or system analytics sharing), Apple handles it under your settings and its own policies.

## Permissions the app requests

- **Local Network** (iOS, iPadOS, macOS): so the app can connect to SSH servers on your local network. The system shows the message "Connect to SSH servers on your local network."
- **Face ID / Touch ID:** to unlock stored passwords and private keys. Biometric data is handled entirely by the operating system. The app only receives a success or failure result.
- **iCloud (CloudKit and Keychain):** to sync your hosts and credentials between your devices.
- **Background notifications (iOS and iPadOS):** silent CloudKit notifications that tell the app another device changed your data. They show no alerts and need no permission prompt.
- **Files you choose (Mac App Store build):** if you use an SSH agent, you select its socket using the system file picker, and the app remembers that choice so it can reconnect.

## Network connections the app makes

- Outbound SSH connections to the hosts you enter.
- iCloud sync, handled by Apple's system frameworks.
- Directly distributed Mac build only: the app reads Tailscale's local status from your own Mac (a loopback address, 127.0.0.1) to list your devices. It does not contact Tailscale's servers itself.

The app makes no other network connections and contains no third-party analytics, advertising or tracking code.

## Third parties

No third party receives data from us. The app uses open-source libraries for SSH and terminal emulation that run on your device (see [Licenses]({{ '/licenses/' | relative_url }}) and Acknowledgements in the app). Apple provides iCloud and Keychain; its handling of that data is governed by Apple's policies.

## Children

Puddle Jumper is a developer tool and is not directed to children. We do not knowingly collect personal information from anyone, including children.

## Your choices and rights

Because we hold none of your data, we cannot access, export or delete it for you. You control it directly:

- Delete hosts, folders and credentials inside the app.
- Deleting the app removes local data from that device. Data in iCloud and iCloud Keychain may remain until you remove it there; manage iCloud data for the app in your device's iCloud settings and passwords in your Passwords settings.
- Turning off iCloud for the app stops syncing.

Depending on where you live, you may have legal rights over personal data. Since we do not hold any, there is nothing for us to provide, but you may contact us with any question.

## Security

Secrets are kept in the system Keychain rather than in the app's own files, and SSH connections use standard encryption. The Face ID / Touch ID check is an additional app-level gate. No method of storage is perfectly secure.

## Changes to this policy

If this policy changes, the updated version will be posted on this page with a new effective date.

## Contact

{{ site.publisher }}, [{{ site.email }}](mailto:{{ site.email }})
<!-- TODO-legal: no postal address is listed; add one if counsel requires it (e.g. for GDPR/CCPA contact details). -->
