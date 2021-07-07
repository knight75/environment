gp() {
    git push git@github.com:knight75/"$@".git
}



ssh-newkeygen() (
    dir=$sshdir/$USER
    read  -s -rep $'Enter passphrase:\n' pass

    mkdir $dir/"$@" | ssh-keygen -t $type -b $bytes -f $dir/"$@"/id_ecdsa -P "$pass"
)

