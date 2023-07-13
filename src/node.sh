_patch_help() {
    $@ --help | sed '/^\s*-/ s/=\.\.\./=value/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--cpu-prof-dir(<dir>)' \
        '--diagnostic-dir(<dir>)' \
        '--experimental-policy(<file>)' \
        '--heap-prof-dir(<dir>)' \
        '--icu-data-dir(<dir>)' \
        '--openssl-config(<file>)' \
        '--redirect-warnings(<file>)' \
        '--report-dir(<dir>)' \
        '--report-directory(<dir>)' \
        '--tls-keylog(<file>)' \
        '--heapsnapshot-signal;[`_choice_signal`]' \
        '--unhandled-rejections;[strict|warn|none]' \
        '--use-largepages;[off|on|silent]' | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}

_choice_signal() {
    cat <<-'EOF'
ABRT	Abnormal termination
ALRM	Virtual alarm clock
BUS	BUS error
CHLD	Child status has changed
CONT	Continue stopped process
FPE	Floating-point exception
HUP	Hangup detected on controlling terminal
ILL	Illegal instruction
INT	Interrupt from keyboard
KILL	Kill, unblockable
PIPE	Broken pipe
POLL	Pollable event occurred
PROF	Profiling alarm clock timer expired
PWR	Power failure restart
QUIT	Quit from keyboard
SEGV	Segmentation violation
STKFLT	Stack fault on coprocessor
STOP	Stop process, unblockable
SYS	Bad system call
TERM	Termination request
TRAP	Trace/breakpoint trap
TSTP	Stop typed at keyboard
TTIN	Background read from tty
TTOU	Background write to tty
URG	Urgent condition on socket
USR1	User-defined signal 1
USR2	User-defined signal 2
VTALRM	Virtual alarm clock
WINCH	Window size change
XCPU	CPU time limit exceeded
XFSZ	File size limit exceeded
EOF
}