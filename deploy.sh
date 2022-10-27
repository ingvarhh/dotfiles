SRC=/Users/ingvar/code/dotfiles
DST=/Users/ingvar

ln -fs ${SRC}/.bash_profile ${DST}/.bash_profile
ln -fs ${SRC}/.tmux.conf ${DST}/.tmux.conf
ln -fs ${SRC}/.editrc ${DST}/.editrc
ln -fs ${SRC}/.inputrc ${DST}/.inputrc
ln -fs ${SRC}/.gitconfig ${DST}/.gitconfig

mkdir -p ${DST}/.config/nvim/
ln -fs ${SRC}/.config/nvim/init.vim ${DST}/.config/nvim/init.vim
