#1. 공급자 등록
Register-AzResourceProvider -ProviderNamespace Microsoft.ContainerInstance

get-AzResourceProvider -ProviderNamespace Microsoft.ContainerInstance 

#2. 컨테이너 인스턴스 배포
$port1 = New-AzContainerInstancePortObject -Port 3000 -Protocol TCP

$imageRegistryCredential = New-AzContainerGroupImageRegistryCredentialObject -Server "hub.docker.com" -Username "steelflea" -Password (ConvertTo-SecureString "MSwithDKon@"  -AsPlainText -Force)

$container = New-AzContainerInstanceObject -Name gb-container -Image steelflea/guestbook-app:1.0 -Port $port1

New-AzContainerGroup -ResourceGroupName rg-conference -Name aci-guestbook -Location koreacentral -Container $container -ImageRegistryCredential $imageRegistryCredential -IpAddressType Public -IPAddressDnsNameLabel iuguestbook

#3. ACI 배포 상태 확인
Get-AzContainerGroup -ResourceGroupName rg-conference -Name aci-guestbook

#4. 컨테이너 인스턴스 실행 확인
http://iuguestbook.koreacentral.azurecontainer.io:3000/

#5. ACI 리소스 정리
Remove-AzContainerGroup -ResourceGroupName rg-conference -Name aci-guestbook