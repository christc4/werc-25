contrib/rc-httpd/rc-httpd:	case user-agent:
werclib.rc:allowed_user_chars='[a-zA-Z0-9_]'
werclib.rc:# login_user can't be used from a template because it sets a cookie 
werclib.rc:fn login_user {
werclib.rc:    if(get_user $*)
werclib.rc:        set_cookie werc_user $"logged_user^':0:'^$"logged_password
werclib.rc:fn check_user {
werclib.rc:    get_user
werclib.rc:    if not if(! ~ $#* 0 && ! ~ $logged_user $* && ! grep -s '^'^$logged_user^'$' $werc_root/etc/users/$g/members >[2]/dev/null)
werclib.rc:        _status=(User $logged_user not in: $*)
werclib.rc:# If not logged in, try to get user login info from POST or from cookie
werclib.rc:fn get_user {
werclib.rc:    if(~ $#logged_user 0) {
werclib.rc:            user_name=$1 
werclib.rc:            user_password=$2
werclib.rc:            get_post_args user_name user_password
werclib.rc:        if(~ $#user_name 0) { 
werclib.rc:            ifs=':' { cu=`{ifs=$difs {get_cookie werc_user} | tr -d $NEW_LINE} }
werclib.rc:                user_name=$cu(1) 
werclib.rc:                user_password=$cu(3)
werclib.rc:        auth_user $user_name $user_password
werclib.rc:# Check if user_name and user_password represent a valid user account
werclib.rc:# If valid, 'log in' by setting logged_user
werclib.rc:fn auth_user {
werclib.rc:    user_name=$1
werclib.rc:    user_password=$2
werclib.rc:    pfile=$werc_root/etc/users/$"user_name/password
werclib.rc:    if(~ $#user_name 0 || ~ $#user_password 0)
werclib.rc:        status=('Auth: missing user name or pass: '^$"user_name^' / '^$"user_password)
werclib.rc:    if not if(! test -s $pfile || ! ~ $user_password `{cat $pfile})
werclib.rc:        status=('Auth: Pass '$user_password' doesnt match '^`{cat $pfile})
werclib.rc:        logged_user=$user_name
werclib.rc:        logged_password=$user_password
werclib.rc:fn user_controls {
werclib.rc:    echo User: $"logged_user
openring/LICENSES/GPL-3.0-only.txt:The licenses for most software and other practical works are designed to take away your freedom to share and change the works. By contrast, the GNU General Public License is intended to guarantee your freedom to share and change all versions of a program--to make sure it remains free software for all its users. We, the Free Software Foundation, use the GNU General Public License for most of our software; it applies also to any other work released this way by its authors. You can apply it to your programs, too.
openring/LICENSES/GPL-3.0-only.txt:For the developers' and authors' protection, the GPL clearly explains that there is no warranty for this free software. For both users' and authors' sake, the GPL requires that modified versions be marked as changed, so that their problems will not be attributed erroneously to authors of previous versions.
openring/LICENSES/GPL-3.0-only.txt:Some devices are designed to deny users access to install or run modified versions of the software inside them, although the manufacturer can do so. This is fundamentally incompatible with the aim of protecting users' freedom to change the software. The systematic pattern of such abuse occurs in the area of products for individuals to use, which is precisely where it is most unacceptable. Therefore, we have designed this version of the GPL to prohibit the practice for those products. If such problems arise substantially in other domains, we stand ready to extend this provision to those domains in future versions of the GPL, as needed to protect the freedom of users.
openring/LICENSES/GPL-3.0-only.txt:To “convey” a work means any kind of propagation that enables other parties to make or receive copies. Mere interaction with a user through a computer network, with no transfer of a copy, is not conveying.
openring/LICENSES/GPL-3.0-only.txt:An interactive user interface displays “Appropriate Legal Notices” to the extent that it includes a convenient and prominently visible feature that (1) displays an appropriate copyright notice, and (2) tells the user that there is no warranty for the work (except to the extent that warranties are provided), that licensees may convey the work under this License, and how to view a copy of this License. If the interface presents a list of user commands or options, such as a menu, a prominent item in the list meets this criterion.
openring/LICENSES/GPL-3.0-only.txt:The Corresponding Source need not include anything that users can regenerate automatically from other parts of the Corresponding Source.
openring/LICENSES/GPL-3.0-only.txt:When you convey a covered work, you waive any legal power to forbid circumvention of technological measures to the extent such circumvention is effected by exercising rights under this License with respect to the covered work, and you disclaim any intention to limit operation or modification of the work as a means of enforcing, against the work's users, your or third parties' legal rights to forbid circumvention of technological measures.
openring/LICENSES/GPL-3.0-only.txt:     d) If the work has interactive user interfaces, each must display Appropriate Legal Notices; however, if the Program has interactive interfaces that do not display Appropriate Legal Notices, your work need not make them do so.
openring/LICENSES/GPL-3.0-only.txt:A compilation of a covered work with other separate and independent works, which are not by their nature extensions of the covered work, and which are not combined with it such as to form a larger program, in or on a volume of a storage or distribution medium, is called an “aggregate” if the compilation and its resulting copyright are not used to limit the access or legal rights of the compilation's users beyond what the individual works permit. Inclusion of a covered work in an aggregate does not cause this License to apply to the other parts of the aggregate.
openring/LICENSES/GPL-3.0-only.txt:A “User Product” is either (1) a “consumer product”, which means any tangible personal property which is normally used for personal, family, or household purposes, or (2) anything designed or sold for incorporation into a dwelling. In determining whether a product is a consumer product, doubtful cases shall be resolved in favor of coverage. For a particular product received by a particular user, “normally used” refers to a typical or common use of that class of product, regardless of the status of the particular user or of the way in which the particular user actually uses, or expects or is expected to use, the product. A product is a consumer product regardless of whether the product has substantial commercial, industrial or non-consumer uses, unless such uses represent the only significant mode of use of the product.
aux/bpst.rc:if(~ $#user 0)
aux/bpst.rc:    user=`{whoami}
aux/bpst.rc:bloguser=$user
aux/bpst.rc:        base=/gsoc/www/people/$user/blog/
aux/bpst.rc:            #if(! ~ $#logged_user 0)
aux/bpst.rc:            #   echo '* Author: '$logged_user
aux/addwuser.rc:    echo 'Usage:' $0 'user_name user_password [groups ...]' >[1=2]
aux/addwuser.rc:if(! test -d etc/users/)
aux/addwuser.rc:user_name=$1
aux/addwuser.rc:user_pass=$1
aux/addwuser.rc:user_groups=$*
aux/addwuser.rc:if(~ $"user_name '' || ~ $"user_pass '')
aux/addwuser.rc:mkdir etc/users/$user_name
aux/addwuser.rc:echo $user_pass > etc/users/$user_name/password
aux/addwuser.rc:if(! ~ $#user_groups 0)
aux/addwuser.rc:    for(g in $user_groups) {
aux/addwuser.rc:        mkdir -p etc/users/$g
aux/addwuser.rc:        echo $user_name >> etc/users/$g/members
werc.rc:        login_user
