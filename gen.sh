#!/bin/sh

# usage: place themes list (ls of "gfx" directory) in "theme-list" file, then run

for t in $(cat theme-list) ; do
	cat >>spec_files <<EOF
%files -n lbreakout2-theme-${t}
%defattr(644,root,root,755)
%{_datadir}/lbreakout2/gfx/${t}

EOF
	cat >>spec_desc <<EOF
%package -n lbreakout2-theme-${t}
Summary:	"${t}" theme for LBreakout2 game
Summary(pl.UTF-8):	Motyw "${t}" dla gry LBreakout2
Group:		X11/Applications/Games
Requires:	lbreakout2 >= 2.6.5

%description -n lbreakout2-theme-${t}
This package contains "${t}" theme for LBreakout2 game.

%description -n lbreakout2-theme-${t}
Ten pakiet zawiera motyw "${t}" dla gry LBreakout2.

EOF

done
