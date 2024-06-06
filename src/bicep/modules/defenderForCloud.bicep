/*
Copyright (c) Microsoft Corporation.
Licensed under the MIT License.
*/

targetScope = 'subscription'

@description('Defender Paid protection Plans. Even if a customer selects the free sku, at least 1 paid protection plan must be specified.')
param defenderPlans array = ['VirtualMachines']

@description('Turn automatic deployment by Defender of the MMA (OMS VM extension) on or off')
param enableAutoProvisioning bool = true
var autoProvisioning = enableAutoProvisioning ? 'On' : 'Off'

@description('Specify the ID of your custom Log Analytics workspace to collect Defender data.')
param logAnalyticsWorkspaceId string

@description('Email address of the contact, in the form of john@doe.com')
param emailSecurityContact string

@description('Policy Initiative description field')
param policySetDescription string = 'The Microsoft Cloud Security Benchmark initiative represents the policies and controls implementing security recommendations defined in Microsoft Cloud Security Benchmark v2, see https://aka.ms/azsecbm. This also serves as the Microsoft Defender for Cloud default policy initiative. You can directly assign this initiative, or manage its policies and compliance results within Microsoft Defender.'

@description('[Standard/Free] The SKU for Defender. It defaults to "Free".')
param defenderSkuTier string = 'Free'

// Variables for Defender for Cloud Paid Plan Handling for AzureCloud only
var defenderPaidPlanConfig = {
  AzureCloud: {
    Api: {
      subPlan: 'P1'
    },
    appServices: {
      // Only requires sku defined, add future subplans and extensions here
    },
    KeyVaults: {
      subPlan: 'PerKeyVault'
    },
    Arm: {
      subPlan: 'PerSubscription'
    },
    CloudPosture: {
      extensions: [
        { name: 'SensitiveDataDiscovery', isEnabled: 'True' },
        { name: 'ContainerRegistriesVulnerabilityAssessments', isEnabled: 'True' },
        { name: 'AgentlessDiscoveryForKubernetes', isEnabled: 'True' },
        { name: 'AgentlessVmScanning', isEnabled: 'True' },
        { name: 'EntraPermissionsManagement', isEnabled: 'True' }
      ]
    },
    Containers: {
      extensions: [
        { name: 'ContainerRegistriesVulnerabilityAssessments', isEnabled: 'True' },
  
