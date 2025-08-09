CREATE TABLE domain(
    domain VARCHAR PRIMARY KEY,
    email VARCHAR,
    sn INT,
    refresh INT,
    retry INT,
    expire INT,
    expire INT,
    min_ttl INT,
    wan_IP VARCHAR
)

CREATE TABLE subdomains(
    subdomain VARCHAR,
    active BOOLEAN,
    domain VARCHAR,
    PRIMARY KEY (domain, subdomain)
)

CREATE TABLE IPaddr(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    domain VARCHAR,
    subdomain VARCHAR,
    timeStamp TIMESTAMP,
    ipv4 VARCHAR,
    ipv6 VARCHAR
)

CREATE TABLE records(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    domain VARCHAR,
    subdomain VARCHAR,
    recordType VARCHAR,
    recordValue VARCHAR
)