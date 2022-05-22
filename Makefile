all:
	rm -rf *~ *.beam *_crash.dump
check:
	rm -rf *~ *.beam *_crash.dump;
	erlc *.erl;
	erl -run deployment_check start
git:
	rm -rf *~ *_crash.dump  *.beam ;
	git add *;
	git commit -m update;
	git push https://joq62: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@github.com/joq62/deployment_info_specs.git --all;
	echo hello and done!
