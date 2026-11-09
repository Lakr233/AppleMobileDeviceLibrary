# AppleMobileDeviceLibrary

This repo is used to store binary targets for libimobiledevice.

Builds capture the actual Git origin, commit and tree of each compiled source in `Licenses/manifest.json`. The notice files come from that commit's tracked license, copying, notice, copyright and author files, including nested files. The wrapper's MIT license is recorded separately under `Licenses/AppleMobileDeviceLibrary/LICENSE`.

Both architecture builds must have identical source and notice contexts before they can be combined. The complete build notice set is carried in each XCFramework, each SwiftPM binary ZIP, the generated SwiftPM package and `binpack.tar`. Releases also publish `Licenses.zip`. This is the source inventory for the full build, not a claim that every component is linked into every individual framework.

Missing source context, modified tracked sources, missing license coverage or changed notice bytes stop packaging. This does not establish license compliance or reconstruct the provenance of older binary releases. No source revisions are inferred from an old wrapper package revision.

Run the offline packaging fixtures with `bash Tests/payload-notices.sh`. They use pinned upstream notice texts and mocked Git/native build tools. The consumer-pinned packaging scripts are replayed to demonstrate the missing-notice failure. The fixtures do not compile the Apple SDK payloads.
