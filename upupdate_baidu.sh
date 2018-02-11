cat baidusitemap.xml |grep loc|awk -F ">" '{print $2}'|awk -F '<' '{print $1}' > urls.txt

curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=blog.mycise.com&token=OMffoBoQnlOOIpBV"

