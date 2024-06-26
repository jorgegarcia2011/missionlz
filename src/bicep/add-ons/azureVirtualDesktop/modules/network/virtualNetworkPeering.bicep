param existingLocalVirtualNetworkName string
param existingRemoteVirtualNetworkName string
param existingRemoteVirtualNetworkResourceGroupName string
param existingRemoteVirtualNetworkSubscriptionId string

resource existingLocalVirtualNetworkName_peering_to_remote_vnet 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-02-01' = {
  name: '${existingLocalVirtualNetworkName}/${existingRemoteVirtualNetworkName}'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: true
    allowGatewayTransit: false
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: resourceId(existingRemoteVirtualNetworkSubscriptionId, existingRemoteVirtualNetworkResourceGroupName, 'Microsoft.Network/virtualNetworks', existingRemoteVirtualNetworkName)
    }
  }
}
