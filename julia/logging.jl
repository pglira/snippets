using Logging

# Set up logger for messages with loglevel >= debug
logger = ConsoleLogger(stdout, Logging.Debug)
global_logger(logger)

@info "Info msg"
@debug "Debug msg"
