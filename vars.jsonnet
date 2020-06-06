{
  // Enable or disable additional modules
  modules: [
    {
      name: 'armExporter',
      enabled: true,
      file: import 'arm_exporter.jsonnet',
    },
    {
      name: 'upsExporter',
      enabled: false,
      file: import 'ups_exporter.jsonnet',
    },
    {
      name: 'metallbExporter',
      enabled: false,
      file: import 'metallb.jsonnet',
    },
    {
      name: 'traefikExporter',
      enabled: true,
      file: import 'traefik.jsonnet',
    },
    {
      name: 'elasticExporter',
      enabled: false,
      file: import 'elasticsearch_exporter.jsonnet',
    },
  ],

  // Setting these to false, defaults to emptyDirs
  enablePersistence: {
    prometheus: false,
    grafana: false,
  },

  // Domain suffix for the ingresses
  suffixDomain: '172.16.20.10.balaci.xyz',

  // Grafana "from" email
  grafana: {
    from_address: 'mihai.balaci@gmail.com',
  },
}
