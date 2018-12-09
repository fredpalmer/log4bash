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

#
# Now for an example how we can change the timestamp format
#
log4bash_timefmt="+%Y-%m-%dT%H:%M:%S%z";

log_info "ISO-8601 master race! Exterminate!";

#
# How to use a context stack
#
log_info "Starting blobalizer";

context_push "blobalizer_started";

log_warning "We are beginning task";

context_push "task1";

log_success "Task has ended";

context_pop;

log_info "Taking another task from queue";

#
# Now to add some new handlers
#

log_syslog() {
	logger "$*" 
}

# Add the handler at the end of the chain
log4bash_handlers+=("log_syslog")

log_info "This message will also be logged to syslog, check it now"

