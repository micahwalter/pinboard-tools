#!/bin/sh

if [ -s $MAGIC_EMAIL ]
then
    MAGIC_EMAIL=$1
fi

BOOKMARKLET='var h2e=function (m){ var u=location.href; var s=document.title;var b=window.getSelection();b=b+"\n\n"+u+"\n\nvia:bookmarklet";location.href="mailto:?subject="+escape(s)+"&body="+escape(b)+"&to="+escape(m); }; h2e("'${MAGIC_EMAIL}'"); void(0);'

echo $BOOKMARKLET
