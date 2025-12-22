'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "cf45190907d344e52142f1d5a28e5da7",
"index.html": "7a4e5588243f98e07ea3645bf5e0553b",
"/": "7a4e5588243f98e07ea3645bf5e0553b",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "27a8e5299e9ada8e9c1e737e6c091460",
"assets/assets/markdowns/professional/smart-watch.md": "1cb58bfffb1734a8e363b9057aebb9cf",
"assets/assets/markdowns/professional/problem-statement.md": "92ce6910d031c9c8facbff000b8f076d",
"assets/assets/markdowns/professional/doc-intelli.md": "f226a90af9345bb3e854a226b304904f",
"assets/assets/markdowns/professional/bio-automation.md": "e0a78f25f4cce0f628f2fd9aa0e21afc",
"assets/assets/markdowns/pii/problem-statement.md": "d85743393189e807e2ebe0485a469a5d",
"assets/assets/markdowns/pii/award-winning.md": "a3d54340a37bca97fbbacfc1c63547cf",
"assets/assets/markdowns/pii/high-recall.md": "11306cfd5d19f736ac578df175c34468",
"assets/assets/markdowns/pii/class-imbalance.md": "5cdcc2130efd0a1e357041ed6e0d0a3e",
"assets/assets/markdowns/flash-learn/problem-statement.md": "18beef0831b8b2f88e2ea5ca3e8eea1a",
"assets/assets/markdowns/flash-learn/high-performance.md": "7dbd40874875a67ed960e77d0bd7d209",
"assets/assets/markdowns/flash-learn/rigorous-stability.md": "0c688c7494e7ed3bb32272bc9ce6e282",
"assets/assets/markdowns/flash-learn/forgetting-curve.md": "375c15a3489b2652200a7b25861592c0",
"assets/assets/config.json": "8d5a36e91374f93a67835fbf3087a5b0",
"assets/assets/logos/go.svg": "d5ae57cb59c594dfd100a5486a2daa47",
"assets/assets/logos/postgresql.svg": "9e764d07f1240bee5d1e570b3664c73d",
"assets/assets/logos/sklearn.svg": "a86854b9589e4383fcdbc60da3a306ad",
"assets/assets/logos/plotly.svg": "c186e69b64ae26f3f0e0b103487047fd",
"assets/assets/logos/pandas.svg": "3afd4be1504f26751ad47047484c8d80",
"assets/assets/logos/arch-linux.svg": "42a3bfe5b9863beeaf3b3efba8bb8c76",
"assets/assets/logos/matlab.svg": "28d748af4253b1ec961735e3515d1c1b",
"assets/assets/logos/linkedin.svg": "9419e9f024acae4e057ac247710e7e2f",
"assets/assets/logos/github.svg": "f26802b8dbef596268dd36546a50a0b0",
"assets/assets/logos/flutter.svg": "ed9ae2ef41760aff0a54ee11ee3cc657",
"assets/assets/logos/pytorch.svg": "15d1bcb353553aa5772f7aa13efd48a2",
"assets/assets/logos/git.svg": "3d9ab627d3fd4d8c682eee5571d6cea2",
"assets/assets/logos/python.svg": "914d42c0760e0c6bc03b2f9fac79fcc7",
"assets/assets/logos/huggingface.svg": "157dee07f8b2ee3162c9f3788ffebd8b",
"assets/assets/logos/android.svg": "d33d14f9659ffe3c8aa818f9aee319c7",
"assets/assets/logos/docker.svg": "2c67e5018373071ae815cb31d0ace6d5",
"assets/assets/logos/opencv.svg": "9a4d2279c371479a512361200ee20237",
"assets/assets/logos/aws.svg": "2c6edabe0a1a035e71dd6c42b21d5f21",
"assets/assets/logos/kubernetes.svg": "49d7fecf3089e198800aceb8408032a3",
"assets/assets/logos/gmail.svg": "d3d9fcb397a23407f9ce475beb3767bb",
"assets/assets/logos/vim.svg": "c4ad4b3335763c8169a9614be0444eef",
"assets/assets/diagrams/pii-medal-light.png": "458bb2395a718a4f5c09c54dd89fe45c",
"assets/assets/diagrams/pii-label-diagram-light.png": "c6b79f6c4555681503a2bf146c8731b2",
"assets/assets/diagrams/fl-cicd-light.png": "570ccd70d219fc94dc0ee4f965f248f2",
"assets/assets/diagrams/bio_comp_light.png": "1cb93b09615cd7a63ccd3eb158dafea6",
"assets/assets/diagrams/credit_risk_dark.png": "39e71179b13ba21e130fdf9f5fdfa66d",
"assets/assets/diagrams/pii-flow-dark.png": "756a39ba72869b5a9ae18fa870f611fc",
"assets/assets/diagrams/bio_comp_dark.png": "d8c0565144e5f00abb9b99a0456a5e79",
"assets/assets/diagrams/credit_risk_light.png": "e2de846c0a7a0e0f5c9f0b42df90dd1f",
"assets/assets/diagrams/pii-label-diagram-dark.png": "7141e75d588dcca99819b9b50466f439",
"assets/assets/diagrams/pii-medal-dark.png": "c17723814fc909f502fcfe2dd97df230",
"assets/assets/diagrams/pii-flow-light.png": "a813f00f10ec3372ba1ba16849a24a63",
"assets/assets/diagrams/fl-ss.png": "770bcffdae52af68aabc6b24f963f1e5",
"assets/assets/diagrams/fl-cicd-dark.png": "9af256cca5d67fa10f93583b2b8465a1",
"assets/assets/images/signature.png": "904e7a9af28e4d7e42b5a41256e8f7a2",
"assets/assets/images/profile-picture-light.jpeg": "52c4251cede043b4ad32d0ec65a08fc5",
"assets/assets/images/profile-picture-dark.jpeg": "f05966660f2355e461248456960550ca",
"assets/fonts/MaterialIcons-Regular.otf": "5d29ed5e787341b40add7296d5232b66",
"assets/NOTICES": "ff43b4858bea767286d55f46078f92dd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "431569c98e5caf49146d9b22373e7485",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "82717b1a5edc9150777671ff964c7bb9",
"version.json": "3fe4fd5df2020acccdd334a29a3cc4f4",
"main.dart.js": "ad5778628a93254d80d4f38953055f01"};
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
