'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "14990eb1b99a44b9ea7efab0eb883ae4",
"assets/AssetManifest.bin.json": "1f9c18957dae19f959139d2ff47cf7da",
"assets/AssetManifest.json": "4b87dac38a740d8a0968223347bed7bb",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/images/bhujiya.png": "8c8962ba7ca12fd3a7a80f79c73c0c88",
"assets/assets/images/Blinkit-Logo-Yellow.png": "bec191cf9ded63c4b458b609b31abad8",
"assets/assets/images/candle.png": "031a8b49d09b4c9bbc196cdfbefd1c13",
"assets/assets/images/category.png": "97c897fe5a8c72767c791a1fa4f4d7b7",
"assets/assets/images/diyas.png": "03a45988fd333cdced8d8c170c7a44c8",
"assets/assets/images/Ellipse.png": "6dfcbca990ca08ca3ed4de0274302584",
"assets/assets/images/fire1.png": "213fe3205488f3ee5cfa383bdd7cd7f2",
"assets/assets/images/fire2.png": "e8e3518dd2e3bcb6741660177e7d94f5",
"assets/assets/images/fire3.png": "e8e3518dd2e3bcb6741660177e7d94f5",
"assets/assets/images/fire4.png": "213fe3205488f3ee5cfa383bdd7cd7f2",
"assets/assets/images/gifts.png": "5ef0aa3fb63b2fc5c08cfb517a03232c",
"assets/assets/images/home.png": "0604fd99113a6c9f4d6934b29eb5d21f",
"assets/assets/images/image%25201.png": "ee05c9540b97a5a5aa657ce1eb03949a",
"assets/assets/images/image%252021.png": "14b3c6085de6a458c62b29da20e9426b",
"assets/assets/images/image%252022.png": "ac711d97ecbea697864b636aba609bee",
"assets/assets/images/image%252023.png": "3a43aac5eebc35c1ddac765b1d6c89ed",
"assets/assets/images/image%252024.png": "fef29f9f8744167f7512155717a0fc61",
"assets/assets/images/image%252025.png": "7d70f68083eeb030f39ddffef1ae8f20",
"assets/assets/images/image%252041.png": "a1f85b0dde743b7554a4cd7a87e30267",
"assets/assets/images/image%252042.png": "7394da94b78e84ef3e802062a3d1b9a7",
"assets/assets/images/image%252043.png": "945b3ec02eddccb2b55bee01441e5205",
"assets/assets/images/image%252044.png": "a6340ad277576eb7f046eb972445b7ad",
"assets/assets/images/image%252045.png": "ea514e0474e22638136db33fcc43a887",
"assets/assets/images/jamun.png": "9387b75a8d151a2efd41df0a7bb03f3e",
"assets/assets/images/living.png": "0cd3933df184870f0be1534d0c6c9898",
"assets/assets/images/login_image.png": "124722ab3114e65c46461f7ecb44b8f1",
"assets/assets/images/LogoImage.png": "f2c415787dc394c5bbb7157fb6e4ab15",
"assets/assets/images/milk.png": "e36cc2c8bf35b259c4d5926930aa5c7a",
"assets/assets/images/potato.png": "b217858a5b7b13a23a40876271ddda29",
"assets/assets/images/print.png": "3847825b3c84d01598b2cf9571c5bc84",
"assets/assets/images/printer.png": "29fc8eac2036b864d8c043ec5a3b59c1",
"assets/assets/images/ps4.png": "770fd78349e26833ce9acd66e6bcbb13",
"assets/assets/images/shopping_bag.png": "39df553f84eac689170684f92cf069ce",
"assets/assets/images/shopping_cart.png": "df4b634d6b0f8a639bf1d9bb8da43937",
"assets/assets/images/star.png": "5cef1eeb568be4ca04754b1b45c0b6a7",
"assets/assets/images/tomato.png": "33d41f7a07fb9745b3f28fcc376478e8",
"assets/assets/images/Zomato.png": "5479349341ab351836fec76a461c5a5e",
"assets/FontManifest.json": "cfb08844571102b3c6a89307462c4320",
"assets/fonts/MaterialIcons-Regular.otf": "6d7485c8fe3b02ceb35414e727859557",
"assets/NOTICES": "8ecca2c3c6809e8a7d6c97b35fe0f98e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "f05c9f36c0f8f2e6892987275994869a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "eee3cdfe81282dbd73cacba12c6d9f45",
"/": "eee3cdfe81282dbd73cacba12c6d9f45",
"main.dart.js": "801dc435b6f942df8ea3299ab2bb017f",
"manifest.json": "d7f7ba5f8e171a4b549c54524284fb53",
"version.json": "f1726c8e0e64767b9b1bd3c989f0a698"};
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
