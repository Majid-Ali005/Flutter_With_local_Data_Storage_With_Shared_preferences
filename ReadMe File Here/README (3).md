
## How To Store Data in Flutter With Share Preferences

### why we are store data locally

simple c cheez hy hum data ko locally iss wja se save krthy hy.
k jo user ka data hota hy hum ye chahtay hy k wo locally save rhy oss ko bar bar data ko save krne ki need na parhe

Eg. Aap Login Page
And You Can Say For Video Start as a example.

NOTE: yaha pr all our the globe ki data ki baat nhi ho rhi hy bal k sirf user ki data ki baat horhi hy.

tha k hamare user ko bar bar informations na dena  parhy or hamari apllications jo hy wo bar bar reload na ho. jaise user ne jaha thak kaam kiya howa tha wha thak hi sirf rhy or phir wo wha se start hojaye iss ko krne se user ki experience kaafi improve hoti hy.

### There is Two main options tho store data 
#### 1. Database Management System
they are mostly used for tho store the large data. or phir oss ko manage krna tho phir hum database management ka use krthy hy.


#### 2. local data storage
kam data or agr simpler data ko store krna hy tho phir hum local database storge ka use krthy hy.

Main example of the local data storage is to skip the login process in our applications.

like add opening after 5 times of the app etc.


# let's get started
first of all you can use the any type of data for your applications.

step 1: add the shared Preferences pachage which is not avialable in flutter theese package you can alo add from the pub.dev

https://pub.dev/packages/shared_preferences/install

Run Command

1. dependencies:
  shared_preferences: ^2.3.3
2. and then run or click on pub get
add these line in your dependencies in pubspec.yaml
3. agr get krne k baad koi error ata hy aap k pass tho phir aap pub upgrade kr sakty ho.

ya phir simple sa ye command chalaye or jan chorwaye simple

flutter pub add shared_preferences

follow the steps from pub.dev site.

## Let's Start Working With Data Storage With shared_preferences

pehly hum onpressed button pr value ko save krwayenge matlab k jaise hi koi button k upar click kare tho hamari value save hojaye.

Note: or value ko lene k liya hum controller ka use krthy hy tho wo b aap ko bna lena hy. ye controller widget k start me banana hy.

```bash 
class HomePage extends StatelessWidget {
  var nameController = TextEditingController();
  yaha pr
```

or phir oss controller ko textField me call krna hy. q k value get controller k sath hoti hy.

```bash 
TextField(
              controller: nameController,
            ),
```

yaha pr jub hum log data lenge tho oss ko get hone me infinite time lag sakta hy tho iss wja se hum async or Future ki class lagatay hy q k humare pass value future me ayenge etc.

tho hum log iss trha phir iss ko asynchronously handle krthy hy.

await issi wja se lagaty hy k bhai iss ko time lagega etc.

iss trha k task se hamari u.i hold ho sakti hy bigarh sakti hy tho iss trha se jo value hamare pass future me ati hy tho oss ko hum async or await ka use krthy hy.

tho issi wja se hum user experience ko acha krne k liye asynchronously iss handle krthy hy.


local storage ko chekc krne k liye value ko save pr click kare tho value direct save nhi hongi magr jub aap close kr k restart karoge tho phir aap k pass value change ho k ayenge yehi tho local storage hota hy simple.

q k app close hone pr data ko destroy nhi kr rha hy ba k oss ko apne sath rakh rha hy local storage me.















