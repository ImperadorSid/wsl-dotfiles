#!/usr/bin/env fish

function git_profile
	set email $argv
	set sed_match '1s/.*\/([^ ]+).*/\1/p'

	set gpg_key (gpg -k --keyid-format long $email | sed -nr $sed_match)

	if test -n "$gpg_key"
		git config user.email $email
		git config user.signingKey $gpg_key

		git config -l
	end
end
