# wow-StrlowerFixer
Simple WoW Addon to fix 'strlower' errors.

This is a common error, that I've seen. Instead of resetting my entire UI,
I decided to create a simple Addon to squash the error and ensure that
the `strlower` function will not error if nothing is passed to it.

Reference: https://us.forums.blizzard.com/en/wow/t/chatframe-lua-error/47531

### Install

While testing this -- perhaps for weeks, because the error doesn't show up that often anymore -- I am not going to upload this to Curse. Until then, you'll need to download this code and install it in your `Interface/AddOns` directory.

1. Click the "Code" dropdown above.
2. Select "Download ZIP".
3. Extract the resulting ZIP file.
4. Rename the directory `wow-StrlowerFixer-master` to `StrlowerFixer`.
5. Copy `StrlowerFixer` to your `Interface\AddOns` directory.
6. Reload (`/reload`) or restart WoW.