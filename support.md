---
layout: page
title: Support
permalink: /support/
description: Help with Puddle Jumper, an SSH client for Mac, iPad and iPhone.
lede: Answers to common questions. If yours is not here, email us.
---
<div class="faq" markdown="1">

### How do I connect to a server? {#connect}

Add a host with its hostname or IP address, choose or create a credential, then open it. The first time you connect, the app records the server's host key fingerprint. If the key later changes, the connection is refused instead of prompting, so you can investigate. Puddle Jumper makes outbound SSH connections only; it does not accept incoming connections.

### How do I use keys and the SSH agent? {#keys}

Paste an OpenSSH private key (Ed25519 is supported; other key types are reported as unsupported) into a key credential, or save a password credential. Secrets are stored in Keychain and require Face ID, Touch ID or your passcode before use.

On Mac you can instead create an agent credential, which names a key held by an SSH agent such as 1Password; the key never leaves the agent. In the Mac App Store build, choose the agent socket (for 1Password, `agent.sock`) once in the file picker. Agent credentials are not usable on iPhone and iPad, but the record still syncs.

### How does iCloud sync work? {#icloud}

Hosts, folders and settings sync via CloudKit in your private iCloud database, and secrets sync via iCloud Keychain. You must be signed in to iCloud with iCloud Keychain on. Changes usually arrive within seconds; if they do not, open the app on both devices and check your internet connection and iCloud status in Settings. We cannot see or recover your synced data.

### Does it work with Tailscale? {#tailscale}

Yes for connections: if your device is on your tailnet, you can connect to a tailnet hostname or IP like any other host. Automatic peer discovery (listing your tailnet devices in the app) is only in the directly distributed Mac build, which reads the local Tailscale status on your Mac. It is not in the Mac App Store, iPhone or iPad versions.

### Why does it ask for Local Network access? {#localnetwork}

Apple requires this permission before an app can reach devices on your home or office network, such as a Raspberry Pi or NAS. The app uses it only to connect to the servers you choose. If you declined it, enable it in Settings > Privacy & Security > Local Network (iOS/iPadOS) or System Settings > Privacy & Security > Local Network (macOS).

### Why am I asked for Face ID or Touch ID? {#faceid}

Stored passwords and private keys are protected by a biometric or passcode check before use. After you unlock, it is remembered for about two minutes. Each credential has a setting for this check.

### What data do you collect? {#privacy}

None. See the [Privacy Policy]({{ '/privacy/' | relative_url }}).

</div>

## Contact

Email [{{ site.email }}](mailto:{{ site.email }}). Please include your device, OS version and app version. Never send passwords or private keys.
