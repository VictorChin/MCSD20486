<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="NWCloudService" generation="1" functional="0" release="0" Id="c8b30bfe-b929-4ef9-9b44-ffa848e6ecfa" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="NWCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="DataTier:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NWCloudService/NWCloudServiceGroup/LB:DataTier:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="MvcNorthwind:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NWCloudService/NWCloudServiceGroup/LB:MvcNorthwind:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="DataTier:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NWCloudService/NWCloudServiceGroup/MapDataTier:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="DataTierInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NWCloudService/NWCloudServiceGroup/MapDataTierInstances" />
          </maps>
        </aCS>
        <aCS name="MvcNorthwind:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NWCloudService/NWCloudServiceGroup/MapMvcNorthwind:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MvcNorthwindInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NWCloudService/NWCloudServiceGroup/MapMvcNorthwindInstances" />
          </maps>
        </aCS>
        <aCS name="VideoTranscoder:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NWCloudService/NWCloudServiceGroup/MapVideoTranscoder:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="VideoTranscoderInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NWCloudService/NWCloudServiceGroup/MapVideoTranscoderInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:DataTier:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NWCloudService/NWCloudServiceGroup/DataTier/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:MvcNorthwind:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwind/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapDataTier:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NWCloudService/NWCloudServiceGroup/DataTier/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapDataTierInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NWCloudService/NWCloudServiceGroup/DataTierInstances" />
          </setting>
        </map>
        <map name="MapMvcNorthwind:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwind/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMvcNorthwindInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwindInstances" />
          </setting>
        </map>
        <map name="MapVideoTranscoder:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NWCloudService/NWCloudServiceGroup/VideoTranscoder/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapVideoTranscoderInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NWCloudService/NWCloudServiceGroup/VideoTranscoderInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="DataTier" generation="1" functional="0" release="0" software="c:\users\administrator\documents\visual studio 2013\Projects\NWCloudService\NWCloudService\csx\Debug\roles\DataTier" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;DataTier&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DataTier&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;MvcNorthwind&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;VideoTranscoder&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NWCloudService/NWCloudServiceGroup/DataTierInstances" />
            <sCSPolicyUpdateDomainMoniker name="/NWCloudService/NWCloudServiceGroup/DataTierUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/NWCloudService/NWCloudServiceGroup/DataTierFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="MvcNorthwind" generation="1" functional="0" release="0" software="c:\users\administrator\documents\visual studio 2013\Projects\NWCloudService\NWCloudService\csx\Debug\roles\MvcNorthwind" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MvcNorthwind&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DataTier&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;MvcNorthwind&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;VideoTranscoder&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwindInstances" />
            <sCSPolicyUpdateDomainMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwindUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwindFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="VideoTranscoder" generation="1" functional="0" release="0" software="c:\users\administrator\documents\visual studio 2013\Projects\NWCloudService\NWCloudService\csx\Debug\roles\VideoTranscoder" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;VideoTranscoder&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DataTier&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;MvcNorthwind&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;VideoTranscoder&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NWCloudService/NWCloudServiceGroup/VideoTranscoderInstances" />
            <sCSPolicyUpdateDomainMoniker name="/NWCloudService/NWCloudServiceGroup/VideoTranscoderUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/NWCloudService/NWCloudServiceGroup/VideoTranscoderFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="MvcNorthwindUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="DataTierUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="VideoTranscoderUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="DataTierFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="MvcNorthwindFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="VideoTranscoderFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="DataTierInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="MvcNorthwindInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="VideoTranscoderInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="d41588ad-1c55-4f45-b67e-8c864ab5a0e6" ref="Microsoft.RedDog.Contract\ServiceContract\NWCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="60cc0667-fee5-467a-836d-1493779ac49e" ref="Microsoft.RedDog.Contract\Interface\DataTier:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/NWCloudService/NWCloudServiceGroup/DataTier:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="399f9127-705c-4582-849c-a4541a2707a1" ref="Microsoft.RedDog.Contract\Interface\MvcNorthwind:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/NWCloudService/NWCloudServiceGroup/MvcNorthwind:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>