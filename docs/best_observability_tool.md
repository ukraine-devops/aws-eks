# In search of the best monitoring solution

It always depends on the size of your company, free resources and possible expenses:

__Datadog__

    Pros: 
    1. Enterprise grade solution for middle and big size companies. 
    2. Relatively simple to install and manage by non technical users. 
    3. All-in-one solution, saves on staffing and ifrastructure costs compared to the ELK stack.
    4. Rich in functionality and integrations, good for cloud.

    Cons: 
    1. Because APM is billed by instance, it can be very expensive - perhaps even more than the cost of the underlying instances depending on the kinds of systems you are running.
    2. Documentation not good enough.
    3. Favors customization over simplicity.
    4. Agent based
    5. Initial setup can be complex, stiff learning curve.

__New Relic__

    Pros: Simple UI, positioned as a real-time application monitoring solution.

    Cons: Limited support and usage, not mature(has anomalies and problems under the hood), not intuitive UI/UX with bugs, stiff learning curve. License plans keep change.

__Prometheus + Grafana__

    Pros: 
        1. Used from small to large enterprises and offers rich integration with cloud providers(cloud-agnostic) and data sources(Prometheus, InfluxDB, Elasticsearch, Splunk). 
        2. Big community and plugins library, highly configurable. 
        3. Prometheus grabs metrics through HTTP endpoints(developers can define metrics and expose them on their application). 
        4. Integration with Grafana brings the synergy of high-end metric collection and feature-rich visualizations.

    Cons: limitations in dashboard organization and design: by Grafana Labs or community.

__ELK Stack__

    - LogStash(data collection engine: event data and logs aggregating and forwarding to ElasticSearch) - ElasticSearch(index, search, analyze log data -> Kibana)
    - Kibana(data visualization tool: histograms, charts, graphs).

    Pros: 
        1. Multiple hosting options 
        2. Centralized logging capabilities: aggregates complex cloud envs to a single searchable index.
        3. With Kubana users can create data visualizations using realtime data from Elasticsearch, it's decreases time-to-insights and driving organizational agility.
        4. Has clients in 12 programming languages: JavaScript, Go, Python, .Net, e.t.c.

    Cons: 
        1. Getting an ELK stack up and running is far from a straightforward process and organizations without the requisite skills and resources in-house will have to invest in a training program or recruit an ELK stack professional to manage the deployment.
        2. Whether you deploy on-premises or in the cloud, your costs for computing and data storage will depend on:
        - the total log volume you aggregate daily from all applications, systems, and networks.
        - how long you will retain data for either indexing or archiving.
        - on AWS, a daily log data ingest of 100GB/day with industry-standard ELK stack configuration and data retention best practices creates an annual hosting cost in the neighborhood of $180,000.

__Splunk__

    Pros: 
        1. Single source of truth for all log files.
        2. Maximize endpoint logging.
        3. Real-time status and live dashboards
        4. Act as a Search Head, Indexer and Forwarder

    Cons:
        1. Complex overall architecture.
        2. Long implementation time and have to invest in training.
        3. High cost.
        4. Slow interface.
        5. config based setup, needs more UI instead
        5. Requires on-going staff time to keep running effectively.
