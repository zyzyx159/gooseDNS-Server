CREATE TABLE domains(
    domain VARCHAR PRIMARY KEY,
    email VARCHAR,
    sn INT,
    refresh INT,
    retry INT,
    expire INT,
    min_ttl INT,
    wan_IP VARCHAR
);

Insert into domains(
    domain,
    email, 
    sn, 
    refresh,
    retry,
    expire,
    min_ttl,
    wan_IP,
    ) VALUES (
        'example.com.',
        'admin.example.com.',
        1,
        10800,
        1800,
        1209600,
        10800,
        '23.215.0.138'
    );

CREATE TABLE subdomains(
    subdomain VARCHAR,
    active BOOLEAN,
    domain VARCHAR,
    PRIMARY KEY (domain, subdomain)
);

INSERT into subdomains(
    subdomain,
    active,
    domain
) VALUE (
    'sub',
    TRUE,
    'example.com.'
);

CREATE TABLE IPaddr(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    domain VARCHAR,
    subdomain VARCHAR,
    timeStamp TIMESTAMP,
    ipv4 VARCHAR,
    ipv6 VARCHAR
);

CREATE TABLE records(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    domain VARCHAR,
    subdomain VARCHAR,
    recordType VARCHAR,
    recordValue VARCHAR
);

INSERT into records(
    domain,
    subdomain,
    recordType,
    recordValue
) VALUES (
    'example.com.',
    'sub',
    'A',
    'IP'
);