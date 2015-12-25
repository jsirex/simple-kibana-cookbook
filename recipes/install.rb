SimpleKibanaVersions  = {
  '4.1.3' => {
    checksum:     'f2cb5389ad0acfbc4006f739d75d5ede541483d1fa6be728bbf547a9d7ddeb4a',
    download_url: 'https://download.elasticsearch.org/kibana/kibana/kibana-4.1.3-linux-x64.tar.gz'
  },
  '4.1.4' => {
    checksum:     '2d11c63268f49b95726bfa0f3c09cf898ea67b65da3599989d17a27095987b0d',
    download_url: 'https://download.elastic.co/kibana/kibana/kibana-4.1.4-linux-x64.tar.gz'
  },
  '4.3.1' => {
    checksum:     'c6a91921a0055714fd24fb94a70b7057f43492da6bd8c4f2f1acbf0964bf09b9',
    download_url: 'https://download.elastic.co/kibana/kibana/kibana-4.3.1-linux-x64.tar.gz'
  }
}

ark 'kibana' do
  if SimpleKibanaVersions[node['kibana']['version']]
    download_url = SimpleKibanaVersions[node['kibana']['version']][:download_url]
    checksum     = SimpleKibanaVersions[node['kibana']['version']][:checksum]
  else
    download_url = node['kibana']['download_url']
    checksum     = node['kibana']['checksum']
  end

  url           download_url
  owner         node['kibana']['user']
  group         node['kibana']['group']
  version       node['kibana']['version']
  has_binaries  ['bin/kibana']
  checksum      checksum

  prefix_root node['kibana']['dir']
  prefix_home node['kibana']['dir']
end
