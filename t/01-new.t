#!perl

use 5.006;
use strict; use warnings;
use WWW::Google::CustomSearch;
use Test::More tests => 25;

my $api_key = 'Your_API_Key';
my $cx      = 'Search_Engine_Identifier';

eval { WWW::Google::CustomSearch->new(api_key => $api_key); };
like($@, qr/ERROR: cx or cref must be specified./);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key}); };
like($@, qr/ERROR: cx or cref must be specified./);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, prettyprint=>'truue'}); };
like($@, qr/did not pass type constraint "TrueFalse"/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, lr=>'en'}); };
like($@, qr/ERROR: Invalid data for param: lr/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, num=>12}); };
like($@, qr/ERROR: Invalid data for param: num/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, num=>0}); };
like($@, qr/ERROR: Invalid data for param: num/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, start=>0}); };
like($@, qr/ERROR: Invalid data for param: start/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, safe=>'on'}); };
like($@, qr/ERROR: Invalid data for param: safe/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, filter=>-1}); };
like($@, qr/did not pass type constraint "Bool"/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, c2coff=>-1}); };
like($@, qr/did not pass type constraint "Bool"/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, cr=>'countryXYZ'}); };
like($@, qr/ERROR: Invalid data for param: cr/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, dateRestrict=>'x1'}); };
like($@, qr/ERROR: Invalid data for param: dateRestrict/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, fileType=>'.xxx'}); };
like($@, qr/ERROR: Invalid data for param: fileType/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, gl=>'xy'}); };
like($@, qr/ERROR: Invalid data for param: gl/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, highRange=>'x'}); };
like($@, qr/ERROR: Invalid data for param: highRange/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, hl=>'xyz'}); };
like($@, qr/ERROR: Invalid data for param: hl/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, imgColorType=>'xyz'}); };
like($@, qr/ERROR: Invalid data for param: imgColorType/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, imgDominantColor=>'xyz'}); };
like($@, qr/ERROR: Invalid data for param: imgDominantColo/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, imgSize=>'xyz'}); };
like($@, qr/ERROR: Invalid data for param: imgSize/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, imgType=>'xyz'}); };
like($@, qr/ERROR: Invalid data for param: imgType/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, lowRange=>'x'}); };
like($@, qr/ERROR: Invalid data for param: lowRange/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, lr=>'x'}); };
like($@, qr/ERROR: Invalid data for param: lr/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, rights=>'x'}); };
like($@, qr/ERROR: Invalid data for param: rights/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, searchType=>'x'}); };
like($@, qr/ERROR: Invalid data for param: searchType/);

eval { WWW::Google::CustomSearch->new({api_key=>$api_key, cx => $cx, siteSearchFilter=>'x'}); };
like($@, qr/ERROR: Invalid data for param: siteSearchFilter/);
