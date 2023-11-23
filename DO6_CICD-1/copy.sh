#!/bin/bash
sudo -u gitlab-runner scp src/cat/s21_cat ironbelg@10.10.0.2:~/
sudo -u gitlab-runner scp src/grep/s21_grep ironbelg@10.10.0.2:~/
ssh -T ironbelg@10.10.0.2 > /dev/null 2>&1 << EOF
    echo '1' | sudo -S mv ~/s21_cat /usr/local/bin/
    echo '1' | sudo -S mv ~/s21_grep /usr/local/bin/
EOF

