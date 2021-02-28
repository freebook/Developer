git submodule update
#rm -rf ~/tmp/python/
mkdir -p ~/tmp/python/
cp ../common/docbook.css ~/tmp/python/
xsltproc -o ~/tmp/python/ ../docbook-xsl/docbook.mac.xsl book.xml
