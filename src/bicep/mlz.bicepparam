using 'mlz.bicep'

param resourcePrefix = ''

param environmentAbbreviation = 'prod'

param hubSubscriptionId = ''

param identitySubscriptionId = ''

param operationsSubscriptionId = ''

param sharedServicesSubscriptionId = ''

param location = 'usgovvirginia'

param supportedClouds = [
  'AzureCloud'
  'AzureUSGovernment'
]

param deployIdentity = true

param deployNetworkWatcher = false

param tags = {
  Customer: 'DSAGL'
  Project: 'MLZ'
}

param hubVirtualNetworkAddressPrefix = '10.133.0.0/23'

param hubSubnetAddressPrefix = '10.133.1.0/24'

// param gatewaySubnetAddressPrefix = '10.133.0.0/27'

param firewallClientSubnetAddressPrefix = '10.133.0.64/26'

param firewallManagementSubnetAddressPrefix = '10.133.0.128/26'

param identityVirtualNetworkAddressPrefix = '10.133.2.0/24'

param identitySubnetAddressPrefix = '10.133.2.0/27'

param operationsVirtualNetworkAddressPrefix = '10.133.3.0/24'

param operationsSubnetAddressPrefix = '10.133.3.0/27'

param sharedServicesVirtualNetworkAddressPrefix = '10.133.4.0/24'

param sharedServicesSubnetAddressPrefix = '10.133.4.0/27'

param firewallSkuTier = 'Premium'

param firewallThreatIntelMode = 'Deny'

param firewallIntrusionDetectionMode = 'Deny'

param firewallDiagnosticsLogs = [
  {
    category: 'AzureFirewallApplicationRule'
    enabled: true
  }
  {
    category: 'AzureFirewallNetworkRule'
    enabled: true
  }
  {
    category: 'AzureFirewallDnsProxy'
    enabled: true
  }
]

param firewallDiagnosticsMetrics = [
  {
    category: 'AllMetrics'
  }
]

// param firewallClientSubnetServiceEndpoints = []

param firewallClientPublicIPAddressAvailabilityZones = []

// param firewallManagementSubnetServiceEndpoints = []

param firewallManagementPublicIPAddressAvailabilityZones = []

param firewallSupernetIPAddress = '10.133.0.0/16'

param publicIPAddressDiagnosticsLogs = [
  {
    category: 'DDoSProtectionNotifications'
    enabled: true
  }
  {
    category: 'DDoSMitigationFlowLogs'
    enabled: true
  }
  {
    category: 'DDoSMitigationReports'
    enabled: true
  }
]

param publicIPAddressDiagnosticsMetrics = [
  {
    category: 'AllMetrics'
    enabled: true
  }
]

param hubVirtualNetworkDiagnosticsLogs = []

param hubVirtualNetworkDiagnosticsMetrics = []

param hubNetworkSecurityGroupRules = []

param hubNetworkSecurityGroupDiagnosticsLogs = [
  {
    category: 'NetworkSecurityGroupEvent'
    enabled: true
  }
  {
    category: 'NetworkSecurityGroupRuleCounter'
    enabled: true
  }
]

param hubNetworkSecurityGroupDiagnosticsMetrics = []

param identityVirtualNetworkDiagnosticsLogs = []

param identityVirtualNetworkDiagnosticsMetrics = []

param identityNetworkSecurityGroupDiagnosticsLogs = [
  {
    category: 'NetworkSecurityGroupEvent'
    enabled: true
  }
  {
    category: 'NetworkSecurityGroupRuleCounter'
    enabled: true
  }
]

param operationsVirtualNetworkDiagnosticsLogs = []

param operationsVirtualNetworkDiagnosticsMetrics = []

param operationsNetworkSecurityGroupDiagnosticsMetrics = []

param sharedServicesVirtualNetworkDiagnosticsLogs = []

param sharedServicesVirtualNetworkDiagnosticsMetrics = []

param sharedServicesNetworkSecurityGroupDiagnosticsLogs = [
  {
    category: 'NetworkSecurityGroupEvent'
    enabled: true
  }
  {
    category: 'NetworkSecurityGroupRuleCounter'
    enabled: true
  }
]

param sharedServicesNetworkSecurityGroupDiagnosticsMetrics = []

param deploySentinel = false

param logAnalyticsWorkspaceCappingDailyQuotaGb = -1

param logAnalyticsWorkspaceSkuName = 'PerGB2018'

param logStorageSkuName = 'Standard_GRS'

param deployRemoteAccess = false

param bastionHostSubnetAddressPrefix = '10.133.0.192/27'

param bastionHostPublicIPAddressAvailabilityZones = []

param linuxVmAdminUsername = 'azureuser'

param linuxVmAuthenticationType = 'sshPublicKey'

param linuxVmSize = 'Standard_B2s'

param linuxVmOsDiskCreateOption = 'FromImage'

param linuxVmOsDiskType = 'Standard_LRS'

param linuxVmImagePublisher = 'RedHat'

param linuxVmImageOffer = 'RHEL'

param linuxVmImageSku = '87-gen2'

param linuxVmImageVersion = 'latest'

param linuxNetworkInterfacePrivateIPAddressAllocationMethod = 'Dynamic'

param windowsVmAdminUsername = 'azureuser'

param windowsVmSize = 'Standard_DS1_v2'

param windowsVmPublisher = 'MicrosoftWindowsServer'

param windowsVmOffer = 'WindowsServer'

param windowsVmSku = '2019-datacenter-gensecond'

param windowsVmVersion = 'latest'

param windowsVmCreateOption = 'FromImage'

param windowsVmStorageAccountType = 'StandardSSD_LR'

param windowsNetworkInterfacePrivateIPAddressAllocationMethod = 'Dynamic'

param deployPolicy = false

param policy = 'IL5'

param deployDefender = false

param emailSecurityContact = 'poc@email.com'
