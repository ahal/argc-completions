_patch_table() { 
    _patch_table_edit_options \
        '--type;[`_choice_type`]' \
        '--exclude-type;[`_choice_type`]' \
        '--output;[`_choice_output`]' \

}

_choice_type() {
    cat <<-'EOF'
adfs
cgroup2
efivarfs
hfs
pipefs
securityfs
ufs
autofs
configfs
ext2
hpfs
proc
sockfs
vfat
bdev
cpuset
ext3
hugetlbfs
pstore
swap
EOF
}

_choice_output() {
    printf "%s\n" avail file fstype iavail ipcent itotal iused pcent size source target used
}