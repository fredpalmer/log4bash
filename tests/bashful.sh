#!/usr/bin/env bash
#--------------------------------------------------------------------------------------------------
# log4bash - Makes logging in Bash scripting suck less
# Copyright (c) Fred Palmer
# Licensed under the MIT license
# http://github.com/fredpalmer/log4bash
#--------------------------------------------------------------------------------------------------
source ../log4bash.sh

log "This is regular log message... ";

log_info "So is this...";

log_success "Yeah!! Awesome Possum.";

log_warning "Luke ... you turned off your targeting computer";

log_error "Whoops! I made a booboo";

# If you have figlet installed -- you'll see some big letters on the screen!
log_captains "What was in the captain's toilet?";

# If you have the "say" command (e.g. on a Mac)
log_speak "Resistance is futile";
