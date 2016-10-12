<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ContosoAdsCloudService" generation="1" functional="0" release="0" Id="ff9b4c56-3205-4752-9941-8c49aa3a4490" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ContosoAdsCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="ContosoAdsWeb:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/LB:ContosoAdsWeb:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/LB:ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapCertificate|ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapCertificate|ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:ContosoAdsDbConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:ContosoAdsDbConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWeb:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWeb:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWebInstances" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:ContosoAdsDbConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:ContosoAdsDbConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorker:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorker:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAdsWorkerInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/MapContosoAdsWorkerInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:ContosoAdsWeb:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="SW:ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCertificate|ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapContosoAdsWeb:ContosoAdsDbConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/ContosoAdsDbConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapContosoAdsWeb:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAdsWebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWebInstances" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:ContosoAdsDbConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/ContosoAdsDbConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapContosoAdsWorker:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAdsWorkerInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorkerInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="ContosoAdsWeb" generation="1" functional="0" release="0" software="C:\Users\Administrator\Source\Repos\MCSD20486\CloudService\ContosoAdsCloudService\csx\Release\roles\ContosoAdsWeb" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/SW:ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/SW:ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="ContosoAdsDbConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ContosoAdsWeb&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ContosoAdsWeb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ContosoAdsWorker&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWebInstances" />
            <sCSPolicyUpdateDomainMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWebUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="ContosoAdsWorker" generation="1" functional="0" release="0" software="C:\Users\Administrator\Source\Repos\MCSD20486\CloudService\ContosoAdsCloudService\csx\Release\roles\ContosoAdsWorker" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/SW:ContosoAdsWeb:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/SW:ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="ContosoAdsDbConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ContosoAdsWorker&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ContosoAdsWeb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ContosoAdsWorker&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorkerInstances" />
            <sCSPolicyUpdateDomainMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorkerUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorkerFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ContosoAdsWebUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="ContosoAdsWorkerUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ContosoAdsWebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="ContosoAdsWorkerFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ContosoAdsWebInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="ContosoAdsWorkerInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="14ad847b-6fea-4f69-92be-a5c5b62d1e44" ref="Microsoft.RedDog.Contract\ServiceContract\ContosoAdsCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="7d714e7b-561f-4e52-92bb-876c4753c54a" ref="Microsoft.RedDog.Contract\Interface\ContosoAdsWeb:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWeb:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="18f54984-f4c2-474c-a6f4-0acfe6d7e2ff" ref="Microsoft.RedDog.Contract\Interface\ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ContosoAdsCloudService/ContosoAdsCloudServiceGroup/ContosoAdsWorker:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>