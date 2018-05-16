package dns

type Dnsaaaarec struct {
	Authtype    string `json:"authtype,omitempty"`
	Hostname    string `json:"hostname,omitempty"`
	Ipv6address string `json:"ipv6address,omitempty"`
	Ttl         int    `json:"ttl,omitempty"`
	Type        string `json:"type,omitempty"`
	Vservername string `json:"vservername,omitempty"`
}
