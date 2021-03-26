<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1603195470142" ID="ID_1775994436" MODIFIED="1603195483259" TEXT="MFi">
<node CREATED="1603195696781" ID="ID_338303598" MODIFIED="1603195710844" POSITION="left" TEXT="Naming conventions">
<node CREATED="1603195670781" ID="ID_1949455021" MODIFIED="1603195676737" TEXT="device">
<node CREATED="1603195677628" ID="ID_568134597" MODIFIED="1603195691401" TEXT="Apple iPod, iPhone, iPad"/>
</node>
<node CREATED="1603195712782" ID="ID_121550861" MODIFIED="1603195717913" TEXT="accessory">
<node CREATED="1603195719366" ID="ID_1403640043" MODIFIED="1603195731256" TEXT="which connects to apple device"/>
</node>
</node>
<node CREATED="1603195743181" ID="ID_194937923" MODIFIED="1603195749424" POSITION="right" TEXT="Apple device">
<node CREATED="1603195750629" ID="ID_1367967923" MODIFIED="1603195754832" TEXT="can be USB host"/>
<node CREATED="1603195755445" ID="ID_1771252146" MODIFIED="1603195759424" TEXT="can be USB device"/>
</node>
<node CREATED="1603195774740" ID="ID_1959073137" MODIFIED="1603195777552" POSITION="right" TEXT="iAP">
<node CREATED="1603195782412" ID="ID_795365885" MODIFIED="1603195792624" TEXT="iPod Accessory protocol">
<node CREATED="1603196534872" ID="ID_11403371" MODIFIED="1603196553003" TEXT="Accessory may support both iAP1 and iAP2"/>
<node CREATED="1603196677656" ID="ID_813691454" MODIFIED="1603196715090" TEXT="if Apple device does not support iAP2, then it can fallback to iAP1"/>
<node CREATED="1603196975885" ID="ID_1451927728" MODIFIED="1603197006273" TEXT="if Apple device supports iAP2, accessory must always use iAP2"/>
</node>
<node CREATED="1603195828045" ID="ID_31351422" MODIFIED="1603195831576" TEXT="iAP1">
<node CREATED="1603195840228" ID="ID_1616717980" MODIFIED="1603195867359" TEXT="as defined in MFi Accessory firmware specification R46"/>
<node CREATED="1603196452449" ID="ID_1571197058" MODIFIED="1603196460484" TEXT="put in maintenance mode"/>
</node>
<node CREATED="1603195875595" ID="ID_1998891496" MODIFIED="1603195878712" TEXT="iAP2">
<node CREATED="1603195880076" ID="ID_1124770458" MODIFIED="1603195915343" TEXT="as defined in MFi Accessory Specification R7"/>
<node CREATED="1603195940850" ID="ID_1540120411" MODIFIED="1603195952695" TEXT="complete replacement of iAP1"/>
<node CREATED="1603195953444" ID="ID_1971522303" MODIFIED="1603195961703" TEXT="Not backward compatible to iAP1"/>
<node CREATED="1603195990315" ID="ID_480778050" MODIFIED="1603195997343" TEXT="iAP2 connection">
<node CREATED="1603195997996" ID="ID_1665231229" MODIFIED="1603196005310" TEXT="iAP2 transport"/>
<node CREATED="1603196005996" ID="ID_930176110" MODIFIED="1603196009502" TEXT="iAP2 link"/>
<node CREATED="1603196012562" ID="ID_1501688676" MODIFIED="1603196017822" TEXT="iAP2 session"/>
<node CREATED="1603199112784" ID="ID_1143736557" MODIFIED="1603199120492" TEXT="Multiple iAP2 connections">
<node CREATED="1603199321824" ID="ID_513645915" MODIFIED="1603360986732" TEXT="Multiple transports is not allowed"/>
<node COLOR="#338800" CREATED="1603199355928" ID="ID_49016917" MODIFIED="1603199446644" TEXT="Accessory must shutdown iAP2 connection on one transport before starting on other transport"/>
</node>
</node>
<node CREATED="1603196463544" ID="ID_517166813" MODIFIED="1603196470772" TEXT="recommended for new devices"/>
</node>
<node CREATED="1603197299787" ID="ID_1207766418" MODIFIED="1603197310887" TEXT="Apple Device Detection">
<node CREATED="1603197575226" ID="ID_1650536317" MODIFIED="1603199010853" TEXT="Acccessories that implement iAP must not assume that device is present until Apple device responds to Start command"/>
<node CREATED="1603199040129" ID="ID_1009654078" MODIFIED="1603199076844" TEXT="Accessories that do not implement iAP must assume that Apple device is always connected"/>
<node CREATED="1603197315812" ID="ID_1696691624" MODIFIED="1603197319732" TEXT="iAP1">
<node CREATED="1603197319734" ID="ID_1260208341" MODIFIED="1603197562302" TEXT="Accessory StartIDPS Command"/>
</node>
<node CREATED="1603197339100" ID="ID_90473592" MODIFIED="1603197343308" TEXT="iAP2">
<node CREATED="1603197343310" ID="ID_807874593" MODIFIED="1603197357744" TEXT="Link initialization byte sequence"/>
</node>
</node>
<node CREATED="1603361232203" ID="ID_1437838181" MODIFIED="1603361239774" TEXT="sync on key press">
<node CREATED="1603361253385" ID="ID_298170178" MODIFIED="1603361487198" TEXT="1. user press shuffle button on accessory"/>
<node CREATED="1603361281835" ID="ID_1386482081" MODIFIED="1603361497750" TEXT="2. accessory send HID event to Apple device"/>
<node CREATED="1603361298755" ID="ID_956456766" MODIFIED="1603361502061" TEXT="3. Apple Device confirms the state change"/>
<node CREATED="1603361378188" ID="ID_440346016" MODIFIED="1603361505685" TEXT="4. then only accessory inform the state change to the user"/>
<node CREATED="1603361469313" ID="ID_1788489484" MODIFIED="1603361565445" TEXT="5. assuming the state change will happen at step 2, and informing about that change to user and not waiting for apple Device to confirm may cause issues"/>
<node CREATED="1603361567913" ID="ID_1036010470" MODIFIED="1603361594086" TEXT="6. Some thirdparty apps may not respond to input event"/>
</node>
<node CREATED="1603361611497" ID="ID_599529847" MODIFIED="1603361620718" TEXT="Apple Device Infomration">
<node CREATED="1603361621633" ID="ID_1252466382" MODIFIED="1603361647790" TEXT="Accessory must not cache device information"/>
</node>
<node CREATED="1603444199317" ID="ID_593691995" MODIFIED="1603444208208" TEXT="Multiple Audio Device Connections">
<node CREATED="1603444209548" ID="ID_1309206844" MODIFIED="1603444213919" TEXT="USB Device Mode">
<node CREATED="1603444362787" ID="ID_1354730961" MODIFIED="1603444384704" TEXT="Startup: StartUSBDeviceModeAudio"/>
<node CREATED="1603444389043" ID="ID_1930989524" MODIFIED="1603444407510" TEXT="Shutdown: StopUSBDeviceModeAudio"/>
</node>
<node CREATED="1603444214409" ID="ID_989503419" MODIFIED="1603444218423" TEXT="USB Host Mode">
<node CREATED="1603444416587" ID="ID_1865715070" MODIFIED="1603444426151" TEXT="Startup: USB Attach"/>
<node CREATED="1603444427149" ID="ID_35583707" MODIFIED="1603444434927" TEXT="Shutdown: USB Detach"/>
</node>
<node CREATED="1603444219090" ID="ID_570666135" MODIFIED="1603444224840" TEXT="Blutooth A2DP">
<node CREATED="1603444279171" ID="ID_1648718181" MODIFIED="1603444297455" TEXT="8. See Bluetooth Pairing and Connection Status"/>
<node CREATED="1603444441794" ID="ID_618962399" MODIFIED="1603444453415" TEXT="Startup: Bluetooth Connect"/>
<node CREATED="1603444454378" ID="ID_1496083019" MODIFIED="1603444462943" TEXT="Shutdown: Bluetooth DIsconnect"/>
</node>
<node CREATED="1603444225323" ID="ID_1228147201" MODIFIED="1603444258671" TEXT="TRRS/Headphone Jack ">
<node CREATED="1603444468594" ID="ID_1873592452" MODIFIED="1603444474054" TEXT="Starup: Jack Insert"/>
<node CREATED="1603444475210" ID="ID_1789521398" MODIFIED="1603444484632" TEXT="Shutdown: Jack Removal"/>
</node>
</node>
</node>
</node>
</map>