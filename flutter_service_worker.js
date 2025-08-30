'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "0c814de1dcef9babfbb437e2b217f466",
".git/config": "5c2adf2668fade63d611ba91cb5ff691",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "975eaa508dee1436a82c575b4f024287",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "4552a3b948e70d3425742e1db5d71ed0",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5e77d782c99beca7020fd61abf6f8cfa",
".git/logs/refs/heads/main": "bbee10655f577b840246c432fd51f375",
".git/logs/refs/remotes/origin/main": "a3c9f080ee2f36d170066cf52587b4df",
".git/objects/02/1d4f3579879a4ac147edbbd8ac2d91e2bc7323": "9e9721befbee4797263ad5370cd904ff",
".git/objects/07/b5ba04aa21a81c913c1af5e79431fb9e662cea": "657b2c45f37c072bd9b8cf2b1502b48c",
".git/objects/0a/067c1163b4c80617807086784b8db098c93939": "84efb9f8be50aad3924be48c1568b435",
".git/objects/0b/245c5be5565eba50a875b3d4d05939dedfa386": "9d6880f758132e4c6105997c601eaf8e",
".git/objects/14/409f9bbb084128fb938d01a5f1613f15a028b8": "b6b359d3892ceaa783203a6ddc6b586c",
".git/objects/17/6f8260793f7d325927d140c42f8e4b4a280e53": "57bd426ad070a08ab6c308cf9092280b",
".git/objects/18/6a0c5bc2dff89ae22dc187bfcb50e31b5fd533": "382a5f39baeec5b9cfaca4b684700dac",
".git/objects/1b/87b8b95f2ee52ce9254bc591d05f4068cd1ce9": "9aa51cf07dea0825277adebdf0cacb9c",
".git/objects/20/3a3ff5cc524ede7e585dff54454bd63a1b0f36": "4b23a88a964550066839c18c1b5c461e",
".git/objects/21/b1816bb825ed1c21049d79e6d1ef1019e7bbb5": "b9e57307ecda7f069badb96cd4ba4a0c",
".git/objects/25/16a83b37d144b186c5316a4e74437584fbc990": "7387570661e7cd492e3f29023cdd7f18",
".git/objects/25/df8268f796e11f47274288f57ec04453ba0381": "d38a0b061112ead5034b19a7247d2e86",
".git/objects/29/f22f56f0c9903bf90b2a78ef505b36d89a9725": "e85914d97d264694217ae7558d414e81",
".git/objects/2f/a7963c471fae3970e2f81261b5e7ea65c1364a": "36b6760c192144d44947d31113bbab87",
".git/objects/3e/cc855a223f9b6801007ed142d1b6e8575b0c13": "1abb33ec98c3dd898b0704e7fb9dc2b2",
".git/objects/40/0a613eea84ef19c87c170bac043477dd6d993c": "3ffab7b584997b1b37229ab52f80fffd",
".git/objects/4d/bf9da7bcce5387354fe394985b98ebae39df43": "534c022f4a0845274cbd61ff6c9c9c33",
".git/objects/4f/146846f0fb963de4f13dd9e821319962ab00d1": "2c464bc23a983589e8e537581afd3b0f",
".git/objects/4f/fbe6ec4693664cb4ff395edf3d949bd4607391": "2beb9ca6c799e0ff64e0ad79f9e55e69",
".git/objects/52/896f461139823daf687cc35421b4042e303fbc": "63a42eee682858c78a1735754a5479b4",
".git/objects/62/4b69cd692478591f4c446379a8babd510e2fcf": "0a035ec71a1be4a4a01c2a67ecc0842e",
".git/objects/65/ca9d1bf8ab94c2f87b7dcaaf46458685e2f950": "938c92d394435ab1cef773af271077c8",
".git/objects/66/fc3b84b4cc6f1cce286ac4b55415c9a18d3298": "07f25a5813c13eb8399e341580c24237",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/70/3cb0da59f790b1282dd14faa638eb0745a1935": "7822a66ef422e620f8860d4f6e49c32c",
".git/objects/76/7fdc37b3b5a22183b09e9afaeffa3433377a52": "a3cf89c8eca63c9f406f0b1a4854c3d5",
".git/objects/7a/6c1911dddaea52e2dbffc15e45e428ec9a9915": "f1dee6885dc6f71f357a8e825bda0286",
".git/objects/7c/0df18985be2a8e6d19976c98e224d1f60b4685": "ee3429700c7200303d47c56bd42ee0cd",
".git/objects/80/2696a66913366c545229ba5e0958da37148d3f": "5078efe87ea8c22c334b511575aa84dc",
".git/objects/83/74131dd14427c47f53efef7b242b736d476410": "1dbf04f8ee430772dad3eb68d1589fc3",
".git/objects/86/eec2ae29cd06361daf5314c10f052c9a14edd8": "224ad42ca59f2229f73197af1350b1c5",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8f/d9e0a66802aa7b01af4df1355e3c0f97121a3a": "03e79aff1850043d7a85049289224ed2",
".git/objects/94/c016461a5359161766fcd09194e1e47c7484e5": "8789ef61fe87837fa403de781b22e80f",
".git/objects/98/0d49437042d93ffa850a60d02cef584a35a85c": "8e18e4c1b6c83800103ff097cc222444",
".git/objects/9a/f82efea54052789f6a167c0be42ca3b2c8518e": "85d7298dfa20be8cd0f9034ecda63921",
".git/objects/9b/3ef5f169177a64f91eafe11e52b58c60db3df2": "91d370e4f73d42e0a622f3e44af9e7b1",
".git/objects/9e/3b4630b3b8461ff43c272714e00bb47942263e": "accf36d08c0545fa02199021e5902d52",
".git/objects/9e/62505ece22a1d7e334a5842b431d8a9b33d434": "cebed9cecd44af3a65c41d88c04530a8",
".git/objects/a2/5b1349f4bf5533b26f964bdf754cf01f152852": "c328fd899b0ad57b8c5bd16f32ec5657",
".git/objects/a3/c9af9ba790293c46bddfd1f314041590e54190": "0f78146ccfc3abe34e40380891cd3505",
".git/objects/a5/353b5ef109f14b1625bf055e8cc170779bf698": "d8544c218692b778f5cfa7aa3f8a98b6",
".git/objects/a5/736ff5b875ae0483ae7f4dddaa7a5d1a0c3160": "75b3ea166c183a31215501843aa354b8",
".git/objects/a7/418dd87713547bf3c25211ee1470379810f0a6": "3a16550032e57b80ecf4861bc9d9baea",
".git/objects/ab/0aa35702bc6aa0d1cb399caaa82784cefdde56": "f46e8e4bbfa45ca20981b3c50f39b9ef",
".git/objects/b2/81410c75fce4160b4627d7ae51a9f85bfb52a9": "290c9ebbb9ec603624d38e92d5a44f2f",
".git/objects/b6/b8806f5f9d33389d53c2868e6ea1aca7445229": "b14016efdbcda10804235f3a45562bbf",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/8c103ec6015fb31d728f135ac36ce035bc8230": "ae7ffb3af1eb9e188bd28a48e3d8232e",
".git/objects/b9/0efadfd3b29e71449fe720b0d503d3a71e78fc": "1e1acdc2ff3aebde051a6ce6c0c9315c",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/c28dda5bdbc1d9f2668f7e4cc04e9a119b9e13": "a3fe80057be7d7a3ffd232dbf53bdf13",
".git/objects/c4/016f7d68c0d70816a0c784867168ffa8f419e1": "fdf8b8a8484741e7a3a558ed9d22f21d",
".git/objects/ca/3bba02c77c467ef18cffe2d4c857e003ad6d5d": "316e3d817e75cf7b1fd9b0226c088a43",
".git/objects/d0/e7d25f662e861f87c90330f3d549b7b4f9bab8": "7a4a99b6d74e42a204ce840886f60f03",
".git/objects/d2/ac575bec5afb44ba68ca904fd65031550ee436": "92dac2661df3d7ce7f763e6116bb8654",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/dd/42e71a9a894e65c763b9c4b01a96f2ec7b1fef": "4e72a7ecaa187f8ea5214b699b4e9c17",
".git/objects/de/2d4f063af9d9604b9192046367ea20023019e8": "56e3910c87043b515c0664f3299f2370",
".git/objects/e2/2daece3f9d4e9735267a76ec8d08753c4e9378": "fd7e834d3b0e25f0b2b156086101fddc",
".git/objects/e3/e9ee754c75ae07cc3d19f9b8c1e656cc4946a1": "14066365125dcce5aec8eb1454f0d127",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/ea/ba0c5e088000b49012647832aaabe5da3afba3": "ad22838b8bc6a7175af573d164ec20be",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/b55d4deb8363b6afa65df71d1f9fd8c7787f22": "886ebb77561ff26a755e09883903891d",
".git/objects/ee/195c2a4d5808ea85162e4122859f28cc462319": "0c23fc10d9ac82f14b31144dd4a2e5bf",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f4/820563625a629a76c9bc345d8ba99026b8f785": "d735ef4de6c1d1b213a172b4cd889662",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f9/60db2408bded196aea97778fb9fd026f3f77f1": "dcc9a239b773d99b27ffd98bf86e4bf6",
".git/objects/fe/3b987e61ed346808d9aa023ce3073530ad7426": "dc7db10bf25046b27091222383ede515",
".git/ORIG_HEAD": "c2a3051d57b0992a9b0e3235f55a40bb",
".git/refs/heads/main": "c2a3051d57b0992a9b0e3235f55a40bb",
".git/refs/remotes/origin/main": "c2a3051d57b0992a9b0e3235f55a40bb",
"assets/AssetManifest.bin": "a32faf0e7ceb1fb95956de13d4ca9306",
"assets/AssetManifest.bin.json": "df643902171b89c69ccd39aa9b084123",
"assets/AssetManifest.json": "34e1ecc72cb553d7d4683842bd15f020",
"assets/assets/aboutme-image.jpg": "15e18289b51c7becc5512961f0a72f1d",
"assets/assets/anaconda-svgrepo-com.svg": "6d647853bfb75a81cc4d18c7e27834d6",
"assets/assets/android-icon-svgrepo-com.svg": "5a63cacf11a6994ed01c25c23fe12ed9",
"assets/assets/apple-svgrepo-com.svg": "4f94b94649e8976dc56bc412e19ea3b7",
"assets/assets/chatbot-interface.PNG": "4a0bd65a3f24087c22e1f9b1c9a02845",
"assets/assets/desktop-svgrepo-com.svg": "ec4c1a4b1dba2b42f5efdbad19a192f2",
"assets/assets/firebase-svgrepo-com.svg": "d8131d1b624ad0bdb84c80d0e4f95bdf",
"assets/assets/flutter-svgrepo-com.svg": "543a4ee33e851f1b2504c240e1a3b8b1",
"assets/assets/google-cloud-svgrepo-com.svg": "51d18a44185ba33ae48516fb3bd092f3",
"assets/assets/health-metrics-monitor4.PNG": "6372453c097f2610b8ffcc7e894de047",
"assets/assets/hugging-face-svgrepo-com.svg": "1def7a5d992a70327141d80a10e79a04",
"assets/assets/kaggle-svgrepo-com.svg": "b361ddacb2befb218e3570bcf6614f79",
"assets/assets/logo-google-android-studio-svgrepo-com.svg": "3318e70af2f00c29f634539d9c350bd5",
"assets/assets/machine-learning-01-svgrepo-com.svg": "d4e1479b33ff73f072e5261c35a72071",
"assets/assets/python-svgrepo-com.svg": "85368627053aa7df8e1340c0f29acdb8",
"assets/assets/screenshot-4.PNG": "05845eb9557b43071b1d671d182acf57",
"assets/assets/tensorflow-svgrepo-com.svg": "8d074c5beccaac704d01216c73c195e5",
"assets/assets/women1.PNG": "94874450308e9d0f239523917af8e92b",
"assets/assets/world-wide-svgrepo-com.svg": "3ce3607b654ab6c8e3cbf1e35541ea25",
"assets/FontManifest.json": "97c2528ecc2fbf4093965257fdba1854",
"assets/fonts/MaterialIcons-Regular.otf": "aa157b404eb04c7060167b900e916563",
"assets/NOTICES": "cb051b1a17059c6937c36709a8bedec2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Brands-Regular-400.otf": "c175d75b7b56d209165303408bede672",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Regular-400.otf": "df86a1976d76bd04cf3fcaf5add2dd0f",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Solid-900.otf": "e151d7a6f42f17e9ea335c91d07b3739",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "ab9f434818274c0511cdfa591a7e39aa",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8daff411ec4d385c8450c8c6bfd49ae7",
"/": "8daff411ec4d385c8450c8c6bfd49ae7",
"main.dart.js": "bf04bc930723833780e4bc577ca512c0",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
