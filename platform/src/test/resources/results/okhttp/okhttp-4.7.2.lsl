libsl "1.0.0";
library `okhttp-4.7.2`;

import "java.lsl";

type okhttp3.Address {
    `url`: okhttp3.HttpUrl;
    protocols: java.util.List;
    connectionSpecs: java.util.List;
    dns: okhttp3.Dns;
    socketFactory: javax.net.SocketFactory;
    sslSocketFactory: javax.net.ssl.SSLSocketFactory;
    hostnameVerifier: javax.net.ssl.HostnameVerifier;
    certificatePinner: okhttp3.CertificatePinner;
    proxyAuthenticator: okhttp3.Authenticator;
    proxy: java.net.Proxy;
    proxySelector: java.net.ProxySelector;
}

type okhttp3.internal.platform.Android10Platform {
    socketAdapters: java.util.List;
    isSupported: bool;
    Companion: okhttp3.internal.platform.Android10Platform$Companion;
}

type okhttp3.internal.platform.Android10Platform$Companion {
}

type okhttp3.internal.platform.android.Android10SocketAdapter {
    Companion: okhttp3.internal.platform.android.Android10SocketAdapter$Companion;
}

type okhttp3.internal.platform.android.Android10SocketAdapter$Companion {
}

type okhttp3.internal.platform.android.AndroidCertificateChainCleaner {
    trustManager: javax.net.ssl.X509TrustManager;
    x509TrustManagerExtensions: `<UNRESOLVED_TYPE>`;
    Companion: okhttp3.internal.platform.android.AndroidCertificateChainCleaner$Companion;
}

type okhttp3.internal.platform.android.AndroidCertificateChainCleaner$Companion {
}

type okhttp3.internal.platform.android.AndroidLog {
    MAX_LOG_LENGTH: int;
    configuredLoggers: java.util.concurrent.CopyOnWriteArraySet;
    knownLoggers: java.util.Map;
    INSTANCE: okhttp3.internal.platform.android.AndroidLog;
}

type okhttp3.internal.platform.android.AndroidLogHandler {
    INSTANCE: okhttp3.internal.platform.android.AndroidLogHandler;
}

type okhttp3.internal.platform.android.AndroidLogKt {
}

type okhttp3.internal.platform.AndroidPlatform {
    socketAdapters: java.util.List;
    closeGuard: okhttp3.internal.platform.android.CloseGuard;
    isSupported: bool;
    Companion: okhttp3.internal.platform.AndroidPlatform$Companion;
}

type okhttp3.internal.platform.AndroidPlatform$Companion {
}

type okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex {
    trustManager: javax.net.ssl.X509TrustManager;
    findByIssuerAndSignatureMethod: java.lang.reflect.Method;
}

type okhttp3.internal.platform.android.AndroidSocketAdapter {
    setUseSessionTickets: java.lang.reflect.Method;
    setHostname: java.lang.reflect.Method;
    getAlpnSelectedProtocol: java.lang.reflect.Method;
    setAlpnProtocols: java.lang.reflect.Method;
    sslSocketClass: java.lang.Class;
    Companion: okhttp3.internal.platform.android.AndroidSocketAdapter$Companion;
}

type okhttp3.internal.platform.android.AndroidSocketAdapter$Companion {
}

type okhttp3.Authenticator {
    NONE: okhttp3.Authenticator;
    JAVA_NET_AUTHENTICATOR: okhttp3.Authenticator;
    Companion: okhttp3.Authenticator$Companion;
}

type okhttp3.Authenticator$Companion {
    $$INSTANCE: okhttp3.Authenticator$Companion;
}

type okhttp3.Authenticator$Companion$AuthenticatorNone {
}

type okhttp3.internal.tls.BasicCertificateChainCleaner {
    trustRootIndex: okhttp3.internal.tls.TrustRootIndex;
    MAX_SIGNERS: int;
    Companion: okhttp3.internal.tls.BasicCertificateChainCleaner$Companion;
}

type okhttp3.internal.tls.BasicCertificateChainCleaner$Companion {
}

type okhttp3.internal.tls.BasicTrustRootIndex {
    subjectToCaCerts: java.util.Map;
}

type okhttp3.internal.platform.BouncyCastlePlatform {
    provider: java.security.Provider;
    isSupported: bool;
    Companion: okhttp3.internal.platform.BouncyCastlePlatform$Companion;
}

type okhttp3.internal.platform.BouncyCastlePlatform$Companion {
}

type okhttp3.internal.platform.android.BouncyCastleSocketAdapter {
    Companion: okhttp3.internal.platform.android.BouncyCastleSocketAdapter$Companion;
}

type okhttp3.internal.platform.android.BouncyCastleSocketAdapter$Companion {
}

type okhttp3.internal.http.BridgeInterceptor {
    cookieJar: okhttp3.CookieJar;
}

type okhttp3.Cache {
    cache: okhttp3.internal.cache.DiskLruCache;
    writeSuccessCount: int;
    writeAbortCount: int;
    networkCount: int;
    hitCount: int;
    requestCount: int;
    VERSION: int;
    ENTRY_METADATA: int;
    ENTRY_BODY: int;
    ENTRY_COUNT: int;
    Companion: okhttp3.Cache$Companion;
}

type okhttp3.Cache$CacheResponseBody {
    bodySource: okio.BufferedSource;
    snapshot: okhttp3.internal.cache.DiskLruCache$Snapshot;
    contentType: java.lang.String;
    contentLength: java.lang.String;
}

type okhttp3.Cache$CacheResponseBody$1 {
    this$0: okhttp3.Cache$CacheResponseBody;
    $source: okio.Source;
}

type okhttp3.Cache$Companion {
}

type okhttp3.Cache$Entry {
    `url`: java.lang.String;
    varyHeaders: okhttp3.Headers;
    requestMethod: java.lang.String;
    protocol: okhttp3.Protocol;
    code: int;
    message: java.lang.String;
    responseHeaders: okhttp3.Headers;
    handshake: okhttp3.Handshake;
    sentRequestMillis: long;
    receivedResponseMillis: long;
    SENT_MILLIS: java.lang.String;
    RECEIVED_MILLIS: java.lang.String;
    Companion: okhttp3.Cache$Entry$Companion;
}

type okhttp3.Cache$Entry$Companion {
}

type okhttp3.Cache$RealCacheRequest {
    cacheOut: okio.Sink;
    body: okio.Sink;
    done: bool;
    editor: okhttp3.internal.cache.DiskLruCache$Editor;
    this$0: okhttp3.Cache;
}

type okhttp3.Cache$RealCacheRequest$1 {
    this$0: okhttp3.Cache$RealCacheRequest;
}

type okhttp3.Cache$urls$1 {
    delegate: java.util.Iterator;
    nextUrl: java.lang.String;
    canRemove: bool;
    this$0: okhttp3.Cache;
}

type okhttp3.CacheControl {
    noCache: bool;
    noStore: bool;
    maxAgeSeconds: int;
    sMaxAgeSeconds: int;
    isPrivate: bool;
    isPublic: bool;
    mustRevalidate: bool;
    maxStaleSeconds: int;
    minFreshSeconds: int;
    onlyIfCached: bool;
    noTransform: bool;
    immutable: bool;
    headerValue: java.lang.String;
    FORCE_NETWORK: okhttp3.CacheControl;
    FORCE_CACHE: okhttp3.CacheControl;
    Companion: okhttp3.CacheControl$Companion;
}

type okhttp3.CacheControl$Builder {
    noCache: bool;
    noStore: bool;
    maxAgeSeconds: int;
    maxStaleSeconds: int;
    minFreshSeconds: int;
    onlyIfCached: bool;
    noTransform: bool;
    immutable: bool;
}

type okhttp3.CacheControl$Companion {
}

type okhttp3.internal.cache.CacheInterceptor {
    cache: okhttp3.Cache;
    Companion: okhttp3.internal.cache.CacheInterceptor$Companion;
}

type okhttp3.internal.cache.CacheInterceptor$Companion {
}

type okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 {
    cacheRequestClosed: bool;
    $source: okio.BufferedSource;
    $cacheRequest: okhttp3.internal.cache.CacheRequest;
    $cacheBody: okio.BufferedSink;
}

type okhttp3.internal.cache.CacheRequest {
}

type okhttp3.internal.cache.CacheStrategy {
    networkRequest: okhttp3.Request;
    cacheResponse: okhttp3.Response;
    Companion: okhttp3.internal.cache.CacheStrategy$Companion;
}

type okhttp3.internal.cache.CacheStrategy$Companion {
}

type okhttp3.internal.cache.CacheStrategy$Factory {
    servedDate: java.util.Date;
    servedDateString: java.lang.String;
    lastModified: java.util.Date;
    lastModifiedString: java.lang.String;
    expires: java.util.Date;
    sentRequestMillis: long;
    receivedResponseMillis: long;
    etag: java.lang.String;
    ageSeconds: int;
    nowMillis: long;
    request: okhttp3.Request;
    cacheResponse: okhttp3.Response;
}

type okhttp3.Call {
}

type okhttp3.Call$Factory {
}

type okhttp3.internal.http.CallServerInterceptor {
    forWebSocket: bool;
}

type okhttp3.Callback {
}

type okhttp3.internal.tls.CertificateChainCleaner {
    Companion: okhttp3.internal.tls.CertificateChainCleaner$Companion;
}

type okhttp3.internal.tls.CertificateChainCleaner$Companion {
}

type okhttp3.CertificatePinner {
    pins: java.util.Set;
    certificateChainCleaner: okhttp3.internal.tls.CertificateChainCleaner;
    DEFAULT: okhttp3.CertificatePinner;
    Companion: okhttp3.CertificatePinner$Companion;
}

type okhttp3.CertificatePinner$Builder {
    pins: java.util.List;
}

type okhttp3.CertificatePinner$Companion {
}

type okhttp3.CertificatePinner$Pin {
    pattern: java.lang.String;
    hashAlgorithm: java.lang.String;
    hash: okio.ByteString;
}

type okhttp3.CertificatePinner$check$1 {
    this$0: okhttp3.CertificatePinner;
    $peerCertificates: java.util.List;
    $hostname: java.lang.String;
}

type okhttp3.Challenge {
    authParams: java.util.Map;
    scheme: java.lang.String;
}

type okhttp3.CipherSuite {
    javaName: java.lang.String;
    ORDER_BY_NAME: java.util.Comparator;
    INSTANCES: java.util.Map;
    TLS_RSA_WITH_NULL_MD5: okhttp3.CipherSuite;
    TLS_RSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    TLS_RSA_EXPORT_WITH_RC4_40_MD5: okhttp3.CipherSuite;
    TLS_RSA_WITH_RC4_128_MD5: okhttp3.CipherSuite;
    TLS_RSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_RSA_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    TLS_RSA_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    TLS_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_DH_anon_EXPORT_WITH_RC4_40_MD5: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_RC4_128_MD5: okhttp3.CipherSuite;
    TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_KRB5_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    TLS_KRB5_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_KRB5_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_KRB5_WITH_DES_CBC_MD5: okhttp3.CipherSuite;
    TLS_KRB5_WITH_3DES_EDE_CBC_MD5: okhttp3.CipherSuite;
    TLS_KRB5_WITH_RC4_128_MD5: okhttp3.CipherSuite;
    TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA: okhttp3.CipherSuite;
    TLS_KRB5_EXPORT_WITH_RC4_40_SHA: okhttp3.CipherSuite;
    TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5: okhttp3.CipherSuite;
    TLS_KRB5_EXPORT_WITH_RC4_40_MD5: okhttp3.CipherSuite;
    TLS_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_RSA_WITH_NULL_SHA256: okhttp3.CipherSuite;
    TLS_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_RSA_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_RSA_WITH_CAMELLIA_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    TLS_RSA_WITH_CAMELLIA_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_PSK_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_PSK_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_PSK_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_PSK_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_RSA_WITH_SEED_CBC_SHA: okhttp3.CipherSuite;
    TLS_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_DHE_DSS_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_DH_anon_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_EMPTY_RENEGOTIATION_INFO_SCSV: okhttp3.CipherSuite;
    TLS_FALLBACK_SCSV: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_anon_WITH_NULL_SHA: okhttp3.CipherSuite;
    TLS_ECDH_anon_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_anon_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDH_anon_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    TLS_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    TLS_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    TLS_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    TLS_AES_128_CCM_SHA256: okhttp3.CipherSuite;
    TLS_AES_128_CCM_8_SHA256: okhttp3.CipherSuite;
    Companion: okhttp3.CipherSuite$Companion;
}

type okhttp3.CipherSuite$Companion {
}

type okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1 {
}

type okhttp3.internal.platform.android.CloseGuard {
    getMethod: java.lang.reflect.Method;
    openMethod: java.lang.reflect.Method;
    warnIfOpenMethod: java.lang.reflect.Method;
    Companion: okhttp3.internal.platform.android.CloseGuard$Companion;
}

type okhttp3.internal.platform.android.CloseGuard$Companion {
}

type okhttp3.internal.connection.ConnectInterceptor {
    INSTANCE: okhttp3.internal.connection.ConnectInterceptor;
}

type okhttp3.Connection {
}

type okhttp3.ConnectionPool {
    delegate: okhttp3.internal.connection.RealConnectionPool;
}

type okhttp3.internal.http2.ConnectionShutdownException {
}

type okhttp3.ConnectionSpec {
    isTls: bool;
    supportsTlsExtensions: bool;
    cipherSuitesAsString: array<java.lang.String>;
    tlsVersionsAsString: array<java.lang.String>;
    RESTRICTED_CIPHER_SUITES: array<okhttp3.CipherSuite>;
    APPROVED_CIPHER_SUITES: array<okhttp3.CipherSuite>;
    RESTRICTED_TLS: okhttp3.ConnectionSpec;
    MODERN_TLS: okhttp3.ConnectionSpec;
    COMPATIBLE_TLS: okhttp3.ConnectionSpec;
    CLEARTEXT: okhttp3.ConnectionSpec;
    Companion: okhttp3.ConnectionSpec$Companion;
}

type okhttp3.ConnectionSpec$Builder {
    tls: bool;
    cipherSuites: array<java.lang.String>;
    tlsVersions: array<java.lang.String>;
    supportsTlsExtensions: bool;
}

type okhttp3.ConnectionSpec$Companion {
}

type okhttp3.internal.connection.ConnectionSpecSelector {
    nextModeIndex: int;
    isFallbackPossible: bool;
    isFallback: bool;
    connectionSpecs: java.util.List;
}

type okhttp3.internal.platform.ConscryptPlatform {
    provider: java.security.Provider;
    isSupported: bool;
    Companion: okhttp3.internal.platform.ConscryptPlatform$Companion;
}

type okhttp3.internal.platform.ConscryptPlatform$Companion {
}

type okhttp3.internal.platform.ConscryptPlatform$platformTrustManager$2 {
    INSTANCE: okhttp3.internal.platform.ConscryptPlatform$platformTrustManager$2;
}

type okhttp3.internal.platform.android.ConscryptSocketAdapter {
    Companion: okhttp3.internal.platform.android.ConscryptSocketAdapter$Companion;
}

type okhttp3.internal.platform.android.ConscryptSocketAdapter$Companion {
}

type okhttp3.Cookie {
    name: java.lang.String;
    value: java.lang.String;
    expiresAt: long;
    domain: java.lang.String;
    path: java.lang.String;
    secure: bool;
    httpOnly: bool;
    persistent: bool;
    hostOnly: bool;
    YEAR_PATTERN: java.util.regex.Pattern;
    MONTH_PATTERN: java.util.regex.Pattern;
    DAY_OF_MONTH_PATTERN: java.util.regex.Pattern;
    TIME_PATTERN: java.util.regex.Pattern;
    Companion: okhttp3.Cookie$Companion;
}

type okhttp3.Cookie$Builder {
    name: java.lang.String;
    value: java.lang.String;
    expiresAt: long;
    domain: java.lang.String;
    path: java.lang.String;
    secure: bool;
    httpOnly: bool;
    persistent: bool;
    hostOnly: bool;
}

type okhttp3.Cookie$Companion {
}

type okhttp3.CookieJar {
    NO_COOKIES: okhttp3.CookieJar;
    Companion: okhttp3.CookieJar$Companion;
}

type okhttp3.CookieJar$Companion {
    $$INSTANCE: okhttp3.CookieJar$Companion;
}

type okhttp3.CookieJar$Companion$NoCookies {
}

type okhttp3.Credentials {
    INSTANCE: okhttp3.Credentials;
}

type okhttp3.internal.http.DatesKt {
    MAX_DATE: long;
    STANDARD_DATE_FORMAT: okhttp3.internal.http.DatesKt$STANDARD_DATE_FORMAT$1;
    BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS: array<java.lang.String>;
    BROWSER_COMPATIBLE_DATE_FORMATS: array<java.text.DateFormat>;
}

type okhttp3.internal.http.DatesKt$STANDARD_DATE_FORMAT$1 {
}

type okhttp3.internal.platform.android.DeferredSocketAdapter {
    initialized: bool;
    delegate: okhttp3.internal.platform.android.SocketAdapter;
    socketPackage: java.lang.String;
}

type okhttp3.internal.cache.DiskLruCache {
    maxSize: long;
    journalFile: java.io.File;
    journalFileTmp: java.io.File;
    journalFileBackup: java.io.File;
    size: long;
    journalWriter: okio.BufferedSink;
    lruEntries: java.util.LinkedHashMap;
    redundantOpCount: int;
    hasJournalErrors: bool;
    civilizedFileSystem: bool;
    initialized: bool;
    closed: bool;
    mostRecentTrimFailed: bool;
    mostRecentRebuildFailed: bool;
    nextSequenceNumber: long;
    cleanupQueue: okhttp3.internal.concurrent.TaskQueue;
    cleanupTask: okhttp3.internal.cache.DiskLruCache$cleanupTask$1;
    fileSystem: okhttp3.internal.io.FileSystem;
    directory: java.io.File;
    appVersion: int;
    valueCount: int;
    JOURNAL_FILE: java.lang.String;
    JOURNAL_FILE_TEMP: java.lang.String;
    JOURNAL_FILE_BACKUP: java.lang.String;
    MAGIC: java.lang.String;
    VERSION_1: java.lang.String;
    ANY_SEQUENCE_NUMBER: long;
    LEGAL_KEY_PATTERN: `<UNRESOLVED_TYPE>`;
    CLEAN: java.lang.String;
    DIRTY: java.lang.String;
    REMOVE: java.lang.String;
    READ: java.lang.String;
    Companion: okhttp3.internal.cache.DiskLruCache$Companion;
}

type okhttp3.internal.cache.DiskLruCache$Companion {
}

type okhttp3.internal.cache.DiskLruCache$Editor {
    written: array<bool>;
    done: bool;
    entry: okhttp3.internal.cache.DiskLruCache$Entry;
    this$0: okhttp3.internal.cache.DiskLruCache;
}

type okhttp3.internal.cache.DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 {
    this$0: okhttp3.internal.cache.DiskLruCache$Editor;
    $index$inlined: int;
}

type okhttp3.internal.cache.DiskLruCache$Entry {
    lengths: array<long>;
    cleanFiles: java.util.List;
    dirtyFiles: java.util.List;
    readable: bool;
    zombie: bool;
    currentEditor: okhttp3.internal.cache.DiskLruCache$Editor;
    lockingSourceCount: int;
    sequenceNumber: long;
    key: java.lang.String;
    this$0: okhttp3.internal.cache.DiskLruCache;
}

type okhttp3.internal.cache.DiskLruCache$Entry$newSource$1 {
    closed: bool;
    this$0: okhttp3.internal.cache.DiskLruCache$Entry;
    $fileSource: okio.Source;
}

type okhttp3.internal.cache.DiskLruCache$Snapshot {
    key: java.lang.String;
    sequenceNumber: long;
    sources: java.util.List;
    lengths: array<long>;
    this$0: okhttp3.internal.cache.DiskLruCache;
}

type okhttp3.internal.cache.DiskLruCache$cleanupTask$1 {
    this$0: okhttp3.internal.cache.DiskLruCache;
}

type okhttp3.internal.cache.DiskLruCache$newJournalWriter$faultHidingSink$1 {
    this$0: okhttp3.internal.cache.DiskLruCache;
}

type okhttp3.internal.cache.DiskLruCache$snapshots$1 {
    delegate: java.util.Iterator;
    nextSnapshot: okhttp3.internal.cache.DiskLruCache$Snapshot;
    removeSnapshot: okhttp3.internal.cache.DiskLruCache$Snapshot;
    this$0: okhttp3.internal.cache.DiskLruCache;
}

type okhttp3.Dispatcher {
    maxRequests: int;
    maxRequestsPerHost: int;
    idleCallback: java.lang.Runnable;
    executorServiceOrNull: java.util.concurrent.ExecutorService;
    readyAsyncCalls: java.util.ArrayDeque;
    runningAsyncCalls: java.util.ArrayDeque;
    runningSyncCalls: java.util.ArrayDeque;
}

type okhttp3.Dns {
    SYSTEM: okhttp3.Dns;
    Companion: okhttp3.Dns$Companion;
}

type okhttp3.Dns$Companion {
    $$INSTANCE: okhttp3.Dns$Companion;
}

type okhttp3.Dns$Companion$DnsSystem {
}

enum okhttp3.internal.http2.ErrorCode {
    NO_ERROR = 0;
    PROTOCOL_ERROR = 1;
    INTERNAL_ERROR = 2;
    FLOW_CONTROL_ERROR = 3;
    SETTINGS_TIMEOUT = 4;
    STREAM_CLOSED = 5;
    FRAME_SIZE_ERROR = 6;
    REFUSED_STREAM = 7;
    CANCEL = 8;
    COMPRESSION_ERROR = 9;
    CONNECT_ERROR = 10;
    ENHANCE_YOUR_CALM = 11;
    INADEQUATE_SECURITY = 12;
    HTTP_1_1_REQUIRED = 13;
}

type okhttp3.internal.http2.ErrorCode$Companion {
}

type okhttp3.EventListener {
    NONE: okhttp3.EventListener;
    Companion: okhttp3.EventListener$Companion;
}

type okhttp3.EventListener$Companion {
}

type okhttp3.EventListener$Companion$NONE$1 {
}

type okhttp3.EventListener$Factory {
}

type okhttp3.internal.connection.Exchange {
    isDuplex: bool;
    connection: okhttp3.internal.connection.RealConnection;
    call: okhttp3.internal.connection.RealCall;
    eventListener: okhttp3.EventListener;
    finder: okhttp3.internal.connection.ExchangeFinder;
    codec: okhttp3.internal.http.ExchangeCodec;
}

type okhttp3.internal.connection.Exchange$RequestBodySink {
    completed: bool;
    bytesReceived: long;
    closed: bool;
    contentLength: long;
    this$0: okhttp3.internal.connection.Exchange;
}

type okhttp3.internal.connection.Exchange$ResponseBodySource {
    bytesReceived: long;
    invokeStartEvent: bool;
    completed: bool;
    closed: bool;
    contentLength: long;
    this$0: okhttp3.internal.connection.Exchange;
}

type okhttp3.internal.http.ExchangeCodec {
    Companion: okhttp3.internal.http.ExchangeCodec$Companion;
    DISCARD_STREAM_TIMEOUT_MILLIS: int;
}

type okhttp3.internal.http.ExchangeCodec$Companion {
    DISCARD_STREAM_TIMEOUT_MILLIS: int;
    $$INSTANCE: okhttp3.internal.http.ExchangeCodec$Companion;
}

type okhttp3.internal.connection.ExchangeFinder {
    routeSelection: okhttp3.internal.connection.RouteSelector$Selection;
    routeSelector: okhttp3.internal.connection.RouteSelector;
    connectingConnection: okhttp3.internal.connection.RealConnection;
    refusedStreamCount: int;
    connectionShutdownCount: int;
    otherFailureCount: int;
    nextRouteToTry: okhttp3.Route;
    connectionPool: okhttp3.internal.connection.RealConnectionPool;
    address: okhttp3.Address;
    call: okhttp3.internal.connection.RealCall;
    eventListener: okhttp3.EventListener;
}

type okhttp3.internal.cache.FaultHidingSink {
    hasErrors: bool;
    onException: `<UNRESOLVED_TYPE>`;
}

type okhttp3.internal.cache2.FileOperator {
    fileChannel: java.nio.channels.FileChannel;
}

type okhttp3.internal.io.FileSystem {
    SYSTEM: okhttp3.internal.io.FileSystem;
    Companion: okhttp3.internal.io.FileSystem$Companion;
}

type okhttp3.internal.io.FileSystem$Companion {
    $$INSTANCE: okhttp3.internal.io.FileSystem$Companion;
}

type okhttp3.internal.io.FileSystem$Companion$SYSTEM$1 {
}

type okhttp3.FormBody {
    encodedNames: java.util.List;
    encodedValues: java.util.List;
    CONTENT_TYPE: okhttp3.MediaType;
    Companion: okhttp3.FormBody$Companion;
}

type okhttp3.FormBody$Builder {
    names: java.util.List;
    values: java.util.List;
    charset: java.nio.charset.Charset;
}

type okhttp3.FormBody$Companion {
}

type okhttp3.Handshake {
    peerCertificates$delegate: `<UNRESOLVED_TYPE>`;
    tlsVersion: okhttp3.TlsVersion;
    cipherSuite: okhttp3.CipherSuite;
    localCertificates: java.util.List;
    Companion: okhttp3.Handshake$Companion;
}

type okhttp3.Handshake$Companion {
}

type okhttp3.Handshake$Companion$get$1 {
    $peerCertificatesCopy: java.util.List;
}

type okhttp3.Handshake$Companion$handshake$1 {
    $peerCertificatesCopy: java.util.List;
}

type okhttp3.Handshake$peerCertificates$2 {
    $peerCertificatesFn: `<UNRESOLVED_TYPE>`;
}

type okhttp3.internal.http2.Header {
    hpackSize: int;
    name: okio.ByteString;
    value: okio.ByteString;
    PSEUDO_PREFIX: okio.ByteString;
    RESPONSE_STATUS_UTF8: java.lang.String;
    TARGET_METHOD_UTF8: java.lang.String;
    TARGET_PATH_UTF8: java.lang.String;
    TARGET_SCHEME_UTF8: java.lang.String;
    TARGET_AUTHORITY_UTF8: java.lang.String;
    RESPONSE_STATUS: okio.ByteString;
    TARGET_METHOD: okio.ByteString;
    TARGET_PATH: okio.ByteString;
    TARGET_SCHEME: okio.ByteString;
    TARGET_AUTHORITY: okio.ByteString;
    Companion: okhttp3.internal.http2.Header$Companion;
}

type okhttp3.internal.http2.Header$Companion {
}

type okhttp3.Headers {
    namesAndValues: array<java.lang.String>;
    Companion: okhttp3.Headers$Companion;
}

type okhttp3.Headers$Builder {
    namesAndValues: java.util.List;
}

type okhttp3.Headers$Companion {
}

type okhttp3.internal.http1.HeadersReader {
    headerLimit: long;
    source: okio.BufferedSource;
    HEADER_LIMIT: int;
    Companion: okhttp3.internal.http1.HeadersReader$Companion;
}

type okhttp3.internal.http1.HeadersReader$Companion {
}

type okhttp3.internal.HostnamesKt {
}

type okhttp3.internal.http2.Hpack {
    PREFIX_4_BITS: int;
    PREFIX_5_BITS: int;
    PREFIX_6_BITS: int;
    PREFIX_7_BITS: int;
    SETTINGS_HEADER_TABLE_SIZE: int;
    SETTINGS_HEADER_TABLE_SIZE_LIMIT: int;
    STATIC_HEADER_TABLE: array<okhttp3.internal.http2.Header>;
    NAME_TO_FIRST_INDEX: java.util.Map;
    INSTANCE: okhttp3.internal.http2.Hpack;
}

type okhttp3.internal.http2.Hpack$Reader {
    headerList: java.util.List;
    source: okio.BufferedSource;
    dynamicTable: array<okhttp3.internal.http2.Header>;
    nextHeaderIndex: int;
    headerCount: int;
    dynamicTableByteCount: int;
    headerTableSizeSetting: int;
    maxDynamicTableByteCount: int;
}

type okhttp3.internal.http2.Hpack$Writer {
    smallestHeaderTableSizeSetting: int;
    emitDynamicTableSizeUpdate: bool;
    maxDynamicTableByteCount: int;
    dynamicTable: array<okhttp3.internal.http2.Header>;
    nextHeaderIndex: int;
    headerCount: int;
    dynamicTableByteCount: int;
    headerTableSizeSetting: int;
    useCompression: bool;
    out: okio.Buffer;
}

type okhttp3.internal.http1.Http1ExchangeCodec {
    `state`: int;
    headersReader: okhttp3.internal.http1.HeadersReader;
    trailers: okhttp3.Headers;
    client: okhttp3.OkHttpClient;
    connection: okhttp3.internal.connection.RealConnection;
    source: okio.BufferedSource;
    sink: okio.BufferedSink;
    NO_CHUNK_YET: long;
    STATE_IDLE: int;
    STATE_OPEN_REQUEST_BODY: int;
    STATE_WRITING_REQUEST_BODY: int;
    STATE_READ_RESPONSE_HEADERS: int;
    STATE_OPEN_RESPONSE_BODY: int;
    STATE_READING_RESPONSE_BODY: int;
    STATE_CLOSED: int;
    Companion: okhttp3.internal.http1.Http1ExchangeCodec$Companion;
}

type okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource {
    timeout: okio.ForwardingTimeout;
    closed: bool;
    this$0: okhttp3.internal.http1.Http1ExchangeCodec;
}

type okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink {
    timeout: okio.ForwardingTimeout;
    closed: bool;
    this$0: okhttp3.internal.http1.Http1ExchangeCodec;
}

type okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource {
    bytesRemainingInChunk: long;
    hasMoreChunks: bool;
    `url`: okhttp3.HttpUrl;
    this$0: okhttp3.internal.http1.Http1ExchangeCodec;
}

type okhttp3.internal.http1.Http1ExchangeCodec$Companion {
}

type okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource {
    bytesRemaining: long;
    this$0: okhttp3.internal.http1.Http1ExchangeCodec;
}

type okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink {
    timeout: okio.ForwardingTimeout;
    closed: bool;
    this$0: okhttp3.internal.http1.Http1ExchangeCodec;
}

type okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource {
    inputExhausted: bool;
    this$0: okhttp3.internal.http1.Http1ExchangeCodec;
}

type okhttp3.internal.http2.Http2 {
    CONNECTION_PREFACE: okio.ByteString;
    INITIAL_MAX_FRAME_SIZE: int;
    TYPE_DATA: int;
    TYPE_HEADERS: int;
    TYPE_PRIORITY: int;
    TYPE_RST_STREAM: int;
    TYPE_SETTINGS: int;
    TYPE_PUSH_PROMISE: int;
    TYPE_PING: int;
    TYPE_GOAWAY: int;
    TYPE_WINDOW_UPDATE: int;
    TYPE_CONTINUATION: int;
    FLAG_NONE: int;
    FLAG_ACK: int;
    FLAG_END_STREAM: int;
    FLAG_END_HEADERS: int;
    FLAG_END_PUSH_PROMISE: int;
    FLAG_PADDED: int;
    FLAG_PRIORITY: int;
    FLAG_COMPRESSED: int;
    FRAME_NAMES: array<java.lang.String>;
    FLAGS: array<java.lang.String>;
    BINARY: array<java.lang.String>;
    INSTANCE: okhttp3.internal.http2.Http2;
}

type okhttp3.internal.http2.Http2Connection {
    client: bool;
    listener: okhttp3.internal.http2.Http2Connection$Listener;
    streams: java.util.Map;
    connectionName: java.lang.String;
    lastGoodStreamId: int;
    nextStreamId: int;
    isShutdown: bool;
    taskRunner: okhttp3.internal.concurrent.TaskRunner;
    writerQueue: okhttp3.internal.concurrent.TaskQueue;
    pushQueue: okhttp3.internal.concurrent.TaskQueue;
    settingsListenerQueue: okhttp3.internal.concurrent.TaskQueue;
    pushObserver: okhttp3.internal.http2.PushObserver;
    intervalPingsSent: long;
    intervalPongsReceived: long;
    degradedPingsSent: long;
    degradedPongsReceived: long;
    awaitPingsSent: long;
    awaitPongsReceived: long;
    degradedPongDeadlineNs: long;
    okHttpSettings: okhttp3.internal.http2.Settings;
    peerSettings: okhttp3.internal.http2.Settings;
    readBytesTotal: long;
    readBytesAcknowledged: long;
    writeBytesTotal: long;
    writeBytesMaximum: long;
    socket: java.net.Socket;
    writer: okhttp3.internal.http2.Http2Writer;
    readerRunnable: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    currentPushRequests: java.util.Set;
    OKHTTP_CLIENT_WINDOW_SIZE: int;
    DEFAULT_SETTINGS: okhttp3.internal.http2.Settings;
    INTERVAL_PING: int;
    DEGRADED_PING: int;
    AWAIT_PING: int;
    DEGRADED_PONG_TIMEOUT_NS: int;
    Companion: okhttp3.internal.http2.Http2Connection$Companion;
}

type okhttp3.internal.http2.Http2Connection$$special$$inlined$schedule$1 {
    $name: java.lang.String;
    this$0: okhttp3.internal.http2.Http2Connection;
    $pingIntervalNanos$inlined: long;
}

type okhttp3.internal.http2.Http2Connection$Builder {
    socket: java.net.Socket;
    connectionName: java.lang.String;
    source: okio.BufferedSource;
    sink: okio.BufferedSink;
    listener: okhttp3.internal.http2.Http2Connection$Listener;
    pushObserver: okhttp3.internal.http2.PushObserver;
    pingIntervalMillis: int;
    client: bool;
    taskRunner: okhttp3.internal.concurrent.TaskRunner;
}

type okhttp3.internal.http2.Http2Connection$Companion {
}

type okhttp3.internal.http2.Http2Connection$Listener {
    REFUSE_INCOMING_STREAMS: okhttp3.internal.http2.Http2Connection$Listener;
    Companion: okhttp3.internal.http2.Http2Connection$Listener$Companion;
}

type okhttp3.internal.http2.Http2Connection$Listener$Companion {
}

type okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 {
}

type okhttp3.internal.http2.Http2Connection$ReaderRunnable {
    reader: okhttp3.internal.http2.Http2Reader;
    this$0: okhttp3.internal.http2.Http2Connection;
}

type okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    $clearPrevious$inlined: bool;
    $newPeerSettings$inlined: `<UNRESOLVED_TYPE>`;
    $settings$inlined: okhttp3.internal.http2.Settings;
    $delta$inlined: `<UNRESOLVED_TYPE>`;
    $streamsToNotify$inlined: `<UNRESOLVED_TYPE>`;
}

type okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1 {
    $name: java.lang.String;
    $cancelable: bool;
    $newStream$inlined: okhttp3.internal.http2.Http2Stream;
    this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    $stream$inlined: okhttp3.internal.http2.Http2Stream;
    $streamId$inlined: int;
    $headerBlock$inlined: java.util.List;
    $inFinished$inlined: bool;
}

type okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    $payload1$inlined: int;
    $payload2$inlined: int;
}

type okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    $clearPrevious$inlined: bool;
    $settings$inlined: okhttp3.internal.http2.Settings;
}

type okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
    $streamId$inlined: int;
    $buffer$inlined: okio.Buffer;
    $byteCount$inlined: int;
    $inFinished$inlined: bool;
}

type okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
    $streamId$inlined: int;
    $requestHeaders$inlined: java.util.List;
    $inFinished$inlined: bool;
}

type okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
    $streamId$inlined: int;
    $requestHeaders$inlined: java.util.List;
}

type okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
    $streamId$inlined: int;
    $errorCode$inlined: okhttp3.internal.http2.ErrorCode;
}

type okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
}

type okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
    $streamId$inlined: int;
    $errorCode$inlined: okhttp3.internal.http2.ErrorCode;
}

type okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.http2.Http2Connection;
    $streamId$inlined: int;
    $unacknowledgedBytesRead$inlined: long;
}

type okhttp3.internal.http2.Http2ExchangeCodec {
    stream: okhttp3.internal.http2.Http2Stream;
    protocol: okhttp3.Protocol;
    canceled: bool;
    connection: okhttp3.internal.connection.RealConnection;
    chain: okhttp3.internal.http.RealInterceptorChain;
    http2Connection: okhttp3.internal.http2.Http2Connection;
    CONNECTION: java.lang.String;
    HOST: java.lang.String;
    KEEP_ALIVE: java.lang.String;
    PROXY_CONNECTION: java.lang.String;
    TRANSFER_ENCODING: java.lang.String;
    TE: java.lang.String;
    ENCODING: java.lang.String;
    UPGRADE: java.lang.String;
    HTTP_2_SKIPPED_REQUEST_HEADERS: java.util.List;
    HTTP_2_SKIPPED_RESPONSE_HEADERS: java.util.List;
    Companion: okhttp3.internal.http2.Http2ExchangeCodec$Companion;
}

type okhttp3.internal.http2.Http2ExchangeCodec$Companion {
}

type okhttp3.internal.http2.Http2Reader {
    continuation: okhttp3.internal.http2.Http2Reader$ContinuationSource;
    hpackReader: okhttp3.internal.http2.Hpack$Reader;
    source: okio.BufferedSource;
    client: bool;
    logger: java.util.logging.Logger;
    Companion: okhttp3.internal.http2.Http2Reader$Companion;
}

type okhttp3.internal.http2.Http2Reader$Companion {
}

type okhttp3.internal.http2.Http2Reader$ContinuationSource {
    length: int;
    flags: int;
    streamId: int;
    left: int;
    padding: int;
    source: okio.BufferedSource;
}

type okhttp3.internal.http2.Http2Reader$Handler {
}

type okhttp3.internal.http2.Http2Stream {
    readBytesTotal: long;
    readBytesAcknowledged: long;
    writeBytesTotal: long;
    writeBytesMaximum: long;
    headersQueue: java.util.ArrayDeque;
    hasResponseHeaders: bool;
    source: okhttp3.internal.http2.Http2Stream$FramingSource;
    sink: okhttp3.internal.http2.Http2Stream$FramingSink;
    readTimeout: okhttp3.internal.http2.Http2Stream$StreamTimeout;
    writeTimeout: okhttp3.internal.http2.Http2Stream$StreamTimeout;
    errorCode: okhttp3.internal.http2.ErrorCode;
    errorException: java.io.IOException;
    id: int;
    connection: okhttp3.internal.http2.Http2Connection;
    EMIT_BUFFER_SIZE: long;
    Companion: okhttp3.internal.http2.Http2Stream$Companion;
}

type okhttp3.internal.http2.Http2Stream$Companion {
}

type okhttp3.internal.http2.Http2Stream$FramingSink {
    sendBuffer: okio.Buffer;
    trailers: okhttp3.Headers;
    closed: bool;
    finished: bool;
    this$0: okhttp3.internal.http2.Http2Stream;
}

type okhttp3.internal.http2.Http2Stream$FramingSource {
    receiveBuffer: okio.Buffer;
    readBuffer: okio.Buffer;
    trailers: okhttp3.Headers;
    closed: bool;
    maxByteCount: long;
    finished: bool;
    this$0: okhttp3.internal.http2.Http2Stream;
}

type okhttp3.internal.http2.Http2Stream$StreamTimeout {
    this$0: okhttp3.internal.http2.Http2Stream;
}

type okhttp3.internal.http2.Http2Writer {
    hpackBuffer: okio.Buffer;
    maxFrameSize: int;
    closed: bool;
    hpackWriter: okhttp3.internal.http2.Hpack$Writer;
    sink: okio.BufferedSink;
    client: bool;
    logger: java.util.logging.Logger;
    Companion: okhttp3.internal.http2.Http2Writer$Companion;
}

type okhttp3.internal.http2.Http2Writer$Companion {
}

type okhttp3.internal.http.HttpHeaders {
    QUOTED_STRING_DELIMITERS: okio.ByteString;
    TOKEN_DELIMITERS: okio.ByteString;
}

type okhttp3.internal.http.HttpMethod {
    INSTANCE: okhttp3.internal.http.HttpMethod;
}

type okhttp3.HttpUrl {
    isHttps: bool;
    scheme: java.lang.String;
    username: java.lang.String;
    password: java.lang.String;
    host: java.lang.String;
    port: int;
    pathSegments: java.util.List;
    queryNamesAndValues: java.util.List;
    fragment: java.lang.String;
    `url`: java.lang.String;
    HEX_DIGITS: array<char>;
    USERNAME_ENCODE_SET: java.lang.String;
    PASSWORD_ENCODE_SET: java.lang.String;
    PATH_SEGMENT_ENCODE_SET: java.lang.String;
    PATH_SEGMENT_ENCODE_SET_URI: java.lang.String;
    QUERY_ENCODE_SET: java.lang.String;
    QUERY_COMPONENT_REENCODE_SET: java.lang.String;
    QUERY_COMPONENT_ENCODE_SET: java.lang.String;
    QUERY_COMPONENT_ENCODE_SET_URI: java.lang.String;
    FORM_ENCODE_SET: java.lang.String;
    FRAGMENT_ENCODE_SET: java.lang.String;
    FRAGMENT_ENCODE_SET_URI: java.lang.String;
    Companion: okhttp3.HttpUrl$Companion;
}

type okhttp3.HttpUrl$Builder {
    scheme: java.lang.String;
    encodedUsername: java.lang.String;
    encodedPassword: java.lang.String;
    host: java.lang.String;
    port: int;
    encodedPathSegments: java.util.List;
    encodedQueryNamesAndValues: java.util.List;
    encodedFragment: java.lang.String;
    INVALID_HOST: java.lang.String;
    Companion: okhttp3.HttpUrl$Builder$Companion;
}

type okhttp3.HttpUrl$Builder$Companion {
}

type okhttp3.HttpUrl$Companion {
}

type okhttp3.internal.http2.Huffman {
    CODES: array<int>;
    CODE_BIT_COUNTS: array<byte>;
    root: okhttp3.internal.http2.Huffman$Node;
    INSTANCE: okhttp3.internal.http2.Huffman;
}

type okhttp3.internal.http2.Huffman$Node {
    children: array<okhttp3.internal.http2.Huffman$Node>;
    symbol: int;
    terminalBitCount: int;
}

type okhttp3.Interceptor {
    Companion: okhttp3.Interceptor$Companion;
}

type okhttp3.Interceptor$Chain {
}

type okhttp3.Interceptor$Companion {
    $$INSTANCE: okhttp3.Interceptor$Companion;
}

type okhttp3.Interceptor$Companion$invoke$1 {
    $block: `<UNRESOLVED_TYPE>`;
}

type okhttp3.internal.Internal {
}

type okhttp3.internal.authenticator.JavaNetAuthenticator {
    defaultDns: okhttp3.Dns;
}

type okhttp3.internal.authenticator.JavaNetAuthenticator$WhenMappings {
    $EnumSwitchMapping$0: array<int>;
}

type okhttp3.internal.platform.Jdk8WithJettyBootPlatform {
    putMethod: java.lang.reflect.Method;
    getMethod: java.lang.reflect.Method;
    removeMethod: java.lang.reflect.Method;
    clientProviderClass: java.lang.Class;
    serverProviderClass: java.lang.Class;
    Companion: okhttp3.internal.platform.Jdk8WithJettyBootPlatform$Companion;
}

type okhttp3.internal.platform.Jdk8WithJettyBootPlatform$AlpnProvider {
    unsupported: bool;
    selected: java.lang.String;
    protocols: java.util.List;
}

type okhttp3.internal.platform.Jdk8WithJettyBootPlatform$Companion {
}

type okhttp3.internal.platform.Jdk9Platform {
    isAvailable: bool;
    Companion: okhttp3.internal.platform.Jdk9Platform$Companion;
}

type okhttp3.internal.platform.Jdk9Platform$Companion {
}

type okhttp3.MediaType {
    mediaType: java.lang.String;
    `type`: java.lang.String;
    subtype: java.lang.String;
    parameterNamesAndValues: array<java.lang.String>;
    TOKEN: java.lang.String;
    QUOTED: java.lang.String;
    TYPE_SUBTYPE: java.util.regex.Pattern;
    PARAMETER: java.util.regex.Pattern;
    Companion: okhttp3.MediaType$Companion;
}

type okhttp3.MediaType$Companion {
}

type okhttp3.internal.ws.MessageDeflater {
    deflatedBytes: okio.Buffer;
    deflater: java.util.zip.Deflater;
    deflaterSink: okio.DeflaterSink;
    noContextTakeover: bool;
}

type okhttp3.internal.ws.MessageDeflaterKt {
    EMPTY_DEFLATE_BLOCK: okio.ByteString;
    LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION: int;
}

type okhttp3.internal.ws.MessageInflater {
    deflatedBytes: okio.Buffer;
    inflater: java.util.zip.Inflater;
    inflaterSource: okio.InflaterSource;
    noContextTakeover: bool;
}

type okhttp3.internal.ws.MessageInflaterKt {
    OCTETS_TO_ADD_BEFORE_INFLATION: int;
}

type okhttp3.MultipartBody {
    contentType: okhttp3.MediaType;
    contentLength: long;
    boundaryByteString: okio.ByteString;
    `type`: okhttp3.MediaType;
    parts: java.util.List;
    MIXED: okhttp3.MediaType;
    ALTERNATIVE: okhttp3.MediaType;
    DIGEST: okhttp3.MediaType;
    PARALLEL: okhttp3.MediaType;
    FORM: okhttp3.MediaType;
    COLONSPACE: array<byte>;
    CRLF: array<byte>;
    DASHDASH: array<byte>;
    Companion: okhttp3.MultipartBody$Companion;
}

type okhttp3.MultipartBody$Builder {
    boundary: okio.ByteString;
    `type`: okhttp3.MediaType;
    parts: java.util.List;
}

type okhttp3.MultipartBody$Companion {
}

type okhttp3.MultipartBody$Part {
    headers: okhttp3.Headers;
    body: okhttp3.RequestBody;
    Companion: okhttp3.MultipartBody$Part$Companion;
}

type okhttp3.MultipartBody$Part$Companion {
}

type okhttp3.MultipartReader {
    dashDashBoundary: okio.ByteString;
    crlfDashDashBoundary: okio.ByteString;
    partCount: int;
    closed: bool;
    noMoreParts: bool;
    currentPart: okhttp3.MultipartReader$PartSource;
    source: okio.BufferedSource;
    boundary: java.lang.String;
    afterBoundaryOptions: okio.Options;
    Companion: okhttp3.MultipartReader$Companion;
}

type okhttp3.MultipartReader$Companion {
}

type okhttp3.MultipartReader$Part {
    headers: okhttp3.Headers;
    body: okio.BufferedSource;
}

type okhttp3.MultipartReader$PartSource {
    timeout: okio.Timeout;
    this$0: okhttp3.MultipartReader;
}

type okhttp3.internal.proxy.NullProxySelector {
    INSTANCE: okhttp3.internal.proxy.NullProxySelector;
}

type okhttp3.internal.tls.OkHostnameVerifier {
    ALT_DNS_NAME: int;
    ALT_IPA_NAME: int;
    INSTANCE: okhttp3.internal.tls.OkHostnameVerifier;
}

type okhttp3.OkHttp {
    VERSION: java.lang.String;
    INSTANCE: okhttp3.OkHttp;
}

type okhttp3.OkHttpClient {
    dispatcher: okhttp3.Dispatcher;
    connectionPool: okhttp3.ConnectionPool;
    interceptors: java.util.List;
    networkInterceptors: java.util.List;
    eventListenerFactory: okhttp3.EventListener$Factory;
    retryOnConnectionFailure: bool;
    authenticator: okhttp3.Authenticator;
    followRedirects: bool;
    followSslRedirects: bool;
    cookieJar: okhttp3.CookieJar;
    cache: okhttp3.Cache;
    dns: okhttp3.Dns;
    proxy: java.net.Proxy;
    proxySelector: java.net.ProxySelector;
    proxyAuthenticator: okhttp3.Authenticator;
    socketFactory: javax.net.SocketFactory;
    sslSocketFactoryOrNull: javax.net.ssl.SSLSocketFactory;
    x509TrustManager: javax.net.ssl.X509TrustManager;
    connectionSpecs: java.util.List;
    protocols: java.util.List;
    hostnameVerifier: javax.net.ssl.HostnameVerifier;
    certificatePinner: okhttp3.CertificatePinner;
    certificateChainCleaner: okhttp3.internal.tls.CertificateChainCleaner;
    callTimeoutMillis: int;
    connectTimeoutMillis: int;
    readTimeoutMillis: int;
    writeTimeoutMillis: int;
    pingIntervalMillis: int;
    minWebSocketMessageToCompress: long;
    routeDatabase: okhttp3.internal.connection.RouteDatabase;
    DEFAULT_PROTOCOLS: java.util.List;
    DEFAULT_CONNECTION_SPECS: java.util.List;
    Companion: okhttp3.OkHttpClient$Companion;
}

type okhttp3.OkHttpClient$Builder {
    dispatcher: okhttp3.Dispatcher;
    connectionPool: okhttp3.ConnectionPool;
    interceptors: java.util.List;
    networkInterceptors: java.util.List;
    eventListenerFactory: okhttp3.EventListener$Factory;
    retryOnConnectionFailure: bool;
    authenticator: okhttp3.Authenticator;
    followRedirects: bool;
    followSslRedirects: bool;
    cookieJar: okhttp3.CookieJar;
    cache: okhttp3.Cache;
    dns: okhttp3.Dns;
    proxy: java.net.Proxy;
    proxySelector: java.net.ProxySelector;
    proxyAuthenticator: okhttp3.Authenticator;
    socketFactory: javax.net.SocketFactory;
    sslSocketFactoryOrNull: javax.net.ssl.SSLSocketFactory;
    x509TrustManagerOrNull: javax.net.ssl.X509TrustManager;
    connectionSpecs: java.util.List;
    protocols: java.util.List;
    hostnameVerifier: javax.net.ssl.HostnameVerifier;
    certificatePinner: okhttp3.CertificatePinner;
    certificateChainCleaner: okhttp3.internal.tls.CertificateChainCleaner;
    callTimeout: int;
    connectTimeout: int;
    readTimeout: int;
    writeTimeout: int;
    pingInterval: int;
    minWebSocketMessageToCompress: long;
    routeDatabase: okhttp3.internal.connection.RouteDatabase;
}

type okhttp3.OkHttpClient$Builder$addInterceptor$$inlined$invoke$1 {
    $block$inlined: `<UNRESOLVED_TYPE>`;
}

type okhttp3.OkHttpClient$Builder$addNetworkInterceptor$$inlined$invoke$1 {
    $block$inlined: `<UNRESOLVED_TYPE>`;
}

type okhttp3.OkHttpClient$Companion {
}

type okhttp3.internal.platform.OpenJSSEPlatform {
    provider: java.security.Provider;
    isSupported: bool;
    Companion: okhttp3.internal.platform.OpenJSSEPlatform$Companion;
}

type okhttp3.internal.platform.OpenJSSEPlatform$Companion {
}

type okhttp3.internal.platform.Platform {
    platform: okhttp3.internal.platform.Platform;
    INFO: int;
    WARN: int;
    logger: java.util.logging.Logger;
    Companion: okhttp3.internal.platform.Platform$Companion;
}

type okhttp3.internal.platform.Platform$Companion {
}

enum okhttp3.Protocol {
    HTTP_1_0 = 0;
    HTTP_1_1 = 1;
    SPDY_3 = 2;
    HTTP_2 = 3;
    H2_PRIOR_KNOWLEDGE = 4;
    QUIC = 5;
}

type okhttp3.Protocol$Companion {
}

type okhttp3.internal.publicsuffix.PublicSuffixDatabase {
    listRead: java.util.concurrent.atomic.AtomicBoolean;
    readCompleteLatch: java.util.concurrent.CountDownLatch;
    publicSuffixListBytes: array<byte>;
    publicSuffixExceptionListBytes: array<byte>;
    PUBLIC_SUFFIX_RESOURCE: java.lang.String;
    WILDCARD_LABEL: array<byte>;
    PREVAILING_RULE: java.util.List;
    EXCEPTION_MARKER: char;
    instance: okhttp3.internal.publicsuffix.PublicSuffixDatabase;
    Companion: okhttp3.internal.publicsuffix.PublicSuffixDatabase$Companion;
}

type okhttp3.internal.publicsuffix.PublicSuffixDatabase$Companion {
}

type okhttp3.internal.publicsuffix.PublicSuffixDatabase$findMatchingRule$1 {
}

type okhttp3.internal.http2.PushObserver {
    CANCEL: okhttp3.internal.http2.PushObserver;
    Companion: okhttp3.internal.http2.PushObserver$Companion;
}

type okhttp3.internal.http2.PushObserver$Companion {
    $$INSTANCE: okhttp3.internal.http2.PushObserver$Companion;
}

type okhttp3.internal.http2.PushObserver$Companion$PushObserverCancel {
}

type okhttp3.internal.connection.RealCall {
    connectionPool: okhttp3.internal.connection.RealConnectionPool;
    eventListener: okhttp3.EventListener;
    timeout: okhttp3.internal.connection.RealCall$timeout$1;
    callStackTrace: java.lang.Object;
    exchangeFinder: okhttp3.internal.connection.ExchangeFinder;
    connection: okhttp3.internal.connection.RealConnection;
    exchange: okhttp3.internal.connection.Exchange;
    exchangeRequestDone: bool;
    exchangeResponseDone: bool;
    canceled: bool;
    timeoutEarlyExit: bool;
    noMoreExchanges: bool;
    executed: bool;
    interceptorScopedExchange: okhttp3.internal.connection.Exchange;
    client: okhttp3.OkHttpClient;
    originalRequest: okhttp3.Request;
    forWebSocket: bool;
}

type okhttp3.internal.connection.RealCall$AsyncCall {
    callsPerHost: java.util.concurrent.atomic.AtomicInteger;
    responseCallback: okhttp3.Callback;
    this$0: okhttp3.internal.connection.RealCall;
}

type okhttp3.internal.connection.RealCall$CallReference {
    callStackTrace: java.lang.Object;
}

type okhttp3.internal.connection.RealCall$timeout$1 {
    this$0: okhttp3.internal.connection.RealCall;
}

type okhttp3.internal.connection.RealConnection {
    rawSocket: java.net.Socket;
    socket: java.net.Socket;
    handshake: okhttp3.Handshake;
    protocol: okhttp3.Protocol;
    http2Connection: okhttp3.internal.http2.Http2Connection;
    source: okio.BufferedSource;
    sink: okio.BufferedSink;
    noNewExchanges: bool;
    noCoalescedConnections: bool;
    routeFailureCount: int;
    successCount: int;
    refusedStreamCount: int;
    allocationLimit: int;
    calls: java.util.List;
    idleAtNs: long;
    connectionPool: okhttp3.internal.connection.RealConnectionPool;
    route: okhttp3.Route;
    NPE_THROW_WITH_NULL: java.lang.String;
    MAX_TUNNEL_ATTEMPTS: int;
    IDLE_CONNECTION_HEALTHY_NS: long;
    Companion: okhttp3.internal.connection.RealConnection$Companion;
}

type okhttp3.internal.connection.RealConnection$Companion {
}

type okhttp3.internal.connection.RealConnection$WhenMappings {
    $EnumSwitchMapping$0: array<int>;
}

type okhttp3.internal.connection.RealConnection$connectTls$1 {
    $certificatePinner: okhttp3.CertificatePinner;
    $unverifiedHandshake: okhttp3.Handshake;
    $address: okhttp3.Address;
}

type okhttp3.internal.connection.RealConnection$connectTls$2 {
    this$0: okhttp3.internal.connection.RealConnection;
}

type okhttp3.internal.connection.RealConnection$newWebSocketStreams$1 {
    $exchange: okhttp3.internal.connection.Exchange;
    $source: okio.BufferedSource;
    $sink: okio.BufferedSink;
}

type okhttp3.internal.connection.RealConnectionPool {
    keepAliveDurationNs: long;
    cleanupQueue: okhttp3.internal.concurrent.TaskQueue;
    cleanupTask: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1;
    connections: java.util.ArrayDeque;
    maxIdleConnections: int;
    Companion: okhttp3.internal.connection.RealConnectionPool$Companion;
}

type okhttp3.internal.connection.RealConnectionPool$Companion {
}

type okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 {
    this$0: okhttp3.internal.connection.RealConnectionPool;
}

type okhttp3.internal.http.RealInterceptorChain {
    calls: int;
    call: okhttp3.internal.connection.RealCall;
    interceptors: java.util.List;
    index: int;
    exchange: okhttp3.internal.connection.Exchange;
    request: okhttp3.Request;
    connectTimeoutMillis: int;
    readTimeoutMillis: int;
    writeTimeoutMillis: int;
}

type okhttp3.internal.http.RealResponseBody {
    contentTypeString: java.lang.String;
    contentLength: long;
    source: okio.BufferedSource;
}

type okhttp3.internal.ws.RealWebSocket {
    key: java.lang.String;
    call: okhttp3.Call;
    writerTask: okhttp3.internal.concurrent.Task;
    reader: okhttp3.internal.ws.WebSocketReader;
    writer: okhttp3.internal.ws.WebSocketWriter;
    taskQueue: okhttp3.internal.concurrent.TaskQueue;
    name: java.lang.String;
    streams: okhttp3.internal.ws.RealWebSocket$Streams;
    pongQueue: java.util.ArrayDeque;
    messageAndCloseQueue: java.util.ArrayDeque;
    queueSize: long;
    enqueuedClose: bool;
    receivedCloseCode: int;
    receivedCloseReason: java.lang.String;
    failed: bool;
    sentPingCount: int;
    receivedPingCount: int;
    receivedPongCount: int;
    awaitingPong: bool;
    originalRequest: okhttp3.Request;
    listener: okhttp3.WebSocketListener;
    random: java.util.Random;
    pingIntervalMillis: long;
    extensions: okhttp3.internal.ws.WebSocketExtensions;
    minimumDeflateSize: long;
    ONLY_HTTP1: java.util.List;
    MAX_QUEUE_SIZE: long;
    CANCEL_AFTER_CLOSE_MILLIS: long;
    DEFAULT_MINIMUM_DEFLATE_SIZE: long;
    Companion: okhttp3.internal.ws.RealWebSocket$Companion;
}

type okhttp3.internal.ws.RealWebSocket$Close {
    code: int;
    reason: okio.ByteString;
    cancelAfterCloseMillis: long;
}

type okhttp3.internal.ws.RealWebSocket$Companion {
}

type okhttp3.internal.ws.RealWebSocket$Message {
    formatOpcode: int;
    data: okio.ByteString;
}

type okhttp3.internal.ws.RealWebSocket$Streams {
    client: bool;
    source: okio.BufferedSource;
    sink: okio.BufferedSink;
}

type okhttp3.internal.ws.RealWebSocket$WriterTask {
    this$0: okhttp3.internal.ws.RealWebSocket;
}

type okhttp3.internal.ws.RealWebSocket$connect$1 {
    this$0: okhttp3.internal.ws.RealWebSocket;
    $request: okhttp3.Request;
}

type okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$$inlined$synchronized$lambda$1 {
    $name: java.lang.String;
    $pingIntervalNanos$inlined: long;
    this$0: okhttp3.internal.ws.RealWebSocket;
    $name$inlined: java.lang.String;
    $streams$inlined: okhttp3.internal.ws.RealWebSocket$Streams;
    $extensions$inlined: okhttp3.internal.ws.WebSocketExtensions;
}

type okhttp3.internal.ws.RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1 {
    $name: java.lang.String;
    $cancelable: bool;
    this$0: okhttp3.internal.ws.RealWebSocket;
    $writer$inlined: okhttp3.internal.ws.WebSocketWriter;
    $pong$inlined: okio.ByteString;
    $messageOrClose$inlined: `<UNRESOLVED_TYPE>`;
    $receivedCloseCode$inlined: `<UNRESOLVED_TYPE>`;
    $receivedCloseReason$inlined: `<UNRESOLVED_TYPE>`;
    $streamsToClose$inlined: `<UNRESOLVED_TYPE>`;
    $readerToClose$inlined: `<UNRESOLVED_TYPE>`;
    $writerToClose$inlined: `<UNRESOLVED_TYPE>`;
}

type okhttp3.internal.cache2.Relay {
    upstreamReader: java.lang.Thread;
    upstreamBuffer: okio.Buffer;
    complete: bool;
    buffer: okio.Buffer;
    sourceCount: int;
    file: java.io.RandomAccessFile;
    upstream: okio.Source;
    upstreamPos: long;
    metadata: okio.ByteString;
    bufferMaxSize: long;
    SOURCE_UPSTREAM: int;
    SOURCE_FILE: int;
    PREFIX_CLEAN: okio.ByteString;
    PREFIX_DIRTY: okio.ByteString;
    FILE_HEADER_SIZE: long;
    Companion: okhttp3.internal.cache2.Relay$Companion;
}

type okhttp3.internal.cache2.Relay$Companion {
}

type okhttp3.internal.cache2.Relay$RelaySource {
    timeout: okio.Timeout;
    fileOperator: okhttp3.internal.cache2.FileOperator;
    sourcePos: long;
    this$0: okhttp3.internal.cache2.Relay;
}

type okhttp3.Request {
    lazyCacheControl: okhttp3.CacheControl;
    `url`: okhttp3.HttpUrl;
    method: java.lang.String;
    headers: okhttp3.Headers;
    body: okhttp3.RequestBody;
    tags: java.util.Map;
}

type okhttp3.Request$Builder {
    `url`: okhttp3.HttpUrl;
    method: java.lang.String;
    headers: okhttp3.Headers$Builder;
    body: okhttp3.RequestBody;
    tags: java.util.Map;
}

type okhttp3.RequestBody {
    Companion: okhttp3.RequestBody$Companion;
}

type okhttp3.RequestBody$Companion {
}

type okhttp3.RequestBody$Companion$asRequestBody$1 {
    $this_asRequestBody: java.io.File;
    $contentType: okhttp3.MediaType;
}

type okhttp3.RequestBody$Companion$toRequestBody$1 {
    $this_toRequestBody: okio.ByteString;
    $contentType: okhttp3.MediaType;
}

type okhttp3.RequestBody$Companion$toRequestBody$2 {
    $this_toRequestBody: array<byte>;
    $contentType: okhttp3.MediaType;
    $byteCount: int;
    $offset: int;
}

type okhttp3.internal.http.RequestLine {
    INSTANCE: okhttp3.internal.http.RequestLine;
}

type okhttp3.Response {
    lazyCacheControl: okhttp3.CacheControl;
    request: okhttp3.Request;
    protocol: okhttp3.Protocol;
    message: java.lang.String;
    code: int;
    handshake: okhttp3.Handshake;
    headers: okhttp3.Headers;
    body: okhttp3.ResponseBody;
    networkResponse: okhttp3.Response;
    cacheResponse: okhttp3.Response;
    priorResponse: okhttp3.Response;
    sentRequestAtMillis: long;
    receivedResponseAtMillis: long;
    exchange: okhttp3.internal.connection.Exchange;
}

type okhttp3.Response$Builder {
    request: okhttp3.Request;
    protocol: okhttp3.Protocol;
    code: int;
    message: java.lang.String;
    handshake: okhttp3.Handshake;
    headers: okhttp3.Headers$Builder;
    body: okhttp3.ResponseBody;
    networkResponse: okhttp3.Response;
    cacheResponse: okhttp3.Response;
    priorResponse: okhttp3.Response;
    sentRequestAtMillis: long;
    receivedResponseAtMillis: long;
    exchange: okhttp3.internal.connection.Exchange;
}

type okhttp3.ResponseBody {
    reader: java.io.Reader;
    Companion: okhttp3.ResponseBody$Companion;
}

type okhttp3.ResponseBody$BomAwareReader {
    closed: bool;
    delegate: java.io.Reader;
    source: okio.BufferedSource;
    charset: java.nio.charset.Charset;
}

type okhttp3.ResponseBody$Companion {
}

type okhttp3.ResponseBody$Companion$asResponseBody$1 {
    $this_asResponseBody: okio.BufferedSource;
    $contentType: okhttp3.MediaType;
    $contentLength: long;
}

type okhttp3.internal.http.RetryAndFollowUpInterceptor {
    client: okhttp3.OkHttpClient;
    MAX_FOLLOW_UPS: int;
    Companion: okhttp3.internal.http.RetryAndFollowUpInterceptor$Companion;
}

type okhttp3.internal.http.RetryAndFollowUpInterceptor$Companion {
}

type okhttp3.Route {
    address: okhttp3.Address;
    proxy: java.net.Proxy;
    socketAddress: java.net.InetSocketAddress;
}

type okhttp3.internal.connection.RouteDatabase {
    failedRoutes: java.util.Set;
}

type okhttp3.internal.connection.RouteException {
    lastConnectException: java.io.IOException;
    firstConnectException: java.io.IOException;
}

type okhttp3.internal.connection.RouteSelector {
    proxies: java.util.List;
    nextProxyIndex: int;
    inetSocketAddresses: java.util.List;
    postponedRoutes: java.util.List;
    address: okhttp3.Address;
    routeDatabase: okhttp3.internal.connection.RouteDatabase;
    call: okhttp3.Call;
    eventListener: okhttp3.EventListener;
    Companion: okhttp3.internal.connection.RouteSelector$Companion;
}

type okhttp3.internal.connection.RouteSelector$Companion {
}

type okhttp3.internal.connection.RouteSelector$Selection {
    nextRouteIndex: int;
    routes: java.util.List;
}

type okhttp3.internal.connection.RouteSelector$resetNextProxy$1 {
    this$0: okhttp3.internal.connection.RouteSelector;
    $proxy: java.net.Proxy;
    $url: okhttp3.HttpUrl;
}

type okhttp3.internal.http2.Settings {
    set: int;
    values: array<int>;
    DEFAULT_INITIAL_WINDOW_SIZE: int;
    HEADER_TABLE_SIZE: int;
    ENABLE_PUSH: int;
    MAX_CONCURRENT_STREAMS: int;
    MAX_FRAME_SIZE: int;
    MAX_HEADER_LIST_SIZE: int;
    INITIAL_WINDOW_SIZE: int;
    COUNT: int;
    Companion: okhttp3.internal.http2.Settings$Companion;
}

type okhttp3.internal.http2.Settings$Companion {
}

type okhttp3.internal.platform.android.SocketAdapter {
}

type okhttp3.internal.platform.android.SocketAdapter$DefaultImpls {
}

type okhttp3.internal.platform.android.StandardAndroidSocketAdapter {
    sslSocketFactoryClass: java.lang.Class;
    paramClass: java.lang.Class;
    Companion: okhttp3.internal.platform.android.StandardAndroidSocketAdapter$Companion;
}

type okhttp3.internal.platform.android.StandardAndroidSocketAdapter$Companion {
}

type okhttp3.internal.http.StatusLine {
    protocol: okhttp3.Protocol;
    code: int;
    message: java.lang.String;
    HTTP_TEMP_REDIRECT: int;
    HTTP_PERM_REDIRECT: int;
    HTTP_MISDIRECTED_REQUEST: int;
    HTTP_CONTINUE: int;
    Companion: okhttp3.internal.http.StatusLine$Companion;
}

type okhttp3.internal.http.StatusLine$Companion {
}

type okhttp3.internal.http2.StreamResetException {
    errorCode: okhttp3.internal.http2.ErrorCode;
}

type okhttp3.internal.SuppressSignatureCheck {
}

type okhttp3.internal.concurrent.Task {
    queue: okhttp3.internal.concurrent.TaskQueue;
    nextExecuteNanoTime: long;
    name: java.lang.String;
    cancelable: bool;
}

type okhttp3.internal.concurrent.TaskLoggerKt {
}

type okhttp3.internal.concurrent.TaskQueue {
    shutdown: bool;
    activeTask: okhttp3.internal.concurrent.Task;
    futureTasks: java.util.List;
    cancelActiveTask: bool;
    taskRunner: okhttp3.internal.concurrent.TaskRunner;
    name: java.lang.String;
}

type okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask {
    latch: java.util.concurrent.CountDownLatch;
}

type okhttp3.internal.concurrent.TaskQueue$execute$1 {
    $block: `<UNRESOLVED_TYPE>`;
    $name: java.lang.String;
    $cancelable: bool;
}

type okhttp3.internal.concurrent.TaskQueue$schedule$2 {
    $block: `<UNRESOLVED_TYPE>`;
    $name: java.lang.String;
}

type okhttp3.internal.concurrent.TaskRunner {
    nextQueueName: int;
    coordinatorWaiting: bool;
    coordinatorWakeUpAt: long;
    busyQueues: java.util.List;
    readyQueues: java.util.List;
    runnable: java.lang.Runnable;
    backend: okhttp3.internal.concurrent.TaskRunner$Backend;
    INSTANCE: okhttp3.internal.concurrent.TaskRunner;
    logger: java.util.logging.Logger;
    Companion: okhttp3.internal.concurrent.TaskRunner$Companion;
}

type okhttp3.internal.concurrent.TaskRunner$Backend {
}

type okhttp3.internal.concurrent.TaskRunner$Companion {
}

type okhttp3.internal.concurrent.TaskRunner$RealBackend {
    executor: java.util.concurrent.ThreadPoolExecutor;
}

type okhttp3.internal.concurrent.TaskRunner$runnable$1 {
    this$0: okhttp3.internal.concurrent.TaskRunner;
}

enum okhttp3.TlsVersion {
    TLS_1_3 = 0;
    TLS_1_2 = 1;
    TLS_1_1 = 2;
    TLS_1_0 = 3;
    SSL_3_0 = 4;
}

type okhttp3.TlsVersion$Companion {
}

type okhttp3.internal.tls.TrustRootIndex {
}

type okhttp3.internal.Util {
    EMPTY_BYTE_ARRAY: array<byte>;
    EMPTY_HEADERS: okhttp3.Headers;
    EMPTY_RESPONSE: okhttp3.ResponseBody;
    EMPTY_REQUEST: okhttp3.RequestBody;
    UNICODE_BOMS: okio.Options;
    UTC: java.util.TimeZone;
    VERIFY_AS_IP_ADDRESS: `<UNRESOLVED_TYPE>`;
    assertionsEnabled: bool;
    okHttpName: java.lang.String;
    userAgent: java.lang.String;
}

type okhttp3.internal.Util$asFactory$1 {
    $this_asFactory: okhttp3.EventListener;
}

type okhttp3.internal.Util$threadFactory$1 {
    $name: java.lang.String;
    $daemon: bool;
}

type okhttp3.WebSocket {
}

type okhttp3.WebSocket$Factory {
}

type okhttp3.internal.ws.WebSocketExtensions {
    perMessageDeflate: bool;
    clientMaxWindowBits: int;
    clientNoContextTakeover: bool;
    serverMaxWindowBits: int;
    serverNoContextTakeover: bool;
    unknownValues: bool;
    HEADER_WEB_SOCKET_EXTENSION: java.lang.String;
    Companion: okhttp3.internal.ws.WebSocketExtensions$Companion;
}

type okhttp3.internal.ws.WebSocketExtensions$Companion {
}

type okhttp3.WebSocketListener {
}

type okhttp3.internal.ws.WebSocketProtocol {
    ACCEPT_MAGIC: java.lang.String;
    B0_FLAG_FIN: int;
    B0_FLAG_RSV1: int;
    B0_FLAG_RSV2: int;
    B0_FLAG_RSV3: int;
    B0_MASK_OPCODE: int;
    OPCODE_FLAG_CONTROL: int;
    B1_FLAG_MASK: int;
    B1_MASK_LENGTH: int;
    OPCODE_CONTINUATION: int;
    OPCODE_TEXT: int;
    OPCODE_BINARY: int;
    OPCODE_CONTROL_CLOSE: int;
    OPCODE_CONTROL_PING: int;
    OPCODE_CONTROL_PONG: int;
    PAYLOAD_BYTE_MAX: long;
    CLOSE_MESSAGE_MAX: long;
    PAYLOAD_SHORT: int;
    PAYLOAD_SHORT_MAX: long;
    PAYLOAD_LONG: int;
    CLOSE_CLIENT_GOING_AWAY: int;
    CLOSE_NO_STATUS_CODE: int;
    INSTANCE: okhttp3.internal.ws.WebSocketProtocol;
}

type okhttp3.internal.ws.WebSocketReader {
    closed: bool;
    opcode: int;
    frameLength: long;
    isFinalFrame: bool;
    isControlFrame: bool;
    readingCompressedMessage: bool;
    controlFrameBuffer: okio.Buffer;
    messageFrameBuffer: okio.Buffer;
    messageInflater: okhttp3.internal.ws.MessageInflater;
    maskKey: array<byte>;
    maskCursor: okio.Buffer$UnsafeCursor;
    isClient: bool;
    source: okio.BufferedSource;
    frameCallback: okhttp3.internal.ws.WebSocketReader$FrameCallback;
    perMessageDeflate: bool;
    noContextTakeover: bool;
}

type okhttp3.internal.ws.WebSocketReader$FrameCallback {
}

type okhttp3.internal.ws.WebSocketWriter {
    messageBuffer: okio.Buffer;
    sinkBuffer: okio.Buffer;
    writerClosed: bool;
    messageDeflater: okhttp3.internal.ws.MessageDeflater;
    maskKey: array<byte>;
    maskCursor: okio.Buffer$UnsafeCursor;
    isClient: bool;
    sink: okio.BufferedSink;
    random: java.util.Random;
    perMessageDeflate: bool;
    noContextTakeover: bool;
    minimumDeflateSize: long;
}

annotation Throws(
    exception: string,
    predicate: bool = true
);
automaton okhttp3.Address (val arg0: java.lang.String, val arg1: int, val arg2: okhttp3.Dns, val arg3: javax.net.SocketFactory, val arg4: javax.net.ssl.SSLSocketFactory, val arg5: javax.net.ssl.HostnameVerifier, val arg6: okhttp3.CertificatePinner, val arg7: okhttp3.Authenticator, val arg8: java.net.Proxy, val arg9: java.util.List, val arg10: java.util.List, val arg11: java.net.ProxySelector) : okhttp3.Address {
    val `url`: okhttp3.HttpUrl;
    val protocols: java.util.List;
    val connectionSpecs: java.util.List;
    val dns: okhttp3.Dns;
    val socketFactory: javax.net.SocketFactory;
    val sslSocketFactory: javax.net.ssl.SSLSocketFactory;
    val hostnameVerifier: javax.net.ssl.HostnameVerifier;
    val certificatePinner: okhttp3.CertificatePinner;
    val proxyAuthenticator: okhttp3.Authenticator;
    val proxy: java.net.Proxy;
    val proxySelector: java.net.ProxySelector;
    fun `-deprecated_certificatePinner`(): okhttp3.CertificatePinner;
    
    fun `-deprecated_connectionSpecs`(): java.util.List;
    
    fun `-deprecated_dns`(): okhttp3.Dns;
    
    fun `-deprecated_hostnameVerifier`(): javax.net.ssl.HostnameVerifier;
    
    fun `-deprecated_protocols`(): java.util.List;
    
    fun `-deprecated_proxy`(): java.net.Proxy;
    
    fun `-deprecated_proxyAuthenticator`(): okhttp3.Authenticator;
    
    fun `-deprecated_proxySelector`(): java.net.ProxySelector;
    
    fun `-deprecated_socketFactory`(): javax.net.SocketFactory;
    
    fun `-deprecated_sslSocketFactory`(): javax.net.ssl.SSLSocketFactory;
    
    fun `-deprecated_url`(): okhttp3.HttpUrl;
    
    fun certificatePinner(): okhttp3.CertificatePinner;
    
    fun connectionSpecs(): java.util.List;
    
    fun dns(): okhttp3.Dns;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun equalsNonHost$okhttp(arg0: okhttp3.Address): bool;
    
    fun hashCode(): int;
    
    fun hostnameVerifier(): javax.net.ssl.HostnameVerifier;
    
    fun protocols(): java.util.List;
    
    fun proxy(): java.net.Proxy;
    
    fun proxyAuthenticator(): okhttp3.Authenticator;
    
    fun proxySelector(): java.net.ProxySelector;
    
    fun socketFactory(): javax.net.SocketFactory;
    
    fun sslSocketFactory(): javax.net.ssl.SSLSocketFactory;
    
    fun toString(): java.lang.String;
    
    fun `url`(): okhttp3.HttpUrl;
}
automaton okhttp3.internal.platform.Android10Platform : okhttp3.internal.platform.Android10Platform {
    val socketAdapters: java.util.List;
    val isSupported: bool;
    val Companion: okhttp3.internal.platform.Android10Platform$Companion;
    fun access$isSupported$cp(): bool;
    
    fun buildCertificateChainCleaner(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun isCleartextTrafficPermitted(arg0: java.lang.String): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns isSupported;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.Android10Platform$Companion : okhttp3.internal.platform.Android10Platform$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.Platform;
    
    fun isSupported(): bool;
}
automaton okhttp3.internal.platform.android.Android10SocketAdapter : okhttp3.internal.platform.android.Android10SocketAdapter {
    val Companion: okhttp3.internal.platform.android.Android10SocketAdapter$Companion;
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun isSupported(): bool;
    
    fun matchesSocket(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.android.Android10SocketAdapter$Companion : okhttp3.internal.platform.android.Android10SocketAdapter$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.android.SocketAdapter;
    
    fun isSupported(): bool;
}
automaton okhttp3.internal.platform.android.AndroidCertificateChainCleaner (val arg0: javax.net.ssl.X509TrustManager, val arg1: `<UNRESOLVED_TYPE>`) : okhttp3.internal.platform.android.AndroidCertificateChainCleaner {
    val trustManager: javax.net.ssl.X509TrustManager;
    val x509TrustManagerExtensions: `<UNRESOLVED_TYPE>`;
    val Companion: okhttp3.internal.platform.android.AndroidCertificateChainCleaner$Companion;
    fun clean(arg0: java.util.List, arg1: java.lang.String): java.util.List;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.platform.android.AndroidCertificateChainCleaner$Companion : okhttp3.internal.platform.android.AndroidCertificateChainCleaner$Companion {
    fun buildIfSupported(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
}
automaton okhttp3.internal.platform.android.AndroidLog : okhttp3.internal.platform.android.AndroidLog {
    val MAX_LOG_LENGTH: int;
    val configuredLoggers: java.util.concurrent.CopyOnWriteArraySet;
    val knownLoggers: java.util.Map;
    val INSTANCE: okhttp3.internal.platform.android.AndroidLog;
    fun androidLog$okhttp(arg0: java.lang.String, arg1: int, arg2: java.lang.String, arg3: java.lang.Throwable): void;
    
    fun enable(): void;
    
    fun enableLogging(arg0: java.lang.String, arg1: java.lang.String): void;
    
    fun loggerTag(arg0: java.lang.String): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
        assigns configuredLoggers;
        assigns knownLoggers;
    }
}
automaton okhttp3.internal.platform.android.AndroidLogHandler : okhttp3.internal.platform.android.AndroidLogHandler {
    val INSTANCE: okhttp3.internal.platform.android.AndroidLogHandler;
    fun close(): void;
    
    fun flush(): void;
    
    fun publish(arg0: java.util.logging.LogRecord): void;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.internal.platform.android.AndroidLogKt : okhttp3.internal.platform.android.AndroidLogKt {
    fun access$getAndroidLevel$p(arg0: java.util.logging.LogRecord): int;
    
    fun getAndroidLevel(arg0: java.util.logging.LogRecord): int;
}
automaton okhttp3.internal.platform.AndroidPlatform : okhttp3.internal.platform.AndroidPlatform {
    val socketAdapters: java.util.List;
    val closeGuard: okhttp3.internal.platform.android.CloseGuard;
    val isSupported: bool;
    val Companion: okhttp3.internal.platform.AndroidPlatform$Companion;
    fun access$isSupported$cp(): bool;
    
    fun buildCertificateChainCleaner(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun buildTrustRootIndex(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.tls.TrustRootIndex;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun connectSocket(arg0: java.net.Socket, arg1: java.net.InetSocketAddress, arg2: int): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun getStackTraceForCloseable(arg0: java.lang.String): java.lang.Object;
    
    fun isCleartextTrafficPermitted(arg0: java.lang.String): bool;
    
    fun logCloseableLeak(arg0: java.lang.String, arg1: java.lang.Object): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns isSupported;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.AndroidPlatform$Companion : okhttp3.internal.platform.AndroidPlatform$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.Platform;
    
    fun isSupported(): bool;
}
automaton okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex (val arg0: javax.net.ssl.X509TrustManager, val arg1: java.lang.reflect.Method) : okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex {
    val trustManager: javax.net.ssl.X509TrustManager;
    val findByIssuerAndSignatureMethod: java.lang.reflect.Method;
    fun component1(): javax.net.ssl.X509TrustManager;
    
    fun component2(): java.lang.reflect.Method;
    
    fun copy(arg0: javax.net.ssl.X509TrustManager, arg1: java.lang.reflect.Method): okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex;
    
    fun copy$default(arg0: okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex, arg1: javax.net.ssl.X509TrustManager, arg2: java.lang.reflect.Method, arg3: int, arg4: java.lang.Object): okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun findByIssuerAndSignature(arg0: java.security.cert.X509Certificate): java.security.cert.X509Certificate;
    
    fun hashCode(): int;
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.platform.android.AndroidSocketAdapter (val arg0: java.lang.Class) : okhttp3.internal.platform.android.AndroidSocketAdapter {
    val setUseSessionTickets: java.lang.reflect.Method;
    val setHostname: java.lang.reflect.Method;
    val getAlpnSelectedProtocol: java.lang.reflect.Method;
    val setAlpnProtocols: java.lang.reflect.Method;
    val sslSocketClass: java.lang.Class;
    val Companion: okhttp3.internal.platform.android.AndroidSocketAdapter$Companion;
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun isSupported(): bool;
    
    fun matchesSocket(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.android.AndroidSocketAdapter$Companion : okhttp3.internal.platform.android.AndroidSocketAdapter$Companion {
    fun buildIfSupported(arg0: java.lang.String): okhttp3.internal.platform.android.SocketAdapter;
}
automaton okhttp3.Authenticator : okhttp3.Authenticator {
    val NONE: okhttp3.Authenticator;
    val JAVA_NET_AUTHENTICATOR: okhttp3.Authenticator;
    val Companion: okhttp3.Authenticator$Companion;
    fun authenticate(arg0: okhttp3.Route, arg1: okhttp3.Response): okhttp3.Request;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.Authenticator$Companion : okhttp3.Authenticator$Companion {
    val $$INSTANCE: okhttp3.Authenticator$Companion;
}
automaton okhttp3.Authenticator$Companion$AuthenticatorNone : okhttp3.Authenticator$Companion$AuthenticatorNone {
    fun authenticate(arg0: okhttp3.Route, arg1: okhttp3.Response): okhttp3.Request;
}
automaton okhttp3.internal.tls.BasicCertificateChainCleaner (val arg0: okhttp3.internal.tls.TrustRootIndex) : okhttp3.internal.tls.BasicCertificateChainCleaner {
    val trustRootIndex: okhttp3.internal.tls.TrustRootIndex;
    val MAX_SIGNERS: int;
    val Companion: okhttp3.internal.tls.BasicCertificateChainCleaner$Companion;
    fun clean(arg0: java.util.List, arg1: java.lang.String): java.util.List;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun verifySignature(arg0: java.security.cert.X509Certificate, arg1: java.security.cert.X509Certificate): bool;
}
automaton okhttp3.internal.tls.BasicCertificateChainCleaner$Companion : okhttp3.internal.tls.BasicCertificateChainCleaner$Companion {
}
automaton okhttp3.internal.tls.BasicTrustRootIndex (val arg0: array<java.security.cert.X509Certificate>) : okhttp3.internal.tls.BasicTrustRootIndex {
    val subjectToCaCerts: java.util.Map;
    fun equals(arg0: java.lang.Object): bool;
    
    fun findByIssuerAndSignature(arg0: java.security.cert.X509Certificate): java.security.cert.X509Certificate;
    
    fun hashCode(): int;
}
automaton okhttp3.internal.platform.BouncyCastlePlatform : okhttp3.internal.platform.BouncyCastlePlatform {
    val provider: java.security.Provider;
    val isSupported: bool;
    val Companion: okhttp3.internal.platform.BouncyCastlePlatform$Companion;
    fun access$isSupported$cp(): bool;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun newSSLContext(): javax.net.ssl.SSLContext;
    
    fun platformTrustManager(): javax.net.ssl.X509TrustManager;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns isSupported;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.BouncyCastlePlatform$Companion : okhttp3.internal.platform.BouncyCastlePlatform$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.BouncyCastlePlatform;
    
    fun isSupported(): bool;
}
automaton okhttp3.internal.platform.android.BouncyCastleSocketAdapter : okhttp3.internal.platform.android.BouncyCastleSocketAdapter {
    val Companion: okhttp3.internal.platform.android.BouncyCastleSocketAdapter$Companion;
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun isSupported(): bool;
    
    fun matchesSocket(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.android.BouncyCastleSocketAdapter$Companion : okhttp3.internal.platform.android.BouncyCastleSocketAdapter$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.android.SocketAdapter;
}
automaton okhttp3.internal.http.BridgeInterceptor (val arg0: okhttp3.CookieJar) : okhttp3.internal.http.BridgeInterceptor {
    val cookieJar: okhttp3.CookieJar;
    fun cookieHeader(arg0: java.util.List): java.lang.String;
    
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response {
        assigns arg0;
    }
}
automaton okhttp3.Cache (val arg0: java.io.File, val arg1: long, val arg2: okhttp3.internal.io.FileSystem) : okhttp3.Cache {
    val cache: okhttp3.internal.cache.DiskLruCache;
    val writeSuccessCount: int;
    val writeAbortCount: int;
    val networkCount: int;
    val hitCount: int;
    val requestCount: int;
    val VERSION: int;
    val ENTRY_METADATA: int;
    val ENTRY_BODY: int;
    val ENTRY_COUNT: int;
    val Companion: okhttp3.Cache$Companion;
    fun `-deprecated_directory`(): java.io.File;
    
    fun abortQuietly(arg0: okhttp3.internal.cache.DiskLruCache$Editor): void {
        assigns arg0.done;
    }
    
    fun close(): void;
    
    fun delete(): void;
    
    fun directory(): java.io.File;
    
    fun evictAll(): void;
    
    fun flush(): void;
    
    fun get$okhttp(arg0: okhttp3.Request): okhttp3.Response;
    
    fun getCache$okhttp(): okhttp3.internal.cache.DiskLruCache;
    
    fun getWriteAbortCount$okhttp(): int;
    
    fun getWriteSuccessCount$okhttp(): int;
    
    fun hitCount(): int;
    
    fun initialize(): void;
    
    fun isClosed(): bool;
    
    fun key(arg0: okhttp3.HttpUrl): java.lang.String;
    
    fun maxSize(): long;
    
    fun networkCount(): int;
    
    fun put$okhttp(arg0: okhttp3.Response): okhttp3.internal.cache.CacheRequest {
        assigns cache.civilizedFileSystem;
        assigns cache.initialized;
        assigns cache.closed;
        assigns cache.redundantOpCount;
        assigns cache.journalWriter;
        assigns cache.hasJournalErrors;
        assigns cache.mostRecentRebuildFailed;
        assigns cache.size;
        assigns cache.mostRecentTrimFailed;
    }
    
    fun remove$okhttp(arg0: okhttp3.Request): void;
    
    fun requestCount(): int;
    
    fun setWriteAbortCount$okhttp(arg0: int): void {
        assigns writeAbortCount;
    }
    
    fun setWriteSuccessCount$okhttp(arg0: int): void {
        assigns writeSuccessCount;
    }
    
    fun size(): long;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun trackConditionalCacheHit$okhttp(): void {
        assigns hitCount;
    }
    
    fun trackResponse$okhttp(arg0: okhttp3.internal.cache.CacheStrategy): void {
        assigns requestCount;
        assigns networkCount;
        assigns hitCount;
    }
    
    fun update$okhttp(arg0: okhttp3.Response, arg1: okhttp3.Response): void;
    
    fun urls(): java.util.Iterator;
    
    fun writeAbortCount(): int;
    
    fun writeSuccessCount(): int;
}
automaton okhttp3.Cache$CacheResponseBody (val arg0: okhttp3.internal.cache.DiskLruCache$Snapshot, val arg1: java.lang.String, val arg2: java.lang.String) : okhttp3.Cache$CacheResponseBody {
    val bodySource: okio.BufferedSource;
    val snapshot: okhttp3.internal.cache.DiskLruCache$Snapshot;
    val contentType: java.lang.String;
    val contentLength: java.lang.String;
    val bodySource: okio.BufferedSource;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun getSnapshot$okhttp(): okhttp3.internal.cache.DiskLruCache$Snapshot;
    
    fun source(): okio.BufferedSource;
    
    fun source(): okio.BufferedSource;
}
automaton okhttp3.Cache$CacheResponseBody$1 (val arg0: okhttp3.Cache$CacheResponseBody, val arg1: okio.Source, val arg2: okio.Source) : okhttp3.Cache$CacheResponseBody$1 {
    val this$0: okhttp3.Cache$CacheResponseBody;
    val $source: okio.Source;
    val $source: okio.Source;
    fun close(): void;
}
automaton okhttp3.Cache$Companion : okhttp3.Cache$Companion {
    fun hasVaryAll(arg0: okhttp3.Response): bool;
    
    fun key(arg0: okhttp3.HttpUrl): java.lang.String;
    
    fun readInt$okhttp(arg0: okio.BufferedSource): int {
        assigns arg0;
    }
    
    fun readInt$okhttp(arg0: okio.BufferedSource): int;
    
    fun varyFields(arg0: okhttp3.Headers): java.util.Set;
    
    fun varyHeaders(arg0: okhttp3.Response): okhttp3.Headers;
    
    fun varyHeaders(arg0: okhttp3.Headers, arg1: okhttp3.Headers): okhttp3.Headers;
    
    fun varyMatches(arg0: okhttp3.Response, arg1: okhttp3.Headers, arg2: okhttp3.Request): bool;
}
automaton okhttp3.Cache$Entry (val arg0: okio.Source) : okhttp3.Cache$Entry {
    val `url`: java.lang.String;
    val varyHeaders: okhttp3.Headers;
    val requestMethod: java.lang.String;
    val protocol: okhttp3.Protocol;
    val code: int;
    val message: java.lang.String;
    val responseHeaders: okhttp3.Headers;
    val handshake: okhttp3.Handshake;
    val sentRequestMillis: long;
    val receivedResponseMillis: long;
    val SENT_MILLIS: java.lang.String;
    val RECEIVED_MILLIS: java.lang.String;
    val Companion: okhttp3.Cache$Entry$Companion;
    fun isHttps(): bool;
    
    fun matches(arg0: okhttp3.Request, arg1: okhttp3.Response): bool;
    
    fun readCertificateList(arg0: okio.BufferedSource): java.util.List {
        assigns arg0;
    }
    
    fun readCertificateList(arg0: okio.BufferedSource): java.util.List;
    
    fun response(arg0: okhttp3.internal.cache.DiskLruCache$Snapshot): okhttp3.Response;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns SENT_MILLIS;
        assigns RECEIVED_MILLIS;
    }
    
    fun writeCertList(arg0: okio.BufferedSink, arg1: java.util.List): void {
        assigns arg0;
    }
    
    fun writeCertList(arg0: okio.BufferedSink, arg1: java.util.List): void;
    
    fun writeTo(arg0: okhttp3.internal.cache.DiskLruCache$Editor): void;
}
automaton okhttp3.Cache$Entry$Companion : okhttp3.Cache$Entry$Companion {
}
automaton okhttp3.Cache$RealCacheRequest (val arg0: okhttp3.Cache, val arg1: okhttp3.internal.cache.DiskLruCache$Editor) : okhttp3.Cache$RealCacheRequest {
    val cacheOut: okio.Sink;
    val body: okio.Sink;
    val done: bool;
    val editor: okhttp3.internal.cache.DiskLruCache$Editor;
    val this$0: okhttp3.Cache;
    val cacheOut: okio.Sink;
    val body: okio.Sink;
    fun abort(): void {
        assigns done;
    }
    
    fun access$getEditor$p(arg0: okhttp3.Cache$RealCacheRequest): okhttp3.internal.cache.DiskLruCache$Editor;
    
    fun body(): okio.Sink;
    
    fun body(): okio.Sink;
    
    fun getDone$okhttp(): bool;
    
    fun setDone$okhttp(arg0: bool): void {
        assigns done;
    }
}
automaton okhttp3.Cache$RealCacheRequest$1 (val arg0: okhttp3.Cache$RealCacheRequest, val arg1: okio.Sink) : okhttp3.Cache$RealCacheRequest$1 {
    val this$0: okhttp3.Cache$RealCacheRequest;
    fun close(): void;
}
automaton okhttp3.Cache$urls$1 (val arg0: okhttp3.Cache) : okhttp3.Cache$urls$1 {
    val delegate: java.util.Iterator;
    val nextUrl: java.lang.String;
    val canRemove: bool;
    val this$0: okhttp3.Cache;
    fun getCanRemove(): bool;
    
    fun getDelegate(): java.util.Iterator;
    
    fun getNextUrl(): java.lang.String;
    
    fun hasNext(): bool {
        assigns canRemove;
        assigns nextUrl;
    }
    
    fun next(): java.lang.String {
        assigns nextUrl;
        assigns canRemove;
    }
    
    fun next(): java.lang.Object;
    
    @Throws("java.lang.IllegalStateException", !canRemove)
    fun remove(): void;
    
    fun setCanRemove(arg0: bool): void {
        assigns canRemove;
    }
    
    fun setNextUrl(arg0: java.lang.String): void {
        assigns nextUrl;
    }
}
automaton okhttp3.CacheControl (val arg0: bool, val arg1: bool, val arg2: int, val arg3: int, val arg4: bool, val arg5: bool, val arg6: bool, val arg7: int, val arg8: int, val arg9: bool, val arg10: bool, val arg11: bool, val arg12: java.lang.String) : okhttp3.CacheControl {
    val noCache: bool;
    val noStore: bool;
    val maxAgeSeconds: int;
    val sMaxAgeSeconds: int;
    val isPrivate: bool;
    val isPublic: bool;
    val mustRevalidate: bool;
    val maxStaleSeconds: int;
    val minFreshSeconds: int;
    val onlyIfCached: bool;
    val noTransform: bool;
    val immutable: bool;
    val headerValue: java.lang.String;
    val FORCE_NETWORK: okhttp3.CacheControl;
    val FORCE_CACHE: okhttp3.CacheControl;
    val Companion: okhttp3.CacheControl$Companion;
    fun `-deprecated_immutable`(): bool;
    
    fun `-deprecated_maxAgeSeconds`(): int;
    
    fun `-deprecated_maxStaleSeconds`(): int;
    
    fun `-deprecated_minFreshSeconds`(): int;
    
    fun `-deprecated_mustRevalidate`(): bool;
    
    fun `-deprecated_noCache`(): bool;
    
    fun `-deprecated_noStore`(): bool;
    
    fun `-deprecated_noTransform`(): bool;
    
    fun `-deprecated_onlyIfCached`(): bool;
    
    fun `-deprecated_sMaxAgeSeconds`(): int;
    
    fun immutable(): bool;
    
    fun isPrivate(): bool;
    
    fun isPublic(): bool;
    
    fun maxAgeSeconds(): int;
    
    fun maxStaleSeconds(): int;
    
    fun minFreshSeconds(): int;
    
    fun mustRevalidate(): bool;
    
    fun noCache(): bool;
    
    fun noStore(): bool;
    
    fun noTransform(): bool;
    
    fun onlyIfCached(): bool;
    
    fun parse(arg0: okhttp3.Headers): okhttp3.CacheControl;
    
    fun sMaxAgeSeconds(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns FORCE_NETWORK;
        assigns FORCE_CACHE;
    }
    
    fun toString(): java.lang.String {
        assigns headerValue;
    }
}
automaton okhttp3.CacheControl$Builder : okhttp3.CacheControl$Builder {
    val noCache: bool;
    val noStore: bool;
    val maxAgeSeconds: int;
    val maxStaleSeconds: int;
    val minFreshSeconds: int;
    val onlyIfCached: bool;
    val noTransform: bool;
    val immutable: bool;
    fun build(): okhttp3.CacheControl;
    
    fun clampToInt(arg0: long): int;
    
    fun immutable(): okhttp3.CacheControl$Builder;
    
    fun maxAge(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.CacheControl$Builder;
    
    fun maxStale(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.CacheControl$Builder;
    
    fun minFresh(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.CacheControl$Builder;
    
    fun noCache(): okhttp3.CacheControl$Builder;
    
    fun noStore(): okhttp3.CacheControl$Builder;
    
    fun noTransform(): okhttp3.CacheControl$Builder;
    
    fun onlyIfCached(): okhttp3.CacheControl$Builder;
}
automaton okhttp3.CacheControl$Companion : okhttp3.CacheControl$Companion {
    fun indexOfElement(arg0: java.lang.String, arg1: java.lang.String, arg2: int): int;
    
    fun indexOfElement$default(arg0: okhttp3.CacheControl$Companion, arg1: java.lang.String, arg2: java.lang.String, arg3: int, arg4: int, arg5: java.lang.Object): int;
    
    fun parse(arg0: okhttp3.Headers): okhttp3.CacheControl;
}
automaton okhttp3.internal.cache.CacheInterceptor (val arg0: okhttp3.Cache) : okhttp3.internal.cache.CacheInterceptor {
    val cache: okhttp3.Cache;
    val Companion: okhttp3.internal.cache.CacheInterceptor$Companion;
    fun cacheWritingResponse(arg0: okhttp3.internal.cache.CacheRequest, arg1: okhttp3.Response): okhttp3.Response;
    
    fun getCache$okhttp(): okhttp3.Cache;
    
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response {
        assigns arg0;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.cache.CacheInterceptor$Companion : okhttp3.internal.cache.CacheInterceptor$Companion {
    fun access$combine(arg0: okhttp3.internal.cache.CacheInterceptor$Companion, arg1: okhttp3.Headers, arg2: okhttp3.Headers): okhttp3.Headers;
    
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & message != "'null-const'" & protocol != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & body != "'null-const'" & arg1 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & message != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & message != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & body != "'null-const'" & arg1 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & protocol != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & protocol != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & message != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & protocol != "'null-const'" & body != "'null-const'" & arg1 != "'null-const'")
    @Throws("kotlin.TypeCastException", body != "'null-const'" & message != "'null-const'" & protocol != "'null-const'" & request != "'null-const'" & arg1 != "'null-const'")
    fun access$stripBody(arg0: okhttp3.internal.cache.CacheInterceptor$Companion, arg1: okhttp3.Response): okhttp3.Response;
    
    fun combine(arg0: okhttp3.Headers, arg1: okhttp3.Headers): okhttp3.Headers;
    
    fun isContentSpecificHeader(arg0: java.lang.String): bool;
    
    fun isEndToEnd(arg0: java.lang.String): bool;
    
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & message != "'null-const'" & body != "'null-const'" & protocol != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & body != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & body != "'null-const'" & arg0 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & message != "'null-const'" & body != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & message != "'null-const'" & body != "'null-const'" & arg0 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & body != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & body != "'null-const'" & arg0 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & body != "'null-const'" & protocol != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & body != "'null-const'" & protocol != "'null-const'" & arg0 != "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & message != "'null-const'" & body != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & body != "'null-const'" & arg0 != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & body != "'null-const'" & protocol != "'null-const'" & arg0 != "'null-const'")
    @Throws("kotlin.TypeCastException", message != "'null-const'" & protocol != "'null-const'" & request != "'null-const'" & arg0 != "'null-const'" & body != "'null-const'")
    fun stripBody(arg0: okhttp3.Response): okhttp3.Response;
}
automaton okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 (val arg0: okio.BufferedSource, val arg1: okhttp3.internal.cache.CacheRequest, val arg2: okio.BufferedSink) : okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 {
    val cacheRequestClosed: bool;
    val $source: okio.BufferedSource;
    val $cacheRequest: okhttp3.internal.cache.CacheRequest;
    val $cacheBody: okio.BufferedSink;
    val $source: okio.BufferedSource;
    val $cacheBody: okio.BufferedSink;
    fun close(): void {
        assigns cacheRequestClosed;
    }
    
    fun getCacheRequestClosed(): bool;
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns cacheRequestClosed;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun setCacheRequestClosed(arg0: bool): void {
        assigns cacheRequestClosed;
    }
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
}
automaton okhttp3.internal.cache.CacheRequest : okhttp3.internal.cache.CacheRequest {
    fun abort(): void;
    
    fun body(): okio.Sink;
    
    fun body(): okio.Sink;
}
automaton okhttp3.internal.cache.CacheStrategy (val arg0: okhttp3.Request, val arg1: okhttp3.Response) : okhttp3.internal.cache.CacheStrategy {
    val networkRequest: okhttp3.Request;
    val cacheResponse: okhttp3.Response;
    val Companion: okhttp3.internal.cache.CacheStrategy$Companion;
    fun getCacheResponse(): okhttp3.Response;
    
    fun getNetworkRequest(): okhttp3.Request;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.cache.CacheStrategy$Companion : okhttp3.internal.cache.CacheStrategy$Companion {
    fun isCacheable(arg0: okhttp3.Response, arg1: okhttp3.Request): bool {
        assigns arg0.lazyCacheControl;
        assigns arg1.lazyCacheControl;
    }
}
automaton okhttp3.internal.cache.CacheStrategy$Factory (val arg0: long, val arg1: okhttp3.Request, val arg2: okhttp3.Response) : okhttp3.internal.cache.CacheStrategy$Factory {
    val servedDate: java.util.Date;
    val servedDateString: java.lang.String;
    val lastModified: java.util.Date;
    val lastModifiedString: java.lang.String;
    val expires: java.util.Date;
    val sentRequestMillis: long;
    val receivedResponseMillis: long;
    val etag: java.lang.String;
    val ageSeconds: int;
    val nowMillis: long;
    val request: okhttp3.Request;
    val cacheResponse: okhttp3.Response;
    fun cacheResponseAge(): long;
    
    fun compute(): okhttp3.internal.cache.CacheStrategy;
    
    fun computeCandidate(): okhttp3.internal.cache.CacheStrategy;
    
    fun computeFreshnessLifetime(): long;
    
    fun getRequest$okhttp(): okhttp3.Request;
    
    fun hasConditions(arg0: okhttp3.Request): bool;
    
    fun isFreshnessLifetimeHeuristic(): bool;
}
automaton okhttp3.Call : okhttp3.Call {
    fun cancel(): void;
    
    fun clone(): okhttp3.Call;
    
    fun enqueue(arg0: okhttp3.Callback): void;
    
    fun execute(): okhttp3.Response;
    
    fun isCanceled(): bool;
    
    fun isExecuted(): bool;
    
    fun request(): okhttp3.Request;
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
}
automaton okhttp3.Call$Factory : okhttp3.Call$Factory {
    fun newCall(arg0: okhttp3.Request): okhttp3.Call;
}
automaton okhttp3.internal.http.CallServerInterceptor (val arg0: bool) : okhttp3.internal.http.CallServerInterceptor {
    val forWebSocket: bool;
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
}
automaton okhttp3.Callback : okhttp3.Callback {
    fun onFailure(arg0: okhttp3.Call, arg1: java.io.IOException): void;
    
    fun onResponse(arg0: okhttp3.Call, arg1: okhttp3.Response): void;
}
automaton okhttp3.internal.tls.CertificateChainCleaner : okhttp3.internal.tls.CertificateChainCleaner {
    val Companion: okhttp3.internal.tls.CertificateChainCleaner$Companion;
    fun clean(arg0: java.util.List, arg1: java.lang.String): java.util.List;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.tls.CertificateChainCleaner$Companion : okhttp3.internal.tls.CertificateChainCleaner$Companion {
    fun get(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun get(arg0: array): okhttp3.internal.tls.CertificateChainCleaner;
}
automaton okhttp3.CertificatePinner (val arg0: java.util.Set, val arg1: okhttp3.internal.tls.CertificateChainCleaner) : okhttp3.CertificatePinner {
    val pins: java.util.Set;
    val certificateChainCleaner: okhttp3.internal.tls.CertificateChainCleaner;
    val DEFAULT: okhttp3.CertificatePinner;
    val Companion: okhttp3.CertificatePinner$Companion;
    fun check(arg0: java.lang.String, arg1: java.util.List): void;
    
    fun check(arg0: java.lang.String, arg1: array): void;
    
    fun check$okhttp(arg0: java.lang.String, arg1: kotlin.jvm.functions.Function0): void;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun findMatchingPins(arg0: java.lang.String): java.util.List;
    
    fun getCertificateChainCleaner$okhttp(): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun getPins(): java.util.Set;
    
    fun hashCode(): int;
    
    fun pin(arg0: java.security.cert.Certificate): java.lang.String;
    
    fun sha1Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun sha1Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun sha256Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun sha256Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns DEFAULT;
    }
    
    fun withCertificateChainCleaner$okhttp(arg0: okhttp3.internal.tls.CertificateChainCleaner): okhttp3.CertificatePinner;
}
automaton okhttp3.CertificatePinner$Builder : okhttp3.CertificatePinner$Builder {
    val pins: java.util.List;
    fun add(arg0: java.lang.String, arg1: array): okhttp3.CertificatePinner$Builder;
    
    fun build(): okhttp3.CertificatePinner;
    
    fun getPins(): java.util.List;
}
automaton okhttp3.CertificatePinner$Companion : okhttp3.CertificatePinner$Companion {
    fun pin(arg0: java.security.cert.Certificate): java.lang.String;
    
    fun sha1Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun sha1Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun sha256Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
    
    fun sha256Hash(arg0: java.security.cert.X509Certificate): okio.ByteString;
}
automaton okhttp3.CertificatePinner$Pin (val arg0: java.lang.String, val arg1: java.lang.String) : okhttp3.CertificatePinner$Pin {
    val pattern: java.lang.String;
    val hashAlgorithm: java.lang.String;
    val hash: okio.ByteString;
    val hash: okio.ByteString;
    fun equals(arg0: java.lang.Object): bool;
    
    fun getHash(): okio.ByteString;
    
    fun getHash(): okio.ByteString;
    
    fun getHashAlgorithm(): java.lang.String;
    
    fun getPattern(): java.lang.String;
    
    fun hashCode(): int;
    
    fun matchesCertificate(arg0: java.security.cert.X509Certificate): bool;
    
    fun matchesHostname(arg0: java.lang.String): bool;
    
    fun toString(): java.lang.String;
}
automaton okhttp3.CertificatePinner$check$1 (val arg0: okhttp3.CertificatePinner, val arg1: java.util.List, val arg2: java.lang.String) : okhttp3.CertificatePinner$check$1 {
    val this$0: okhttp3.CertificatePinner;
    val $peerCertificates: java.util.List;
    val $hostname: java.lang.String;
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.Challenge (val arg0: java.lang.String, val arg1: java.util.Map) : okhttp3.Challenge {
    val authParams: java.util.Map;
    val scheme: java.lang.String;
    fun `-deprecated_authParams`(): java.util.Map;
    
    fun `-deprecated_charset`(): java.nio.charset.Charset;
    
    fun `-deprecated_realm`(): java.lang.String;
    
    fun `-deprecated_scheme`(): java.lang.String;
    
    fun authParams(): java.util.Map;
    
    fun charset(): java.nio.charset.Charset;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun realm(): java.lang.String;
    
    fun scheme(): java.lang.String;
    
    fun toString(): java.lang.String;
    
    fun withCharset(arg0: java.nio.charset.Charset): okhttp3.Challenge;
}
automaton okhttp3.CipherSuite (val arg0: java.lang.String) : okhttp3.CipherSuite {
    val javaName: java.lang.String;
    val ORDER_BY_NAME: java.util.Comparator;
    val INSTANCES: java.util.Map;
    val TLS_RSA_WITH_NULL_MD5: okhttp3.CipherSuite;
    val TLS_RSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    val TLS_RSA_EXPORT_WITH_RC4_40_MD5: okhttp3.CipherSuite;
    val TLS_RSA_WITH_RC4_128_MD5: okhttp3.CipherSuite;
    val TLS_RSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_RSA_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    val TLS_RSA_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    val TLS_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DH_anon_EXPORT_WITH_RC4_40_MD5: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_RC4_128_MD5: okhttp3.CipherSuite;
    val TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_KRB5_WITH_DES_CBC_SHA: okhttp3.CipherSuite;
    val TLS_KRB5_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_KRB5_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_KRB5_WITH_DES_CBC_MD5: okhttp3.CipherSuite;
    val TLS_KRB5_WITH_3DES_EDE_CBC_MD5: okhttp3.CipherSuite;
    val TLS_KRB5_WITH_RC4_128_MD5: okhttp3.CipherSuite;
    val TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA: okhttp3.CipherSuite;
    val TLS_KRB5_EXPORT_WITH_RC4_40_SHA: okhttp3.CipherSuite;
    val TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5: okhttp3.CipherSuite;
    val TLS_KRB5_EXPORT_WITH_RC4_40_MD5: okhttp3.CipherSuite;
    val TLS_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_RSA_WITH_NULL_SHA256: okhttp3.CipherSuite;
    val TLS_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_RSA_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_RSA_WITH_CAMELLIA_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_AES_256_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_RSA_WITH_CAMELLIA_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_PSK_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_PSK_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_PSK_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_PSK_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_RSA_WITH_SEED_CBC_SHA: okhttp3.CipherSuite;
    val TLS_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_DHE_DSS_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_DH_anon_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_EMPTY_RENEGOTIATION_INFO_SCSV: okhttp3.CipherSuite;
    val TLS_FALLBACK_SCSV: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_NULL_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_anon_WITH_NULL_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_anon_WITH_RC4_128_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_anon_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDH_anon_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA: okhttp3.CipherSuite;
    val TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    val TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    val TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    val TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    val TLS_AES_128_GCM_SHA256: okhttp3.CipherSuite;
    val TLS_AES_256_GCM_SHA384: okhttp3.CipherSuite;
    val TLS_CHACHA20_POLY1305_SHA256: okhttp3.CipherSuite;
    val TLS_AES_128_CCM_SHA256: okhttp3.CipherSuite;
    val TLS_AES_128_CCM_8_SHA256: okhttp3.CipherSuite;
    val Companion: okhttp3.CipherSuite$Companion;
    fun `-deprecated_javaName`(): java.lang.String;
    
    fun access$getINSTANCES$cp(): java.util.Map;
    
    fun access$getORDER_BY_NAME$cp(): java.util.Comparator;
    
    fun forJavaName(arg0: java.lang.String): okhttp3.CipherSuite;
    
    fun javaName(): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns TLS_RSA_WITH_NULL_MD5;
        assigns TLS_RSA_WITH_NULL_SHA;
        assigns TLS_RSA_EXPORT_WITH_RC4_40_MD5;
        assigns TLS_RSA_WITH_RC4_128_MD5;
        assigns TLS_RSA_WITH_RC4_128_SHA;
        assigns TLS_RSA_EXPORT_WITH_DES40_CBC_SHA;
        assigns TLS_RSA_WITH_DES_CBC_SHA;
        assigns TLS_RSA_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA;
        assigns TLS_DHE_DSS_WITH_DES_CBC_SHA;
        assigns TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_DES_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_DH_anon_EXPORT_WITH_RC4_40_MD5;
        assigns TLS_DH_anon_WITH_RC4_128_MD5;
        assigns TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA;
        assigns TLS_DH_anon_WITH_DES_CBC_SHA;
        assigns TLS_DH_anon_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_KRB5_WITH_DES_CBC_SHA;
        assigns TLS_KRB5_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_KRB5_WITH_RC4_128_SHA;
        assigns TLS_KRB5_WITH_DES_CBC_MD5;
        assigns TLS_KRB5_WITH_3DES_EDE_CBC_MD5;
        assigns TLS_KRB5_WITH_RC4_128_MD5;
        assigns TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA;
        assigns TLS_KRB5_EXPORT_WITH_RC4_40_SHA;
        assigns TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5;
        assigns TLS_KRB5_EXPORT_WITH_RC4_40_MD5;
        assigns TLS_RSA_WITH_AES_128_CBC_SHA;
        assigns TLS_DHE_DSS_WITH_AES_128_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_AES_128_CBC_SHA;
        assigns TLS_DH_anon_WITH_AES_128_CBC_SHA;
        assigns TLS_RSA_WITH_AES_256_CBC_SHA;
        assigns TLS_DHE_DSS_WITH_AES_256_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_AES_256_CBC_SHA;
        assigns TLS_DH_anon_WITH_AES_256_CBC_SHA;
        assigns TLS_RSA_WITH_NULL_SHA256;
        assigns TLS_RSA_WITH_AES_128_CBC_SHA256;
        assigns TLS_RSA_WITH_AES_256_CBC_SHA256;
        assigns TLS_DHE_DSS_WITH_AES_128_CBC_SHA256;
        assigns TLS_RSA_WITH_CAMELLIA_128_CBC_SHA;
        assigns TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_AES_128_CBC_SHA256;
        assigns TLS_DHE_DSS_WITH_AES_256_CBC_SHA256;
        assigns TLS_DHE_RSA_WITH_AES_256_CBC_SHA256;
        assigns TLS_DH_anon_WITH_AES_128_CBC_SHA256;
        assigns TLS_DH_anon_WITH_AES_256_CBC_SHA256;
        assigns TLS_RSA_WITH_CAMELLIA_256_CBC_SHA;
        assigns TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA;
        assigns TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA;
        assigns TLS_PSK_WITH_RC4_128_SHA;
        assigns TLS_PSK_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_PSK_WITH_AES_128_CBC_SHA;
        assigns TLS_PSK_WITH_AES_256_CBC_SHA;
        assigns TLS_RSA_WITH_SEED_CBC_SHA;
        assigns TLS_RSA_WITH_AES_128_GCM_SHA256;
        assigns TLS_RSA_WITH_AES_256_GCM_SHA384;
        assigns TLS_DHE_RSA_WITH_AES_128_GCM_SHA256;
        assigns TLS_DHE_RSA_WITH_AES_256_GCM_SHA384;
        assigns TLS_DHE_DSS_WITH_AES_128_GCM_SHA256;
        assigns TLS_DHE_DSS_WITH_AES_256_GCM_SHA384;
        assigns TLS_DH_anon_WITH_AES_128_GCM_SHA256;
        assigns TLS_DH_anon_WITH_AES_256_GCM_SHA384;
        assigns TLS_EMPTY_RENEGOTIATION_INFO_SCSV;
        assigns TLS_FALLBACK_SCSV;
        assigns TLS_ECDH_ECDSA_WITH_NULL_SHA;
        assigns TLS_ECDH_ECDSA_WITH_RC4_128_SHA;
        assigns TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA;
        assigns TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA;
        assigns TLS_ECDHE_ECDSA_WITH_NULL_SHA;
        assigns TLS_ECDHE_ECDSA_WITH_RC4_128_SHA;
        assigns TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA;
        assigns TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA;
        assigns TLS_ECDH_RSA_WITH_NULL_SHA;
        assigns TLS_ECDH_RSA_WITH_RC4_128_SHA;
        assigns TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_ECDH_RSA_WITH_AES_128_CBC_SHA;
        assigns TLS_ECDH_RSA_WITH_AES_256_CBC_SHA;
        assigns TLS_ECDHE_RSA_WITH_NULL_SHA;
        assigns TLS_ECDHE_RSA_WITH_RC4_128_SHA;
        assigns TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA;
        assigns TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA;
        assigns TLS_ECDH_anon_WITH_NULL_SHA;
        assigns TLS_ECDH_anon_WITH_RC4_128_SHA;
        assigns TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA;
        assigns TLS_ECDH_anon_WITH_AES_128_CBC_SHA;
        assigns TLS_ECDH_anon_WITH_AES_256_CBC_SHA;
        assigns TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256;
        assigns TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384;
        assigns TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256;
        assigns TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384;
        assigns TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256;
        assigns TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384;
        assigns TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256;
        assigns TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384;
        assigns TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
        assigns TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384;
        assigns TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256;
        assigns TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384;
        assigns TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
        assigns TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384;
        assigns TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256;
        assigns TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384;
        assigns TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA;
        assigns TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA;
        assigns TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256;
        assigns TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256;
        assigns TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256;
        assigns TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256;
        assigns TLS_AES_128_GCM_SHA256;
        assigns TLS_AES_256_GCM_SHA384;
        assigns TLS_CHACHA20_POLY1305_SHA256;
        assigns TLS_AES_128_CCM_SHA256;
        assigns TLS_AES_128_CCM_8_SHA256;
    }
    
    fun toString(): java.lang.String;
}
automaton okhttp3.CipherSuite$Companion : okhttp3.CipherSuite$Companion {
    fun access$init(arg0: okhttp3.CipherSuite$Companion, arg1: java.lang.String, arg2: int): okhttp3.CipherSuite;
    
    fun forJavaName(arg0: java.lang.String): okhttp3.CipherSuite;
    
    fun getORDER_BY_NAME$okhttp(): java.util.Comparator;
    
    fun init(arg0: java.lang.String, arg1: int): okhttp3.CipherSuite;
    
    fun secondaryName(arg0: java.lang.String): java.lang.String;
}
automaton okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1 : okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1 {
    fun compare(arg0: java.lang.String, arg1: java.lang.String): int;
    
    fun compare(arg0: java.lang.Object, arg1: java.lang.Object): int;
}
automaton okhttp3.internal.platform.android.CloseGuard (val arg0: java.lang.reflect.Method, val arg1: java.lang.reflect.Method, val arg2: java.lang.reflect.Method) : okhttp3.internal.platform.android.CloseGuard {
    val getMethod: java.lang.reflect.Method;
    val openMethod: java.lang.reflect.Method;
    val warnIfOpenMethod: java.lang.reflect.Method;
    val Companion: okhttp3.internal.platform.android.CloseGuard$Companion;
    fun createAndOpen(arg0: java.lang.String): java.lang.Object;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun warnIfOpen(arg0: java.lang.Object): bool;
}
automaton okhttp3.internal.platform.android.CloseGuard$Companion : okhttp3.internal.platform.android.CloseGuard$Companion {
    fun get(): okhttp3.internal.platform.android.CloseGuard;
}
automaton okhttp3.internal.connection.ConnectInterceptor : okhttp3.internal.connection.ConnectInterceptor {
    val INSTANCE: okhttp3.internal.connection.ConnectInterceptor;
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.Connection : okhttp3.Connection {
    fun handshake(): okhttp3.Handshake;
    
    fun protocol(): okhttp3.Protocol;
    
    fun route(): okhttp3.Route;
    
    fun socket(): java.net.Socket;
}
automaton okhttp3.ConnectionPool (val arg0: okhttp3.internal.connection.RealConnectionPool) : okhttp3.ConnectionPool {
    val delegate: okhttp3.internal.connection.RealConnectionPool;
    fun connectionCount(): int;
    
    fun evictAll(): void;
    
    fun getDelegate$okhttp(): okhttp3.internal.connection.RealConnectionPool;
    
    fun idleConnectionCount(): int;
}
automaton okhttp3.internal.http2.ConnectionShutdownException : okhttp3.internal.http2.ConnectionShutdownException {
}
automaton okhttp3.ConnectionSpec (val arg0: bool, val arg1: bool, val arg2: array<java.lang.String>, val arg3: array<java.lang.String>) : okhttp3.ConnectionSpec {
    val isTls: bool;
    val supportsTlsExtensions: bool;
    val cipherSuitesAsString: array<java.lang.String>;
    val tlsVersionsAsString: array<java.lang.String>;
    val RESTRICTED_CIPHER_SUITES: array<okhttp3.CipherSuite>;
    val APPROVED_CIPHER_SUITES: array<okhttp3.CipherSuite>;
    val RESTRICTED_TLS: okhttp3.ConnectionSpec;
    val MODERN_TLS: okhttp3.ConnectionSpec;
    val COMPATIBLE_TLS: okhttp3.ConnectionSpec;
    val CLEARTEXT: okhttp3.ConnectionSpec;
    val Companion: okhttp3.ConnectionSpec$Companion;
    fun `-deprecated_cipherSuites`(): java.util.List;
    
    fun `-deprecated_supportsTlsExtensions`(): bool;
    
    fun `-deprecated_tlsVersions`(): java.util.List;
    
    fun access$getCipherSuitesAsString$p(arg0: okhttp3.ConnectionSpec): array<java.lang.String>;
    
    fun access$getTlsVersionsAsString$p(arg0: okhttp3.ConnectionSpec): array<java.lang.String>;
    
    @Throws("kotlin.TypeCastException", cipherSuitesAsString != "'null-const'")
    @Throws("kotlin.TypeCastException", tlsVersionsAsString != "'null-const'")
    fun apply$okhttp(arg0: javax.net.ssl.SSLSocket, arg1: bool): void;
    
    fun cipherSuites(): java.util.List;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun isCompatible(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun isTls(): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns RESTRICTED_CIPHER_SUITES;
        assigns APPROVED_CIPHER_SUITES;
        assigns RESTRICTED_TLS;
        assigns MODERN_TLS;
        assigns COMPATIBLE_TLS;
        assigns CLEARTEXT;
    }
    
    @Throws("kotlin.TypeCastException", cipherSuitesAsString != "'null-const'")
    @Throws("kotlin.TypeCastException", tlsVersionsAsString != "'null-const'")
    fun supportedSpec(arg0: javax.net.ssl.SSLSocket, arg1: bool): okhttp3.ConnectionSpec;
    
    fun supportsTlsExtensions(): bool;
    
    fun tlsVersions(): java.util.List;
    
    fun toString(): java.lang.String;
}
automaton okhttp3.ConnectionSpec$Builder (val arg0: bool) : okhttp3.ConnectionSpec$Builder {
    val tls: bool;
    val cipherSuites: array<java.lang.String>;
    val tlsVersions: array<java.lang.String>;
    val supportsTlsExtensions: bool;
    @Throws("java.lang.IllegalArgumentException", !tls)
    fun allEnabledCipherSuites(): okhttp3.ConnectionSpec$Builder;
    
    @Throws("java.lang.IllegalArgumentException", !tls)
    fun allEnabledTlsVersions(): okhttp3.ConnectionSpec$Builder;
    
    fun build(): okhttp3.ConnectionSpec;
    
    @Throws("java.lang.IllegalArgumentException", !tls)
    @Throws("kotlin.TypeCastException", tls)
    @Throws("java.lang.IllegalArgumentException", !tls)
    fun cipherSuites(arg0: array): okhttp3.ConnectionSpec$Builder;
    
    fun cipherSuites(arg0: array): okhttp3.ConnectionSpec$Builder;
    
    fun getCipherSuites$okhttp(): array<java.lang.String>;
    
    fun getSupportsTlsExtensions$okhttp(): bool;
    
    fun getTls$okhttp(): bool;
    
    fun getTlsVersions$okhttp(): array<java.lang.String>;
    
    fun setCipherSuites$okhttp(arg0: array): void {
        assigns cipherSuites;
    }
    
    fun setSupportsTlsExtensions$okhttp(arg0: bool): void {
        assigns supportsTlsExtensions;
    }
    
    fun setTls$okhttp(arg0: bool): void {
        assigns tls;
    }
    
    fun setTlsVersions$okhttp(arg0: array): void {
        assigns tlsVersions;
    }
    
    @Throws("java.lang.IllegalArgumentException", !tls)
    fun supportsTlsExtensions(arg0: bool): okhttp3.ConnectionSpec$Builder;
    
    @Throws("java.lang.IllegalArgumentException", !tls)
    @Throws("kotlin.TypeCastException", tls)
    @Throws("java.lang.IllegalArgumentException", !tls)
    fun tlsVersions(arg0: array): okhttp3.ConnectionSpec$Builder;
    
    fun tlsVersions(arg0: array): okhttp3.ConnectionSpec$Builder;
}
automaton okhttp3.ConnectionSpec$Companion : okhttp3.ConnectionSpec$Companion {
}
automaton okhttp3.internal.connection.ConnectionSpecSelector (val arg0: java.util.List) : okhttp3.internal.connection.ConnectionSpecSelector {
    val nextModeIndex: int;
    val isFallbackPossible: bool;
    val isFallback: bool;
    val connectionSpecs: java.util.List;
    fun configureSecureSocket(arg0: javax.net.ssl.SSLSocket): okhttp3.ConnectionSpec {
        assigns nextModeIndex;
        assigns isFallbackPossible;
    }
    
    fun connectionFailed(arg0: java.io.IOException): bool {
        assigns isFallback;
    }
    
    fun isFallbackPossible(arg0: javax.net.ssl.SSLSocket): bool;
}
automaton okhttp3.internal.platform.ConscryptPlatform : okhttp3.internal.platform.ConscryptPlatform {
    val provider: java.security.Provider;
    val isSupported: bool;
    val Companion: okhttp3.internal.platform.ConscryptPlatform$Companion;
    fun access$isSupported$cp(): bool;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun newSSLContext(): javax.net.ssl.SSLContext;
    
    fun newSslSocketFactory(arg0: javax.net.ssl.X509TrustManager): javax.net.ssl.SSLSocketFactory;
    
    fun platformTrustManager(): javax.net.ssl.X509TrustManager;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns isSupported;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.ConscryptPlatform$Companion : okhttp3.internal.platform.ConscryptPlatform$Companion {
    fun atLeastVersion(arg0: int, arg1: int, arg2: int): bool;
    
    fun atLeastVersion$default(arg0: okhttp3.internal.platform.ConscryptPlatform$Companion, arg1: int, arg2: int, arg3: int, arg4: int, arg5: java.lang.Object): bool;
    
    fun buildIfSupported(): okhttp3.internal.platform.ConscryptPlatform;
    
    fun isSupported(): bool;
}
automaton okhttp3.internal.platform.ConscryptPlatform$platformTrustManager$2 : okhttp3.internal.platform.ConscryptPlatform$platformTrustManager$2 {
    val INSTANCE: okhttp3.internal.platform.ConscryptPlatform$platformTrustManager$2;
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
    
    fun verify(arg0: java.lang.String, arg1: javax.net.ssl.SSLSession): bool;
}
automaton okhttp3.internal.platform.android.ConscryptSocketAdapter : okhttp3.internal.platform.android.ConscryptSocketAdapter {
    val Companion: okhttp3.internal.platform.android.ConscryptSocketAdapter$Companion;
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun isSupported(): bool;
    
    fun matchesSocket(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.android.ConscryptSocketAdapter$Companion : okhttp3.internal.platform.android.ConscryptSocketAdapter$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.android.SocketAdapter;
}
automaton okhttp3.Cookie (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: long, val arg3: java.lang.String, val arg4: java.lang.String, val arg5: bool, val arg6: bool, val arg7: bool, val arg8: bool) : okhttp3.Cookie {
    val name: java.lang.String;
    val value: java.lang.String;
    val expiresAt: long;
    val domain: java.lang.String;
    val path: java.lang.String;
    val secure: bool;
    val httpOnly: bool;
    val persistent: bool;
    val hostOnly: bool;
    val YEAR_PATTERN: java.util.regex.Pattern;
    val MONTH_PATTERN: java.util.regex.Pattern;
    val DAY_OF_MONTH_PATTERN: java.util.regex.Pattern;
    val TIME_PATTERN: java.util.regex.Pattern;
    val Companion: okhttp3.Cookie$Companion;
    fun `-deprecated_domain`(): java.lang.String;
    
    fun `-deprecated_expiresAt`(): long;
    
    fun `-deprecated_hostOnly`(): bool;
    
    fun `-deprecated_httpOnly`(): bool;
    
    fun `-deprecated_name`(): java.lang.String;
    
    fun `-deprecated_path`(): java.lang.String;
    
    fun `-deprecated_persistent`(): bool;
    
    fun `-deprecated_secure`(): bool;
    
    fun `-deprecated_value`(): java.lang.String;
    
    fun access$getDAY_OF_MONTH_PATTERN$cp(): java.util.regex.Pattern;
    
    fun access$getMONTH_PATTERN$cp(): java.util.regex.Pattern;
    
    fun access$getTIME_PATTERN$cp(): java.util.regex.Pattern;
    
    fun access$getYEAR_PATTERN$cp(): java.util.regex.Pattern;
    
    fun domain(): java.lang.String;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun expiresAt(): long;
    
    fun hashCode(): int;
    
    fun hostOnly(): bool;
    
    fun httpOnly(): bool;
    
    fun matches(arg0: okhttp3.HttpUrl): bool;
    
    fun name(): java.lang.String;
    
    fun parse(arg0: okhttp3.HttpUrl, arg1: java.lang.String): okhttp3.Cookie;
    
    fun parseAll(arg0: okhttp3.HttpUrl, arg1: okhttp3.Headers): java.util.List;
    
    fun path(): java.lang.String;
    
    fun persistent(): bool;
    
    fun secure(): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns YEAR_PATTERN;
        assigns MONTH_PATTERN;
        assigns DAY_OF_MONTH_PATTERN;
        assigns TIME_PATTERN;
    }
    
    fun toString(): java.lang.String;
    
    fun toString$okhttp(arg0: bool): java.lang.String;
    
    fun value(): java.lang.String;
}
automaton okhttp3.Cookie$Builder : okhttp3.Cookie$Builder {
    val name: java.lang.String;
    val value: java.lang.String;
    val expiresAt: long;
    val domain: java.lang.String;
    val path: java.lang.String;
    val secure: bool;
    val httpOnly: bool;
    val persistent: bool;
    val hostOnly: bool;
    @Throws("java.lang.NullPointerException", domain == "'null-const'")
    @Throws("java.lang.NullPointerException", value == "'null-const'")
    @Throws("java.lang.NullPointerException", name == "'null-const'")
    @Throws("java.lang.NullPointerException", value == "'null-const'" & name != "'null-const'")
    @Throws("java.lang.NullPointerException", value == "'null-const'" & name != "'null-const'" & domain != "'null-const'")
    @Throws("java.lang.NullPointerException", domain == "'null-const'" & value != "'null-const'")
    @Throws("java.lang.NullPointerException", domain == "'null-const'" & name != "'null-const'")
    @Throws("java.lang.NullPointerException", domain == "'null-const'" & name != "'null-const'" & value != "'null-const'")
    @Throws("java.lang.NullPointerException", name == "'null-const'" & value != "'null-const'" & domain != "'null-const'")
    @Throws("java.lang.NullPointerException", name == "'null-const'" & domain != "'null-const'")
    @Throws("java.lang.NullPointerException", name == "'null-const'" & value != "'null-const'")
    @Throws("java.lang.NullPointerException", value == "'null-const'" & domain != "'null-const'")
    fun build(): okhttp3.Cookie;
    
    fun domain(arg0: java.lang.String): okhttp3.Cookie$Builder;
    
    fun domain(arg0: java.lang.String, arg1: bool): okhttp3.Cookie$Builder;
    
    fun expiresAt(arg0: long): okhttp3.Cookie$Builder;
    
    fun hostOnlyDomain(arg0: java.lang.String): okhttp3.Cookie$Builder;
    
    fun httpOnly(): okhttp3.Cookie$Builder;
    
    fun name(arg0: java.lang.String): okhttp3.Cookie$Builder;
    
    fun path(arg0: java.lang.String): okhttp3.Cookie$Builder;
    
    fun secure(): okhttp3.Cookie$Builder;
    
    fun value(arg0: java.lang.String): okhttp3.Cookie$Builder;
}
automaton okhttp3.Cookie$Companion : okhttp3.Cookie$Companion {
    fun access$domainMatch(arg0: okhttp3.Cookie$Companion, arg1: java.lang.String, arg2: java.lang.String): bool;
    
    fun access$pathMatch(arg0: okhttp3.Cookie$Companion, arg1: okhttp3.HttpUrl, arg2: java.lang.String): bool;
    
    fun dateCharacterOffset(arg0: java.lang.String, arg1: int, arg2: int, arg3: bool): int;
    
    fun domainMatch(arg0: java.lang.String, arg1: java.lang.String): bool;
    
    fun parse(arg0: okhttp3.HttpUrl, arg1: java.lang.String): okhttp3.Cookie;
    
    fun parse$okhttp(arg0: long, arg1: okhttp3.HttpUrl, arg2: java.lang.String): okhttp3.Cookie;
    
    fun parseAll(arg0: okhttp3.HttpUrl, arg1: okhttp3.Headers): java.util.List;
    
    fun parseDomain(arg0: java.lang.String): java.lang.String;
    
    fun parseExpires(arg0: java.lang.String, arg1: int, arg2: int): long;
    
    fun parseMaxAge(arg0: java.lang.String): long;
    
    fun pathMatch(arg0: okhttp3.HttpUrl, arg1: java.lang.String): bool;
}
automaton okhttp3.CookieJar : okhttp3.CookieJar {
    val NO_COOKIES: okhttp3.CookieJar;
    val Companion: okhttp3.CookieJar$Companion;
    fun loadForRequest(arg0: okhttp3.HttpUrl): java.util.List;
    
    fun saveFromResponse(arg0: okhttp3.HttpUrl, arg1: java.util.List): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.CookieJar$Companion : okhttp3.CookieJar$Companion {
    val $$INSTANCE: okhttp3.CookieJar$Companion;
}
automaton okhttp3.CookieJar$Companion$NoCookies : okhttp3.CookieJar$Companion$NoCookies {
    fun loadForRequest(arg0: okhttp3.HttpUrl): java.util.List;
    
    fun saveFromResponse(arg0: okhttp3.HttpUrl, arg1: java.util.List): void;
}
automaton okhttp3.Credentials : okhttp3.Credentials {
    val INSTANCE: okhttp3.Credentials;
    fun basic(arg0: java.lang.String, arg1: java.lang.String, arg2: java.nio.charset.Charset): java.lang.String;
    
    fun basic(arg0: java.lang.String, arg1: java.lang.String): java.lang.String;
    
    fun basic$default(arg0: java.lang.String, arg1: java.lang.String, arg2: java.nio.charset.Charset, arg3: int, arg4: java.lang.Object): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.internal.http.DatesKt : okhttp3.internal.http.DatesKt {
    val MAX_DATE: long;
    val STANDARD_DATE_FORMAT: okhttp3.internal.http.DatesKt$STANDARD_DATE_FORMAT$1;
    val BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS: array<java.lang.String>;
    val BROWSER_COMPATIBLE_DATE_FORMATS: array<java.text.DateFormat>;
    fun `static-constructor`(): void {
        assigns STANDARD_DATE_FORMAT;
        assigns BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS;
        assigns BROWSER_COMPATIBLE_DATE_FORMATS;
    }
    
    fun toHttpDateOrNull(arg0: java.lang.String): java.util.Date;
    
    fun toHttpDateString(arg0: java.util.Date): java.lang.String;
}
automaton okhttp3.internal.http.DatesKt$STANDARD_DATE_FORMAT$1 : okhttp3.internal.http.DatesKt$STANDARD_DATE_FORMAT$1 {
    fun initialValue(): java.text.DateFormat;
    
    fun initialValue(): java.lang.Object;
}
automaton okhttp3.internal.platform.android.DeferredSocketAdapter (val arg0: java.lang.String) : okhttp3.internal.platform.android.DeferredSocketAdapter {
    val initialized: bool;
    val delegate: okhttp3.internal.platform.android.SocketAdapter;
    val socketPackage: java.lang.String;
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void {
        assigns delegate;
        assigns initialized;
    }
    
    fun getDelegate(arg0: javax.net.ssl.SSLSocket): okhttp3.internal.platform.android.SocketAdapter {
        assigns delegate;
        assigns initialized;
    }
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String {
        assigns delegate;
        assigns initialized;
    }
    
    fun isSupported(): bool;
    
    fun matchesSocket(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.cache.DiskLruCache (val arg0: okhttp3.internal.io.FileSystem, val arg1: java.io.File, val arg2: int, val arg3: int, val arg4: long, val arg5: okhttp3.internal.concurrent.TaskRunner) : okhttp3.internal.cache.DiskLruCache {
    val maxSize: long;
    val journalFile: java.io.File;
    val journalFileTmp: java.io.File;
    val journalFileBackup: java.io.File;
    val size: long;
    val journalWriter: okio.BufferedSink;
    val lruEntries: java.util.LinkedHashMap;
    val redundantOpCount: int;
    val hasJournalErrors: bool;
    val civilizedFileSystem: bool;
    val initialized: bool;
    val closed: bool;
    val mostRecentTrimFailed: bool;
    val mostRecentRebuildFailed: bool;
    val nextSequenceNumber: long;
    val cleanupQueue: okhttp3.internal.concurrent.TaskQueue;
    val cleanupTask: okhttp3.internal.cache.DiskLruCache$cleanupTask$1;
    val fileSystem: okhttp3.internal.io.FileSystem;
    val directory: java.io.File;
    val appVersion: int;
    val valueCount: int;
    val JOURNAL_FILE: java.lang.String;
    val JOURNAL_FILE_TEMP: java.lang.String;
    val JOURNAL_FILE_BACKUP: java.lang.String;
    val MAGIC: java.lang.String;
    val VERSION_1: java.lang.String;
    val ANY_SEQUENCE_NUMBER: long;
    val LEGAL_KEY_PATTERN: `<UNRESOLVED_TYPE>`;
    val CLEAN: java.lang.String;
    val DIRTY: java.lang.String;
    val REMOVE: java.lang.String;
    val READ: java.lang.String;
    val Companion: okhttp3.internal.cache.DiskLruCache$Companion;
    val journalWriter: okio.BufferedSink;
    fun access$getCivilizedFileSystem$p(arg0: okhttp3.internal.cache.DiskLruCache): bool;
    
    fun access$getHasJournalErrors$p(arg0: okhttp3.internal.cache.DiskLruCache): bool;
    
    fun access$getInitialized$p(arg0: okhttp3.internal.cache.DiskLruCache): bool;
    
    fun access$getJournalWriter$p(arg0: okhttp3.internal.cache.DiskLruCache): okio.BufferedSink;
    
    fun access$getJournalWriter$p(arg0: okhttp3.internal.cache.DiskLruCache): okio.BufferedSink;
    
    fun access$getMostRecentRebuildFailed$p(arg0: okhttp3.internal.cache.DiskLruCache): bool;
    
    fun access$getMostRecentTrimFailed$p(arg0: okhttp3.internal.cache.DiskLruCache): bool;
    
    fun access$getRedundantOpCount$p(arg0: okhttp3.internal.cache.DiskLruCache): int;
    
    fun access$journalRebuildRequired(arg0: okhttp3.internal.cache.DiskLruCache): bool;
    
    fun access$setCivilizedFileSystem$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: bool): void {
        assigns arg0.civilizedFileSystem;
    }
    
    fun access$setHasJournalErrors$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: bool): void {
        assigns arg0.hasJournalErrors;
    }
    
    fun access$setInitialized$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: bool): void {
        assigns arg0.initialized;
    }
    
    fun access$setJournalWriter$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: okio.BufferedSink): void {
        assigns arg0.journalWriter;
    }
    
    fun access$setJournalWriter$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: okio.BufferedSink): void;
    
    fun access$setMostRecentRebuildFailed$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: bool): void {
        assigns arg0.mostRecentRebuildFailed;
    }
    
    fun access$setMostRecentTrimFailed$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: bool): void {
        assigns arg0.mostRecentTrimFailed;
    }
    
    fun access$setRedundantOpCount$p(arg0: okhttp3.internal.cache.DiskLruCache, arg1: int): void {
        assigns arg0.redundantOpCount;
    }
    
    @Throws("java.lang.IllegalStateException", closed)
    fun checkNotClosed(): void;
    
    fun close(): void {
        assigns closed;
        assigns journalWriter;
        assigns mostRecentTrimFailed;
        assigns size;
        assigns redundantOpCount;
    }
    
    fun completeEdit$okhttp(arg0: okhttp3.internal.cache.DiskLruCache$Editor, arg1: bool): void {
        assigns size;
        assigns redundantOpCount;
        assigns nextSequenceNumber;
        assigns arg0.done;
    }
    
    fun delete(): void {
        assigns closed;
        assigns journalWriter;
        assigns mostRecentTrimFailed;
        assigns size;
        assigns redundantOpCount;
    }
    
    fun edit(arg0: java.lang.String, arg1: long): okhttp3.internal.cache.DiskLruCache$Editor {
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
        assigns mostRecentTrimFailed;
    }
    
    fun edit(arg0: java.lang.String): okhttp3.internal.cache.DiskLruCache$Editor {
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
        assigns mostRecentTrimFailed;
    }
    
    fun edit$default(arg0: okhttp3.internal.cache.DiskLruCache, arg1: java.lang.String, arg2: long, arg3: int, arg4: java.lang.Object): okhttp3.internal.cache.DiskLruCache$Editor {
        assigns arg0.civilizedFileSystem;
        assigns arg0.initialized;
        assigns arg0.closed;
        assigns arg0.redundantOpCount;
        assigns arg0.journalWriter;
        assigns arg0.hasJournalErrors;
        assigns arg0.mostRecentRebuildFailed;
        assigns arg0.size;
        assigns arg0.mostRecentTrimFailed;
    }
    
    fun evictAll(): void {
        assigns mostRecentTrimFailed;
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
    }
    
    fun flush(): void {
        assigns mostRecentTrimFailed;
        assigns size;
        assigns redundantOpCount;
    }
    
    fun get(arg0: java.lang.String): okhttp3.internal.cache.DiskLruCache$Snapshot {
        assigns redundantOpCount;
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
        assigns mostRecentTrimFailed;
    }
    
    fun getClosed$okhttp(): bool;
    
    fun getDirectory(): java.io.File;
    
    fun getFileSystem$okhttp(): okhttp3.internal.io.FileSystem;
    
    fun getLruEntries$okhttp(): java.util.LinkedHashMap;
    
    fun getMaxSize(): long;
    
    fun getValueCount$okhttp(): int;
    
    fun initialize(): void {
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
        assigns mostRecentTrimFailed;
    }
    
    fun isClosed(): bool;
    
    fun journalRebuildRequired(): bool;
    
    fun newJournalWriter(): okio.BufferedSink;
    
    fun newJournalWriter(): okio.BufferedSink;
    
    fun processJournal(): void {
        assigns size;
    }
    
    fun readJournal(): void {
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
    }
    
    fun readJournalLine(arg0: java.lang.String): void;
    
    fun rebuildJournal$okhttp(): void {
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
    }
    
    fun remove(arg0: java.lang.String): bool {
        assigns mostRecentTrimFailed;
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
    }
    
    fun removeEntry$okhttp(arg0: okhttp3.internal.cache.DiskLruCache$Entry): bool {
        assigns size;
        assigns redundantOpCount;
        assigns arg0.zombie;
    }
    
    fun removeOldestEntry(): bool {
        assigns size;
        assigns redundantOpCount;
    }
    
    fun setClosed$okhttp(arg0: bool): void {
        assigns closed;
    }
    
    fun setMaxSize(arg0: long): void {
        assigns maxSize;
    }
    
    fun size(): long {
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
        assigns mostRecentTrimFailed;
    }
    
    fun snapshots(): java.util.Iterator {
        assigns civilizedFileSystem;
        assigns initialized;
        assigns closed;
        assigns redundantOpCount;
        assigns journalWriter;
        assigns hasJournalErrors;
        assigns mostRecentRebuildFailed;
        assigns size;
        assigns mostRecentTrimFailed;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns JOURNAL_FILE;
        assigns JOURNAL_FILE_TEMP;
        assigns JOURNAL_FILE_BACKUP;
        assigns MAGIC;
        assigns VERSION_1;
        assigns ANY_SEQUENCE_NUMBER;
        assigns CLEAN;
        assigns DIRTY;
        assigns REMOVE;
        assigns READ;
    }
    
    fun trimToSize(): void {
        assigns mostRecentTrimFailed;
        assigns size;
        assigns redundantOpCount;
    }
    
    fun validateKey(arg0: java.lang.String): void;
}
automaton okhttp3.internal.cache.DiskLruCache$Companion : okhttp3.internal.cache.DiskLruCache$Companion {
}
automaton okhttp3.internal.cache.DiskLruCache$Editor (val arg0: okhttp3.internal.cache.DiskLruCache, val arg1: okhttp3.internal.cache.DiskLruCache$Entry) : okhttp3.internal.cache.DiskLruCache$Editor {
    val written: array<bool>;
    val done: bool;
    val entry: okhttp3.internal.cache.DiskLruCache$Entry;
    val this$0: okhttp3.internal.cache.DiskLruCache;
    fun abort(): void {
        assigns done;
    }
    
    fun commit(): void {
        assigns done;
    }
    
    fun detach$okhttp(): void {
        assigns done;
    }
    
    fun getEntry$okhttp(): okhttp3.internal.cache.DiskLruCache$Entry;
    
    fun getWritten$okhttp(): array<bool>;
    
    fun newSink(arg0: int): okio.Sink;
    
    fun newSink(arg0: int): okio.Sink;
    
    fun newSource(arg0: int): okio.Source;
    
    fun newSource(arg0: int): okio.Source;
}
automaton okhttp3.internal.cache.DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 (val arg0: okhttp3.internal.cache.DiskLruCache$Editor, val arg1: int) : okhttp3.internal.cache.DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 {
    val this$0: okhttp3.internal.cache.DiskLruCache$Editor;
    val $index$inlined: int;
    fun invoke(arg0: java.lang.Object): java.lang.Object;
    
    fun invoke(arg0: java.io.IOException): void;
}
automaton okhttp3.internal.cache.DiskLruCache$Entry (val arg0: okhttp3.internal.cache.DiskLruCache, val arg1: java.lang.String) : okhttp3.internal.cache.DiskLruCache$Entry {
    val lengths: array<long>;
    val cleanFiles: java.util.List;
    val dirtyFiles: java.util.List;
    val readable: bool;
    val zombie: bool;
    val currentEditor: okhttp3.internal.cache.DiskLruCache$Editor;
    val lockingSourceCount: int;
    val sequenceNumber: long;
    val key: java.lang.String;
    val this$0: okhttp3.internal.cache.DiskLruCache;
    fun getCleanFiles$okhttp(): java.util.List;
    
    fun getCurrentEditor$okhttp(): okhttp3.internal.cache.DiskLruCache$Editor;
    
    fun getDirtyFiles$okhttp(): java.util.List;
    
    fun getKey$okhttp(): java.lang.String;
    
    fun getLengths$okhttp(): array<long>;
    
    fun getLockingSourceCount$okhttp(): int;
    
    fun getReadable$okhttp(): bool;
    
    fun getSequenceNumber$okhttp(): long;
    
    fun getZombie$okhttp(): bool;
    
    fun invalidLengths(arg0: java.util.List): java.lang.Void;
    
    fun newSource(arg0: int): okio.Source {
        assigns lockingSourceCount;
    }
    
    fun newSource(arg0: int): okio.Source;
    
    fun setCurrentEditor$okhttp(arg0: okhttp3.internal.cache.DiskLruCache$Editor): void {
        assigns currentEditor;
    }
    
    fun setLengths$okhttp(arg0: java.util.List): void;
    
    fun setLockingSourceCount$okhttp(arg0: int): void {
        assigns lockingSourceCount;
    }
    
    fun setReadable$okhttp(arg0: bool): void {
        assigns readable;
    }
    
    fun setSequenceNumber$okhttp(arg0: long): void {
        assigns sequenceNumber;
    }
    
    fun setZombie$okhttp(arg0: bool): void {
        assigns zombie;
    }
    
    fun snapshot$okhttp(): okhttp3.internal.cache.DiskLruCache$Snapshot {
        assigns lockingSourceCount;
        assigns zombie;
    }
    
    fun writeLengths$okhttp(arg0: okio.BufferedSink): void {
        assigns arg0;
    }
    
    fun writeLengths$okhttp(arg0: okio.BufferedSink): void;
}
automaton okhttp3.internal.cache.DiskLruCache$Entry$newSource$1 (val arg0: okhttp3.internal.cache.DiskLruCache$Entry, val arg1: okio.Source, val arg2: okio.Source) : okhttp3.internal.cache.DiskLruCache$Entry$newSource$1 {
    val closed: bool;
    val this$0: okhttp3.internal.cache.DiskLruCache$Entry;
    val $fileSource: okio.Source;
    val $fileSource: okio.Source;
    fun close(): void {
        assigns closed;
    }
    
    fun getClosed(): bool;
    
    fun setClosed(arg0: bool): void {
        assigns closed;
    }
}
automaton okhttp3.internal.cache.DiskLruCache$Snapshot (val arg0: okhttp3.internal.cache.DiskLruCache, val arg1: java.lang.String, val arg2: long, val arg3: java.util.List, val arg4: array<long>) : okhttp3.internal.cache.DiskLruCache$Snapshot {
    val key: java.lang.String;
    val sequenceNumber: long;
    val sources: java.util.List;
    val lengths: array<long>;
    val this$0: okhttp3.internal.cache.DiskLruCache;
    fun close(): void;
    
    fun edit(): okhttp3.internal.cache.DiskLruCache$Editor;
    
    fun getLength(arg0: int): long;
    
    fun getSource(arg0: int): okio.Source;
    
    fun getSource(arg0: int): okio.Source;
    
    fun key(): java.lang.String;
}
automaton okhttp3.internal.cache.DiskLruCache$cleanupTask$1 (val arg0: okhttp3.internal.cache.DiskLruCache, val arg1: java.lang.String) : okhttp3.internal.cache.DiskLruCache$cleanupTask$1 {
    val this$0: okhttp3.internal.cache.DiskLruCache;
    fun runOnce(): long {
        assigns this$0.mostRecentTrimFailed;
        assigns this$0.redundantOpCount;
        assigns this$0.mostRecentRebuildFailed;
        assigns this$0.journalWriter;
    }
}
automaton okhttp3.internal.cache.DiskLruCache$newJournalWriter$faultHidingSink$1 (val arg0: okhttp3.internal.cache.DiskLruCache) : okhttp3.internal.cache.DiskLruCache$newJournalWriter$faultHidingSink$1 {
    val this$0: okhttp3.internal.cache.DiskLruCache;
    fun invoke(arg0: java.lang.Object): java.lang.Object {
        assigns this$0.hasJournalErrors;
    }
    
    fun invoke(arg0: java.io.IOException): void;
}
automaton okhttp3.internal.cache.DiskLruCache$snapshots$1 (val arg0: okhttp3.internal.cache.DiskLruCache) : okhttp3.internal.cache.DiskLruCache$snapshots$1 {
    val delegate: java.util.Iterator;
    val nextSnapshot: okhttp3.internal.cache.DiskLruCache$Snapshot;
    val removeSnapshot: okhttp3.internal.cache.DiskLruCache$Snapshot;
    val this$0: okhttp3.internal.cache.DiskLruCache;
    fun getDelegate(): java.util.Iterator;
    
    fun getNextSnapshot(): okhttp3.internal.cache.DiskLruCache$Snapshot;
    
    fun getRemoveSnapshot(): okhttp3.internal.cache.DiskLruCache$Snapshot;
    
    fun hasNext(): bool {
        assigns nextSnapshot;
    }
    
    fun next(): okhttp3.internal.cache.DiskLruCache$Snapshot {
        assigns removeSnapshot;
        assigns nextSnapshot;
    }
    
    fun next(): java.lang.Object;
    
    fun remove(): void {
        assigns removeSnapshot;
    }
    
    fun setNextSnapshot(arg0: okhttp3.internal.cache.DiskLruCache$Snapshot): void {
        assigns nextSnapshot;
    }
    
    fun setRemoveSnapshot(arg0: okhttp3.internal.cache.DiskLruCache$Snapshot): void {
        assigns removeSnapshot;
    }
}
automaton okhttp3.Dispatcher : okhttp3.Dispatcher {
    val maxRequests: int;
    val maxRequestsPerHost: int;
    val idleCallback: java.lang.Runnable;
    val executorServiceOrNull: java.util.concurrent.ExecutorService;
    val readyAsyncCalls: java.util.ArrayDeque;
    val runningAsyncCalls: java.util.ArrayDeque;
    val runningSyncCalls: java.util.ArrayDeque;
    fun `-deprecated_executorService`(): java.util.concurrent.ExecutorService {
        assigns executorServiceOrNull;
    }
    
    fun cancelAll(): void;
    
    fun enqueue$okhttp(arg0: okhttp3.internal.connection.RealCall$AsyncCall): void {
        assigns arg0.callsPerHost;
        assigns executorServiceOrNull;
    }
    
    fun executed$okhttp(arg0: okhttp3.internal.connection.RealCall): void;
    
    fun executorService(): java.util.concurrent.ExecutorService {
        assigns executorServiceOrNull;
    }
    
    fun findExistingCallWithHost(arg0: java.lang.String): okhttp3.internal.connection.RealCall$AsyncCall;
    
    fun finished(arg0: java.util.Deque, arg1: java.lang.Object): void {
        assigns executorServiceOrNull;
    }
    
    fun finished$okhttp(arg0: okhttp3.internal.connection.RealCall$AsyncCall): void {
        assigns executorServiceOrNull;
    }
    
    fun finished$okhttp(arg0: okhttp3.internal.connection.RealCall): void;
    
    fun getIdleCallback(): java.lang.Runnable;
    
    fun getMaxRequests(): int;
    
    fun getMaxRequestsPerHost(): int;
    
    fun promoteAndExecute(): bool {
        assigns executorServiceOrNull;
    }
    
    fun queuedCalls(): java.util.List;
    
    fun queuedCallsCount(): int;
    
    fun runningCalls(): java.util.List;
    
    fun runningCallsCount(): int;
    
    fun setIdleCallback(arg0: java.lang.Runnable): void {
        assigns idleCallback;
    }
    
    fun setMaxRequests(arg0: int): void {
        assigns maxRequests;
        assigns executorServiceOrNull;
    }
    
    fun setMaxRequestsPerHost(arg0: int): void {
        assigns maxRequestsPerHost;
        assigns executorServiceOrNull;
    }
}
automaton okhttp3.Dns : okhttp3.Dns {
    val SYSTEM: okhttp3.Dns;
    val Companion: okhttp3.Dns$Companion;
    fun lookup(arg0: java.lang.String): java.util.List;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.Dns$Companion : okhttp3.Dns$Companion {
    val $$INSTANCE: okhttp3.Dns$Companion;
}
automaton okhttp3.Dns$Companion$DnsSystem : okhttp3.Dns$Companion$DnsSystem {
    fun lookup(arg0: java.lang.String): java.util.List;
}
automaton okhttp3.internal.http2.ErrorCode (val arg0: java.lang.String, val arg1: int, val arg2: int) : okhttp3.internal.http2.ErrorCode {
    val NO_ERROR: okhttp3.internal.http2.ErrorCode;
    val PROTOCOL_ERROR: okhttp3.internal.http2.ErrorCode;
    val INTERNAL_ERROR: okhttp3.internal.http2.ErrorCode;
    val FLOW_CONTROL_ERROR: okhttp3.internal.http2.ErrorCode;
    val SETTINGS_TIMEOUT: okhttp3.internal.http2.ErrorCode;
    val STREAM_CLOSED: okhttp3.internal.http2.ErrorCode;
    val FRAME_SIZE_ERROR: okhttp3.internal.http2.ErrorCode;
    val REFUSED_STREAM: okhttp3.internal.http2.ErrorCode;
    val CANCEL: okhttp3.internal.http2.ErrorCode;
    val COMPRESSION_ERROR: okhttp3.internal.http2.ErrorCode;
    val CONNECT_ERROR: okhttp3.internal.http2.ErrorCode;
    val ENHANCE_YOUR_CALM: okhttp3.internal.http2.ErrorCode;
    val INADEQUATE_SECURITY: okhttp3.internal.http2.ErrorCode;
    val HTTP_1_1_REQUIRED: okhttp3.internal.http2.ErrorCode;
    val $VALUES: array<okhttp3.internal.http2.ErrorCode>;
    val httpCode: int;
    val Companion: okhttp3.internal.http2.ErrorCode$Companion;
    fun getHttpCode(): int;
    
    fun `static-constructor`(): void {
        assigns NO_ERROR;
        assigns PROTOCOL_ERROR;
        assigns INTERNAL_ERROR;
        assigns FLOW_CONTROL_ERROR;
        assigns SETTINGS_TIMEOUT;
        assigns STREAM_CLOSED;
        assigns FRAME_SIZE_ERROR;
        assigns REFUSED_STREAM;
        assigns CANCEL;
        assigns COMPRESSION_ERROR;
        assigns CONNECT_ERROR;
        assigns ENHANCE_YOUR_CALM;
        assigns INADEQUATE_SECURITY;
        assigns HTTP_1_1_REQUIRED;
        assigns $VALUES;
        assigns Companion;
    }
    
    fun valueOf(arg0: java.lang.String): okhttp3.internal.http2.ErrorCode;
    
    fun values(): array<okhttp3.internal.http2.ErrorCode>;
}
automaton okhttp3.internal.http2.ErrorCode$Companion : okhttp3.internal.http2.ErrorCode$Companion {
    fun fromHttp2(arg0: int): okhttp3.internal.http2.ErrorCode;
}
automaton okhttp3.EventListener : okhttp3.EventListener {
    val NONE: okhttp3.EventListener;
    val Companion: okhttp3.EventListener$Companion;
    fun cacheConditionalHit(arg0: okhttp3.Call, arg1: okhttp3.Response): void;
    
    fun cacheHit(arg0: okhttp3.Call, arg1: okhttp3.Response): void;
    
    fun cacheMiss(arg0: okhttp3.Call): void;
    
    fun callEnd(arg0: okhttp3.Call): void;
    
    fun callFailed(arg0: okhttp3.Call, arg1: java.io.IOException): void;
    
    fun callStart(arg0: okhttp3.Call): void;
    
    fun canceled(arg0: okhttp3.Call): void;
    
    fun connectEnd(arg0: okhttp3.Call, arg1: java.net.InetSocketAddress, arg2: java.net.Proxy, arg3: okhttp3.Protocol): void;
    
    fun connectFailed(arg0: okhttp3.Call, arg1: java.net.InetSocketAddress, arg2: java.net.Proxy, arg3: okhttp3.Protocol, arg4: java.io.IOException): void;
    
    fun connectStart(arg0: okhttp3.Call, arg1: java.net.InetSocketAddress, arg2: java.net.Proxy): void;
    
    fun connectionAcquired(arg0: okhttp3.Call, arg1: okhttp3.Connection): void;
    
    fun connectionReleased(arg0: okhttp3.Call, arg1: okhttp3.Connection): void;
    
    fun dnsEnd(arg0: okhttp3.Call, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun dnsStart(arg0: okhttp3.Call, arg1: java.lang.String): void;
    
    fun proxySelectEnd(arg0: okhttp3.Call, arg1: okhttp3.HttpUrl, arg2: java.util.List): void;
    
    fun proxySelectStart(arg0: okhttp3.Call, arg1: okhttp3.HttpUrl): void;
    
    fun requestBodyEnd(arg0: okhttp3.Call, arg1: long): void;
    
    fun requestBodyStart(arg0: okhttp3.Call): void;
    
    fun requestFailed(arg0: okhttp3.Call, arg1: java.io.IOException): void;
    
    fun requestHeadersEnd(arg0: okhttp3.Call, arg1: okhttp3.Request): void;
    
    fun requestHeadersStart(arg0: okhttp3.Call): void;
    
    fun responseBodyEnd(arg0: okhttp3.Call, arg1: long): void;
    
    fun responseBodyStart(arg0: okhttp3.Call): void;
    
    fun responseFailed(arg0: okhttp3.Call, arg1: java.io.IOException): void;
    
    fun responseHeadersEnd(arg0: okhttp3.Call, arg1: okhttp3.Response): void;
    
    fun responseHeadersStart(arg0: okhttp3.Call): void;
    
    fun satisfactionFailure(arg0: okhttp3.Call, arg1: okhttp3.Response): void;
    
    fun secureConnectEnd(arg0: okhttp3.Call, arg1: okhttp3.Handshake): void;
    
    fun secureConnectStart(arg0: okhttp3.Call): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.EventListener$Companion : okhttp3.EventListener$Companion {
}
automaton okhttp3.EventListener$Companion$NONE$1 : okhttp3.EventListener$Companion$NONE$1 {
}
automaton okhttp3.EventListener$Factory : okhttp3.EventListener$Factory {
    fun create(arg0: okhttp3.Call): okhttp3.EventListener;
}
automaton okhttp3.internal.connection.Exchange (val arg0: okhttp3.internal.connection.RealCall, val arg1: okhttp3.EventListener, val arg2: okhttp3.internal.connection.ExchangeFinder, val arg3: okhttp3.internal.http.ExchangeCodec) : okhttp3.internal.connection.Exchange {
    val isDuplex: bool;
    val connection: okhttp3.internal.connection.RealConnection;
    val call: okhttp3.internal.connection.RealCall;
    val eventListener: okhttp3.EventListener;
    val finder: okhttp3.internal.connection.ExchangeFinder;
    val codec: okhttp3.internal.http.ExchangeCodec;
    fun bodyComplete(arg0: long, arg1: bool, arg2: bool, arg3: java.io.IOException): java.io.IOException;
    
    fun cancel(): void;
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: bool): okio.Sink {
        assigns isDuplex;
    }
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: bool): okio.Sink;
    
    fun detachWithViolence(): void;
    
    fun finishRequest(): void;
    
    fun flushRequest(): void;
    
    fun getCall$okhttp(): okhttp3.internal.connection.RealCall;
    
    fun getConnection$okhttp(): okhttp3.internal.connection.RealConnection;
    
    fun getEventListener$okhttp(): okhttp3.EventListener;
    
    fun getFinder$okhttp(): okhttp3.internal.connection.ExchangeFinder;
    
    fun isCoalescedConnection$okhttp(): bool;
    
    fun isDuplex$okhttp(): bool;
    
    @Throws("java.lang.IllegalStateException", timeoutEarlyExit)
    fun newWebSocketStreams(): okhttp3.internal.ws.RealWebSocket$Streams;
    
    fun noNewExchangesOnConnection(): void;
    
    fun noRequestBody(): void;
    
    fun openResponseBody(arg0: okhttp3.Response): okhttp3.ResponseBody;
    
    fun readResponseHeaders(arg0: bool): okhttp3.Response$Builder;
    
    fun responseHeadersEnd(arg0: okhttp3.Response): void;
    
    fun responseHeadersStart(): void;
    
    fun trackFailure(arg0: java.io.IOException): void;
    
    @Throws("java.lang.IllegalStateException", `state` <= 6)
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'")
    @Throws("java.lang.Throwable", errorCode != "'null-const'")
    fun trailers(): okhttp3.Headers;
    
    fun webSocketUpgradeFailed(): void;
    
    fun writeRequestHeaders(arg0: okhttp3.Request): void;
}
automaton okhttp3.internal.connection.Exchange$RequestBodySink (val arg0: okhttp3.internal.connection.Exchange, val arg1: okio.Sink, val arg2: long) : okhttp3.internal.connection.Exchange$RequestBodySink {
    val completed: bool;
    val bytesReceived: long;
    val closed: bool;
    val contentLength: long;
    val this$0: okhttp3.internal.connection.Exchange;
    fun close(): void {
        assigns closed;
        assigns completed;
    }
    
    fun complete(arg0: java.io.IOException): java.io.IOException {
        assigns completed;
    }
    
    fun flush(): void {
        assigns completed;
    }
    
    fun write(arg0: okio.Buffer, arg1: long): void {
        assigns bytesReceived;
        assigns arg0.head;
        assigns arg0.head.prev;
        assigns arg0.head.next;
        assigns arg0.size;
        assigns arg0.head.pos;
        assigns completed;
    }
    
    fun write(arg0: okio.Buffer, arg1: long): void;
}
automaton okhttp3.internal.connection.Exchange$ResponseBodySource (val arg0: okhttp3.internal.connection.Exchange, val arg1: okio.Source, val arg2: long) : okhttp3.internal.connection.Exchange$ResponseBodySource {
    val bytesReceived: long;
    val invokeStartEvent: bool;
    val completed: bool;
    val closed: bool;
    val contentLength: long;
    val this$0: okhttp3.internal.connection.Exchange;
    fun close(): void {
        assigns closed;
        assigns completed;
        assigns invokeStartEvent;
    }
    
    fun complete(arg0: java.io.IOException): java.io.IOException {
        assigns completed;
        assigns invokeStartEvent;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns invokeStartEvent;
        assigns bytesReceived;
        assigns arg0.head;
        assigns arg0.size;
        assigns completed;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
}
automaton okhttp3.internal.http.ExchangeCodec : okhttp3.internal.http.ExchangeCodec {
    val Companion: okhttp3.internal.http.ExchangeCodec$Companion;
    val DISCARD_STREAM_TIMEOUT_MILLIS: int;
    fun cancel(): void;
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: long): okio.Sink;
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: long): okio.Sink;
    
    fun finishRequest(): void;
    
    fun flushRequest(): void;
    
    fun getConnection(): okhttp3.internal.connection.RealConnection;
    
    fun openResponseBodySource(arg0: okhttp3.Response): okio.Source;
    
    fun openResponseBodySource(arg0: okhttp3.Response): okio.Source;
    
    fun readResponseHeaders(arg0: bool): okhttp3.Response$Builder;
    
    fun reportedContentLength(arg0: okhttp3.Response): long;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'" & `state` >= 6)
    @Throws("java.lang.IllegalStateException", `state` <= 6)
    @Throws("java.lang.IllegalStateException", `state` >= 6)
    @Throws("java.lang.IllegalStateException", `state` == 6)
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'" & `state` <= 6)
    @Throws("java.lang.IllegalStateException", errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode != "'null-const'" & `state` <= 6)
    @Throws("java.lang.IllegalStateException", errorCode != "'null-const'" & `state` >= 6)
    @Throws("java.lang.Throwable", errorCode != "'null-const'" & `state` <= 6)
    @Throws("java.lang.Throwable", errorCode != "'null-const'" & `state` >= 6)
    @Throws("java.lang.Throwable", errorCode != "'null-const'" & `state` == 6)
    @Throws("java.lang.Throwable", errorCode != "'null-const'")
    fun trailers(): okhttp3.Headers;
    
    fun writeRequestHeaders(arg0: okhttp3.Request): void;
}
automaton okhttp3.internal.http.ExchangeCodec$Companion : okhttp3.internal.http.ExchangeCodec$Companion {
    val DISCARD_STREAM_TIMEOUT_MILLIS: int;
    val $$INSTANCE: okhttp3.internal.http.ExchangeCodec$Companion;
    fun `static-constructor`(): void {
        assigns $$INSTANCE;
    }
}
automaton okhttp3.internal.connection.ExchangeFinder (val arg0: okhttp3.internal.connection.RealConnectionPool, val arg1: okhttp3.Address, val arg2: okhttp3.internal.connection.RealCall, val arg3: okhttp3.EventListener) : okhttp3.internal.connection.ExchangeFinder {
    val routeSelection: okhttp3.internal.connection.RouteSelector$Selection;
    val routeSelector: okhttp3.internal.connection.RouteSelector;
    val connectingConnection: okhttp3.internal.connection.RealConnection;
    val refusedStreamCount: int;
    val connectionShutdownCount: int;
    val otherFailureCount: int;
    val nextRouteToTry: okhttp3.Route;
    val connectionPool: okhttp3.internal.connection.RealConnectionPool;
    val address: okhttp3.Address;
    val call: okhttp3.internal.connection.RealCall;
    val eventListener: okhttp3.EventListener;
    fun connectingConnection(): okhttp3.internal.connection.RealConnection;
    
    fun find(arg0: okhttp3.OkHttpClient, arg1: okhttp3.internal.http.RealInterceptorChain): okhttp3.internal.http.ExchangeCodec {
        assigns refusedStreamCount;
        assigns connectionShutdownCount;
        assigns otherFailureCount;
        assigns nextRouteToTry;
        assigns routeSelector;
        assigns routeSelection;
        assigns connectingConnection;
    }
    
    fun findConnection(arg0: int, arg1: int, arg2: int, arg3: int, arg4: bool): okhttp3.internal.connection.RealConnection {
        assigns refusedStreamCount;
        assigns connectionShutdownCount;
        assigns otherFailureCount;
        assigns nextRouteToTry;
        assigns routeSelector;
        assigns routeSelection;
        assigns connectingConnection;
    }
    
    fun findHealthyConnection(arg0: int, arg1: int, arg2: int, arg3: int, arg4: bool, arg5: bool): okhttp3.internal.connection.RealConnection {
        assigns refusedStreamCount;
        assigns connectionShutdownCount;
        assigns otherFailureCount;
        assigns nextRouteToTry;
        assigns routeSelector;
        assigns routeSelection;
        assigns connectingConnection;
    }
    
    fun getAddress$okhttp(): okhttp3.Address;
    
    fun retryAfterFailure(): bool {
        assigns nextRouteToTry;
    }
    
    fun retryCurrentRoute(): bool;
    
    fun sameHostAndPort(arg0: okhttp3.HttpUrl): bool;
    
    fun trackFailure(arg0: java.io.IOException): void {
        assigns nextRouteToTry;
        assigns refusedStreamCount;
        assigns connectionShutdownCount;
        assigns otherFailureCount;
    }
}
automaton okhttp3.internal.cache.FaultHidingSink (val arg0: okio.Sink, val arg1: `<UNRESOLVED_TYPE>`) : okhttp3.internal.cache.FaultHidingSink {
    val hasErrors: bool;
    val onException: `<UNRESOLVED_TYPE>`;
    fun close(): void {
        assigns hasErrors;
    }
    
    fun flush(): void {
        assigns hasErrors;
    }
    
    fun getOnException(): `<UNRESOLVED_TYPE>`;
    
    fun write(arg0: okio.Buffer, arg1: long): void {
        assigns hasErrors;
        assigns arg0.head.pos;
        assigns arg0.head;
        assigns arg0.size;
        assigns arg0.head.prev;
        assigns arg0.head.next;
    }
    
    fun write(arg0: okio.Buffer, arg1: long): void;
}
automaton okhttp3.internal.cache2.FileOperator (val arg0: java.nio.channels.FileChannel) : okhttp3.internal.cache2.FileOperator {
    val fileChannel: java.nio.channels.FileChannel;
    @Throws("java.lang.IndexOutOfBoundsException", arg2 <= -1)
    fun read(arg0: long, arg1: okio.Buffer, arg2: long): void;
    
    fun read(arg0: long, arg1: okio.Buffer, arg2: long): void;
    
    @Throws("java.lang.IndexOutOfBoundsException", !arg2 == 0)
    @Throws("java.lang.IndexOutOfBoundsException", !arg2 == 0 & arg2 <= 0)
    @Throws("java.lang.IndexOutOfBoundsException", !arg2 == 0 & arg2 >= 0)
    fun write(arg0: long, arg1: okio.Buffer, arg2: long): void;
    
    fun write(arg0: long, arg1: okio.Buffer, arg2: long): void;
}
automaton okhttp3.internal.io.FileSystem : okhttp3.internal.io.FileSystem {
    val SYSTEM: okhttp3.internal.io.FileSystem;
    val Companion: okhttp3.internal.io.FileSystem$Companion;
    fun appendingSink(arg0: java.io.File): okio.Sink;
    
    fun appendingSink(arg0: java.io.File): okio.Sink;
    
    fun delete(arg0: java.io.File): void;
    
    fun deleteContents(arg0: java.io.File): void;
    
    fun exists(arg0: java.io.File): bool;
    
    fun rename(arg0: java.io.File, arg1: java.io.File): void;
    
    fun sink(arg0: java.io.File): okio.Sink;
    
    fun sink(arg0: java.io.File): okio.Sink;
    
    fun size(arg0: java.io.File): long;
    
    fun source(arg0: java.io.File): okio.Source;
    
    fun source(arg0: java.io.File): okio.Source;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.io.FileSystem$Companion : okhttp3.internal.io.FileSystem$Companion {
    val $$INSTANCE: okhttp3.internal.io.FileSystem$Companion;
}
automaton okhttp3.internal.io.FileSystem$Companion$SYSTEM$1 : okhttp3.internal.io.FileSystem$Companion$SYSTEM$1 {
    fun appendingSink(arg0: java.io.File): okio.Sink;
    
    fun appendingSink(arg0: java.io.File): okio.Sink;
    
    fun delete(arg0: java.io.File): void;
    
    fun deleteContents(arg0: java.io.File): void;
    
    fun exists(arg0: java.io.File): bool;
    
    fun rename(arg0: java.io.File, arg1: java.io.File): void;
    
    fun sink(arg0: java.io.File): okio.Sink;
    
    fun sink(arg0: java.io.File): okio.Sink;
    
    fun size(arg0: java.io.File): long;
    
    fun source(arg0: java.io.File): okio.Source;
    
    fun source(arg0: java.io.File): okio.Source;
    
    fun toString(): java.lang.String;
}
automaton okhttp3.FormBody (val arg0: java.util.List, val arg1: java.util.List) : okhttp3.FormBody {
    val encodedNames: java.util.List;
    val encodedValues: java.util.List;
    val CONTENT_TYPE: okhttp3.MediaType;
    val Companion: okhttp3.FormBody$Companion;
    fun `-deprecated_size`(): int;
    
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun encodedName(arg0: int): java.lang.String;
    
    fun encodedValue(arg0: int): java.lang.String;
    
    fun name(arg0: int): java.lang.String;
    
    fun size(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns CONTENT_TYPE;
    }
    
    fun value(arg0: int): java.lang.String;
    
    fun writeOrCountBytes(arg0: okio.BufferedSink, arg1: bool): long;
    
    fun writeOrCountBytes(arg0: okio.BufferedSink, arg1: bool): long;
    
    fun writeTo(arg0: okio.BufferedSink): void;
    
    fun writeTo(arg0: okio.BufferedSink): void;
}
automaton okhttp3.FormBody$Builder (val arg0: java.nio.charset.Charset) : okhttp3.FormBody$Builder {
    val names: java.util.List;
    val values: java.util.List;
    val charset: java.nio.charset.Charset;
    fun add(arg0: java.lang.String, arg1: java.lang.String): okhttp3.FormBody$Builder;
    
    fun addEncoded(arg0: java.lang.String, arg1: java.lang.String): okhttp3.FormBody$Builder;
    
    fun build(): okhttp3.FormBody;
}
automaton okhttp3.FormBody$Companion : okhttp3.FormBody$Companion {
}
automaton okhttp3.Handshake (val arg0: okhttp3.TlsVersion, val arg1: okhttp3.CipherSuite, val arg2: java.util.List, val arg3: `<UNRESOLVED_TYPE>`) : okhttp3.Handshake {
    val peerCertificates$delegate: `<UNRESOLVED_TYPE>`;
    val tlsVersion: okhttp3.TlsVersion;
    val cipherSuite: okhttp3.CipherSuite;
    val localCertificates: java.util.List;
    val Companion: okhttp3.Handshake$Companion;
    fun `-deprecated_cipherSuite`(): okhttp3.CipherSuite;
    
    fun `-deprecated_localCertificates`(): java.util.List;
    
    fun `-deprecated_localPrincipal`(): java.security.Principal;
    
    fun `-deprecated_peerCertificates`(): java.util.List;
    
    fun `-deprecated_peerPrincipal`(): java.security.Principal;
    
    fun `-deprecated_tlsVersion`(): okhttp3.TlsVersion;
    
    fun cipherSuite(): okhttp3.CipherSuite;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun get(arg0: javax.net.ssl.SSLSession): okhttp3.Handshake;
    
    fun get(arg0: okhttp3.TlsVersion, arg1: okhttp3.CipherSuite, arg2: java.util.List, arg3: java.util.List): okhttp3.Handshake;
    
    fun getName(arg0: java.security.cert.Certificate): java.lang.String;
    
    fun hashCode(): int;
    
    fun localCertificates(): java.util.List;
    
    fun localPrincipal(): java.security.Principal;
    
    fun peerCertificates(): java.util.List;
    
    fun peerPrincipal(): java.security.Principal;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun tlsVersion(): okhttp3.TlsVersion;
    
    fun toString(): java.lang.String;
}
automaton okhttp3.Handshake$Companion : okhttp3.Handshake$Companion {
    fun `-deprecated_get`(arg0: javax.net.ssl.SSLSession): okhttp3.Handshake;
    
    fun get(arg0: javax.net.ssl.SSLSession): okhttp3.Handshake;
    
    fun get(arg0: okhttp3.TlsVersion, arg1: okhttp3.CipherSuite, arg2: java.util.List, arg3: java.util.List): okhttp3.Handshake;
    
    fun toImmutableList(arg0: array): java.util.List;
}
automaton okhttp3.Handshake$Companion$get$1 (val arg0: java.util.List) : okhttp3.Handshake$Companion$get$1 {
    val $peerCertificatesCopy: java.util.List;
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.Handshake$Companion$handshake$1 (val arg0: java.util.List) : okhttp3.Handshake$Companion$handshake$1 {
    val $peerCertificatesCopy: java.util.List;
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.Handshake$peerCertificates$2 (val arg0: `<UNRESOLVED_TYPE>`) : okhttp3.Handshake$peerCertificates$2 {
    val $peerCertificatesFn: `<UNRESOLVED_TYPE>`;
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.internal.http2.Header (val arg0: okio.ByteString, val arg1: okio.ByteString) : okhttp3.internal.http2.Header {
    val hpackSize: int;
    val name: okio.ByteString;
    val value: okio.ByteString;
    val PSEUDO_PREFIX: okio.ByteString;
    val RESPONSE_STATUS_UTF8: java.lang.String;
    val TARGET_METHOD_UTF8: java.lang.String;
    val TARGET_PATH_UTF8: java.lang.String;
    val TARGET_SCHEME_UTF8: java.lang.String;
    val TARGET_AUTHORITY_UTF8: java.lang.String;
    val RESPONSE_STATUS: okio.ByteString;
    val TARGET_METHOD: okio.ByteString;
    val TARGET_PATH: okio.ByteString;
    val TARGET_SCHEME: okio.ByteString;
    val TARGET_AUTHORITY: okio.ByteString;
    val Companion: okhttp3.internal.http2.Header$Companion;
    val name: okio.ByteString;
    val value: okio.ByteString;
    val PSEUDO_PREFIX: okio.ByteString;
    val RESPONSE_STATUS: okio.ByteString;
    val TARGET_METHOD: okio.ByteString;
    val TARGET_PATH: okio.ByteString;
    val TARGET_SCHEME: okio.ByteString;
    val TARGET_AUTHORITY: okio.ByteString;
    fun component1(): okio.ByteString;
    
    fun component1(): okio.ByteString;
    
    fun component2(): okio.ByteString;
    
    fun component2(): okio.ByteString;
    
    fun copy(arg0: okio.ByteString, arg1: okio.ByteString): okhttp3.internal.http2.Header;
    
    fun copy(arg0: okio.ByteString, arg1: okio.ByteString): okhttp3.internal.http2.Header;
    
    fun copy$default(arg0: okhttp3.internal.http2.Header, arg1: okio.ByteString, arg2: okio.ByteString, arg3: int, arg4: java.lang.Object): okhttp3.internal.http2.Header;
    
    fun copy$default(arg0: okhttp3.internal.http2.Header, arg1: okio.ByteString, arg2: okio.ByteString, arg3: int, arg4: java.lang.Object): okhttp3.internal.http2.Header;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns PSEUDO_PREFIX;
        assigns RESPONSE_STATUS;
        assigns TARGET_METHOD;
        assigns TARGET_PATH;
        assigns TARGET_SCHEME;
        assigns TARGET_AUTHORITY;
    }
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.http2.Header$Companion : okhttp3.internal.http2.Header$Companion {
}
automaton okhttp3.Headers (val arg0: array<java.lang.String>) : okhttp3.Headers {
    val namesAndValues: array<java.lang.String>;
    val Companion: okhttp3.Headers$Companion;
    fun `-deprecated_size`(): int;
    
    fun byteCount(): long;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun get(arg0: java.lang.String): java.lang.String;
    
    fun getDate(arg0: java.lang.String): java.util.Date;
    
    fun getInstant(arg0: java.lang.String): java.time.Instant;
    
    fun hashCode(): int;
    
    fun iterator(): java.util.Iterator;
    
    fun name(arg0: int): java.lang.String;
    
    fun names(): java.util.Set;
    
    fun newBuilder(): okhttp3.Headers$Builder;
    
    fun of(arg0: array): okhttp3.Headers;
    
    fun of(arg0: java.util.Map): okhttp3.Headers;
    
    fun size(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun toMultimap(): java.util.Map;
    
    fun toString(): java.lang.String;
    
    fun value(arg0: int): java.lang.String;
    
    fun values(arg0: java.lang.String): java.util.List;
}
automaton okhttp3.Headers$Builder : okhttp3.Headers$Builder {
    val namesAndValues: java.util.List;
    fun add(arg0: java.lang.String): okhttp3.Headers$Builder;
    
    fun add(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Headers$Builder;
    
    fun add(arg0: java.lang.String, arg1: java.util.Date): okhttp3.Headers$Builder;
    
    fun add(arg0: java.lang.String, arg1: java.time.Instant): okhttp3.Headers$Builder;
    
    fun addAll(arg0: okhttp3.Headers): okhttp3.Headers$Builder;
    
    fun addLenient$okhttp(arg0: java.lang.String): okhttp3.Headers$Builder;
    
    fun addLenient$okhttp(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Headers$Builder;
    
    fun addUnsafeNonAscii(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Headers$Builder;
    
    fun build(): okhttp3.Headers;
    
    fun get(arg0: java.lang.String): java.lang.String;
    
    fun getNamesAndValues$okhttp(): java.util.List;
    
    fun removeAll(arg0: java.lang.String): okhttp3.Headers$Builder;
    
    fun set(arg0: java.lang.String, arg1: java.util.Date): okhttp3.Headers$Builder;
    
    fun set(arg0: java.lang.String, arg1: java.time.Instant): okhttp3.Headers$Builder;
    
    fun set(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Headers$Builder;
}
automaton okhttp3.Headers$Companion : okhttp3.Headers$Companion {
    fun `-deprecated_of`(arg0: array): okhttp3.Headers;
    
    fun `-deprecated_of`(arg0: java.util.Map): okhttp3.Headers;
    
    fun access$checkName(arg0: okhttp3.Headers$Companion, arg1: java.lang.String): void;
    
    fun access$checkValue(arg0: okhttp3.Headers$Companion, arg1: java.lang.String, arg2: java.lang.String): void;
    
    fun access$get(arg0: okhttp3.Headers$Companion, arg1: array, arg2: java.lang.String): java.lang.String;
    
    fun checkName(arg0: java.lang.String): void;
    
    fun checkValue(arg0: java.lang.String, arg1: java.lang.String): void;
    
    fun get(arg0: array, arg1: java.lang.String): java.lang.String;
    
    fun of(arg0: array): okhttp3.Headers;
    
    fun of(arg0: java.util.Map): okhttp3.Headers;
}
automaton okhttp3.internal.http1.HeadersReader (val arg0: okio.BufferedSource) : okhttp3.internal.http1.HeadersReader {
    val headerLimit: long;
    val source: okio.BufferedSource;
    val HEADER_LIMIT: int;
    val Companion: okhttp3.internal.http1.HeadersReader$Companion;
    val source: okio.BufferedSource;
    fun getSource(): okio.BufferedSource;
    
    fun getSource(): okio.BufferedSource;
    
    fun readHeaders(): okhttp3.Headers {
        assigns headerLimit;
    }
    
    fun readLine(): java.lang.String {
        assigns headerLimit;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.http1.HeadersReader$Companion : okhttp3.internal.http1.HeadersReader$Companion {
}
automaton okhttp3.internal.HostnamesKt : okhttp3.internal.HostnamesKt {
    fun containsInvalidHostnameAsciiCodes(arg0: java.lang.String): bool;
    
    fun decodeIpv4Suffix(arg0: java.lang.String, arg1: int, arg2: int, arg3: array, arg4: int): bool;
    
    fun decodeIpv6(arg0: java.lang.String, arg1: int, arg2: int): java.net.InetAddress;
    
    fun inet6AddressToAscii(arg0: array): java.lang.String;
    
    fun toCanonicalHost(arg0: java.lang.String): java.lang.String;
}
automaton okhttp3.internal.http2.Hpack : okhttp3.internal.http2.Hpack {
    val PREFIX_4_BITS: int;
    val PREFIX_5_BITS: int;
    val PREFIX_6_BITS: int;
    val PREFIX_7_BITS: int;
    val SETTINGS_HEADER_TABLE_SIZE: int;
    val SETTINGS_HEADER_TABLE_SIZE_LIMIT: int;
    val STATIC_HEADER_TABLE: array<okhttp3.internal.http2.Header>;
    val NAME_TO_FIRST_INDEX: java.util.Map;
    val INSTANCE: okhttp3.internal.http2.Hpack;
    fun checkLowercase(arg0: okio.ByteString): okio.ByteString {
        assigns arg0.utf8;
    }
    
    fun checkLowercase(arg0: okio.ByteString): okio.ByteString;
    
    fun getNAME_TO_FIRST_INDEX(): java.util.Map;
    
    fun getSTATIC_HEADER_TABLE(): array<okhttp3.internal.http2.Header>;
    
    fun nameToFirstIndex(): java.util.Map;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
        assigns STATIC_HEADER_TABLE;
        assigns NAME_TO_FIRST_INDEX;
    }
}
automaton okhttp3.internal.http2.Hpack$Reader (val arg0: okio.Source, val arg1: int, val arg2: int) : okhttp3.internal.http2.Hpack$Reader {
    val headerList: java.util.List;
    val source: okio.BufferedSource;
    val dynamicTable: array<okhttp3.internal.http2.Header>;
    val nextHeaderIndex: int;
    val headerCount: int;
    val dynamicTableByteCount: int;
    val headerTableSizeSetting: int;
    val maxDynamicTableByteCount: int;
    val source: okio.BufferedSource;
    fun adjustDynamicTableByteCount(): void {
        assigns nextHeaderIndex;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun clearDynamicTable(): void {
        assigns nextHeaderIndex;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun dynamicTableIndex(arg0: int): int;
    
    fun evictToRecoverBytes(arg0: int): int {
        assigns dynamicTableByteCount;
        assigns headerCount;
        assigns nextHeaderIndex;
    }
    
    fun getAndResetHeaderList(): java.util.List;
    
    fun getName(arg0: int): okio.ByteString;
    
    fun getName(arg0: int): okio.ByteString;
    
    fun insertIntoDynamicTable(arg0: int, arg1: okhttp3.internal.http2.Header): void {
        assigns nextHeaderIndex;
        assigns dynamicTable;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun isStaticHeader(arg0: int): bool;
    
    fun maxDynamicTableByteCount(): int;
    
    fun readByte(): int;
    
    fun readByteString(): okio.ByteString;
    
    fun readByteString(): okio.ByteString;
    
    fun readHeaders(): void {
        assigns maxDynamicTableByteCount;
        assigns nextHeaderIndex;
        assigns dynamicTable;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun readIndexedHeader(arg0: int): void;
    
    fun readInt(arg0: int, arg1: int): int;
    
    fun readLiteralHeaderWithIncrementalIndexingIndexedName(arg0: int): void {
        assigns nextHeaderIndex;
        assigns dynamicTable;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun readLiteralHeaderWithIncrementalIndexingNewName(): void {
        assigns nextHeaderIndex;
        assigns dynamicTable;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun readLiteralHeaderWithoutIndexingIndexedName(arg0: int): void;
    
    fun readLiteralHeaderWithoutIndexingNewName(): void;
}
automaton okhttp3.internal.http2.Hpack$Writer (val arg0: int, val arg1: bool, val arg2: okio.Buffer) : okhttp3.internal.http2.Hpack$Writer {
    val smallestHeaderTableSizeSetting: int;
    val emitDynamicTableSizeUpdate: bool;
    val maxDynamicTableByteCount: int;
    val dynamicTable: array<okhttp3.internal.http2.Header>;
    val nextHeaderIndex: int;
    val headerCount: int;
    val dynamicTableByteCount: int;
    val headerTableSizeSetting: int;
    val useCompression: bool;
    val out: okio.Buffer;
    val out: okio.Buffer;
    fun adjustDynamicTableByteCount(): void {
        assigns nextHeaderIndex;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun clearDynamicTable(): void {
        assigns nextHeaderIndex;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun evictToRecoverBytes(arg0: int): int {
        assigns dynamicTableByteCount;
        assigns headerCount;
        assigns nextHeaderIndex;
    }
    
    fun insertIntoDynamicTable(arg0: okhttp3.internal.http2.Header): void {
        assigns nextHeaderIndex;
        assigns dynamicTable;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun resizeHeaderTable(arg0: int): void {
        assigns headerTableSizeSetting;
        assigns smallestHeaderTableSizeSetting;
        assigns emitDynamicTableSizeUpdate;
        assigns maxDynamicTableByteCount;
        assigns nextHeaderIndex;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun writeByteString(arg0: okio.ByteString): void;
    
    fun writeByteString(arg0: okio.ByteString): void;
    
    fun writeHeaders(arg0: java.util.List): void {
        assigns emitDynamicTableSizeUpdate;
        assigns smallestHeaderTableSizeSetting;
        assigns nextHeaderIndex;
        assigns dynamicTable;
        assigns headerCount;
        assigns dynamicTableByteCount;
    }
    
    fun writeInt(arg0: int, arg1: int, arg2: int): void;
}
automaton okhttp3.internal.http1.Http1ExchangeCodec (val arg0: okhttp3.OkHttpClient, val arg1: okhttp3.internal.connection.RealConnection, val arg2: okio.BufferedSource, val arg3: okio.BufferedSink) : okhttp3.internal.http1.Http1ExchangeCodec {
    val `state`: int;
    val headersReader: okhttp3.internal.http1.HeadersReader;
    val trailers: okhttp3.Headers;
    val client: okhttp3.OkHttpClient;
    val connection: okhttp3.internal.connection.RealConnection;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    val NO_CHUNK_YET: long;
    val STATE_IDLE: int;
    val STATE_OPEN_REQUEST_BODY: int;
    val STATE_WRITING_REQUEST_BODY: int;
    val STATE_READ_RESPONSE_HEADERS: int;
    val STATE_OPEN_RESPONSE_BODY: int;
    val STATE_READING_RESPONSE_BODY: int;
    val STATE_CLOSED: int;
    val Companion: okhttp3.internal.http1.Http1ExchangeCodec$Companion;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    fun access$detachTimeout(arg0: okhttp3.internal.http1.Http1ExchangeCodec, arg1: okio.ForwardingTimeout): void {
        assigns arg1.delegate;
    }
    
    fun access$detachTimeout(arg0: okhttp3.internal.http1.Http1ExchangeCodec, arg1: okio.ForwardingTimeout): void;
    
    fun access$getClient$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okhttp3.OkHttpClient;
    
    fun access$getHeadersReader$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okhttp3.internal.http1.HeadersReader;
    
    fun access$getSink$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okio.BufferedSink;
    
    fun access$getSink$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okio.BufferedSink;
    
    fun access$getSource$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okio.BufferedSource;
    
    fun access$getSource$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okio.BufferedSource;
    
    fun access$getState$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): int;
    
    fun access$getTrailers$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec): okhttp3.Headers;
    
    fun access$setState$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec, arg1: int): void {
        assigns arg0.`state`;
    }
    
    fun access$setTrailers$p(arg0: okhttp3.internal.http1.Http1ExchangeCodec, arg1: okhttp3.Headers): void {
        assigns arg0.trailers;
    }
    
    fun cancel(): void;
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: long): okio.Sink {
        assigns `state`;
    }
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: long): okio.Sink;
    
    fun detachTimeout(arg0: okio.ForwardingTimeout): void {
        assigns arg0.delegate;
    }
    
    fun detachTimeout(arg0: okio.ForwardingTimeout): void;
    
    fun finishRequest(): void;
    
    fun flushRequest(): void;
    
    fun getConnection(): okhttp3.internal.connection.RealConnection;
    
    fun isChunked(arg0: okhttp3.Response): bool;
    
    fun isChunked(arg0: okhttp3.Request): bool;
    
    fun isClosed(): bool;
    
    fun newChunkedSink(): okio.Sink {
        assigns `state`;
    }
    
    fun newChunkedSink(): okio.Sink;
    
    fun newChunkedSource(arg0: okhttp3.HttpUrl): okio.Source {
        assigns `state`;
    }
    
    fun newChunkedSource(arg0: okhttp3.HttpUrl): okio.Source;
    
    fun newFixedLengthSource(arg0: long): okio.Source {
        assigns `state`;
    }
    
    fun newFixedLengthSource(arg0: long): okio.Source;
    
    fun newKnownLengthSink(): okio.Sink {
        assigns `state`;
    }
    
    fun newKnownLengthSink(): okio.Sink;
    
    fun newUnknownLengthSource(): okio.Source {
        assigns `state`;
    }
    
    fun newUnknownLengthSource(): okio.Source;
    
    fun openResponseBodySource(arg0: okhttp3.Response): okio.Source {
        assigns `state`;
    }
    
    fun openResponseBodySource(arg0: okhttp3.Response): okio.Source;
    
    fun readResponseHeaders(arg0: bool): okhttp3.Response$Builder {
        assigns `state`;
    }
    
    fun reportedContentLength(arg0: okhttp3.Response): long;
    
    fun skipConnectBody(arg0: okhttp3.Response): void {
        assigns `state`;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    @Throws("java.lang.IllegalStateException", !`state` == 6)
    @Throws("java.lang.IllegalStateException", !`state` == 6 & `state` >= 6)
    @Throws("java.lang.IllegalStateException", !`state` == 6 & `state` <= 6)
    fun trailers(): okhttp3.Headers;
    
    fun writeRequest(arg0: okhttp3.Headers, arg1: java.lang.String): void {
        assigns `state`;
    }
    
    fun writeRequestHeaders(arg0: okhttp3.Request): void {
        assigns `state`;
    }
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource (val arg0: okhttp3.internal.http1.Http1ExchangeCodec) : okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource {
    val timeout: okio.ForwardingTimeout;
    val closed: bool;
    val this$0: okhttp3.internal.http1.Http1ExchangeCodec;
    val timeout: okio.ForwardingTimeout;
    fun getClosed(): bool;
    
    fun getTimeout(): okio.ForwardingTimeout;
    
    fun getTimeout(): okio.ForwardingTimeout;
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun responseBodyComplete$okhttp(): void {
        assigns timeout.delegate;
        assigns this$0.`state`;
    }
    
    fun setClosed(arg0: bool): void {
        assigns closed;
    }
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink (val arg0: okhttp3.internal.http1.Http1ExchangeCodec) : okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink {
    val timeout: okio.ForwardingTimeout;
    val closed: bool;
    val this$0: okhttp3.internal.http1.Http1ExchangeCodec;
    val timeout: okio.ForwardingTimeout;
    fun close(): void {
        assigns closed;
        assigns timeout.delegate;
        assigns this$0.`state`;
    }
    
    fun flush(): void;
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
    
    @Throws("java.lang.IllegalStateException", closed)
    fun write(arg0: okio.Buffer, arg1: long): void {
        assigns arg0.head;
        assigns arg0.head.prev;
        assigns arg0.head.next;
        assigns arg0.size;
        assigns arg0.head.pos;
    }
    
    fun write(arg0: okio.Buffer, arg1: long): void;
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource (val arg0: okhttp3.internal.http1.Http1ExchangeCodec, val arg1: okhttp3.HttpUrl) : okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource {
    val bytesRemainingInChunk: long;
    val hasMoreChunks: bool;
    val `url`: okhttp3.HttpUrl;
    val this$0: okhttp3.internal.http1.Http1ExchangeCodec;
    fun close(): void {
        assigns bytesRemainingInChunk;
        assigns hasMoreChunks;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns bytesRemainingInChunk;
        assigns hasMoreChunks;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun readChunkSize(): void {
        assigns bytesRemainingInChunk;
        assigns hasMoreChunks;
        assigns this$0.trailers;
    }
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$Companion : okhttp3.internal.http1.Http1ExchangeCodec$Companion {
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource (val arg0: okhttp3.internal.http1.Http1ExchangeCodec, val arg1: long) : okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource {
    val bytesRemaining: long;
    val this$0: okhttp3.internal.http1.Http1ExchangeCodec;
    fun close(): void {
        assigns bytesRemaining;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns bytesRemaining;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink (val arg0: okhttp3.internal.http1.Http1ExchangeCodec) : okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink {
    val timeout: okio.ForwardingTimeout;
    val closed: bool;
    val this$0: okhttp3.internal.http1.Http1ExchangeCodec;
    val timeout: okio.ForwardingTimeout;
    fun close(): void {
        assigns closed;
        assigns timeout.delegate;
        assigns this$0.`state`;
    }
    
    fun flush(): void;
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
    
    @Throws("java.lang.IllegalStateException", closed)
    fun write(arg0: okio.Buffer, arg1: long): void {
        assigns arg0.head;
        assigns arg0.head.prev;
        assigns arg0.head.next;
        assigns arg0.size;
        assigns arg0.head.pos;
    }
    
    fun write(arg0: okio.Buffer, arg1: long): void;
}
automaton okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource (val arg0: okhttp3.internal.http1.Http1ExchangeCodec) : okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource {
    val inputExhausted: bool;
    val this$0: okhttp3.internal.http1.Http1ExchangeCodec;
    fun close(): void;
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns inputExhausted;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
}
automaton okhttp3.internal.http2.Http2 : okhttp3.internal.http2.Http2 {
    val CONNECTION_PREFACE: okio.ByteString;
    val INITIAL_MAX_FRAME_SIZE: int;
    val TYPE_DATA: int;
    val TYPE_HEADERS: int;
    val TYPE_PRIORITY: int;
    val TYPE_RST_STREAM: int;
    val TYPE_SETTINGS: int;
    val TYPE_PUSH_PROMISE: int;
    val TYPE_PING: int;
    val TYPE_GOAWAY: int;
    val TYPE_WINDOW_UPDATE: int;
    val TYPE_CONTINUATION: int;
    val FLAG_NONE: int;
    val FLAG_ACK: int;
    val FLAG_END_STREAM: int;
    val FLAG_END_HEADERS: int;
    val FLAG_END_PUSH_PROMISE: int;
    val FLAG_PADDED: int;
    val FLAG_PRIORITY: int;
    val FLAG_COMPRESSED: int;
    val FRAME_NAMES: array<java.lang.String>;
    val FLAGS: array<java.lang.String>;
    val BINARY: array<java.lang.String>;
    val INSTANCE: okhttp3.internal.http2.Http2;
    val CONNECTION_PREFACE: okio.ByteString;
    fun formatFlags(arg0: int, arg1: int): java.lang.String;
    
    fun frameLog(arg0: bool, arg1: int, arg2: int, arg3: int, arg4: int): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
        assigns CONNECTION_PREFACE;
        assigns FRAME_NAMES;
        assigns FLAGS;
        assigns BINARY;
    }
}
automaton okhttp3.internal.http2.Http2Connection (val arg0: okhttp3.internal.http2.Http2Connection$Builder) : okhttp3.internal.http2.Http2Connection {
    val client: bool;
    val listener: okhttp3.internal.http2.Http2Connection$Listener;
    val streams: java.util.Map;
    val connectionName: java.lang.String;
    val lastGoodStreamId: int;
    val nextStreamId: int;
    val isShutdown: bool;
    val taskRunner: okhttp3.internal.concurrent.TaskRunner;
    val writerQueue: okhttp3.internal.concurrent.TaskQueue;
    val pushQueue: okhttp3.internal.concurrent.TaskQueue;
    val settingsListenerQueue: okhttp3.internal.concurrent.TaskQueue;
    val pushObserver: okhttp3.internal.http2.PushObserver;
    val intervalPingsSent: long;
    val intervalPongsReceived: long;
    val degradedPingsSent: long;
    val degradedPongsReceived: long;
    val awaitPingsSent: long;
    val awaitPongsReceived: long;
    val degradedPongDeadlineNs: long;
    val okHttpSettings: okhttp3.internal.http2.Settings;
    val peerSettings: okhttp3.internal.http2.Settings;
    val readBytesTotal: long;
    val readBytesAcknowledged: long;
    val writeBytesTotal: long;
    val writeBytesMaximum: long;
    val socket: java.net.Socket;
    val writer: okhttp3.internal.http2.Http2Writer;
    val readerRunnable: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    val currentPushRequests: java.util.Set;
    val OKHTTP_CLIENT_WINDOW_SIZE: int;
    val DEFAULT_SETTINGS: okhttp3.internal.http2.Settings;
    val INTERVAL_PING: int;
    val DEGRADED_PING: int;
    val AWAIT_PING: int;
    val DEGRADED_PONG_TIMEOUT_NS: int;
    val Companion: okhttp3.internal.http2.Http2Connection$Companion;
    fun access$failConnection(arg0: okhttp3.internal.http2.Http2Connection, arg1: java.io.IOException): void {
        assigns arg0.isShutdown;
    }
    
    fun access$getAwaitPongsReceived$p(arg0: okhttp3.internal.http2.Http2Connection): long;
    
    fun access$getCurrentPushRequests$p(arg0: okhttp3.internal.http2.Http2Connection): java.util.Set;
    
    fun access$getDEFAULT_SETTINGS$cp(): okhttp3.internal.http2.Settings;
    
    fun access$getDegradedPongsReceived$p(arg0: okhttp3.internal.http2.Http2Connection): long;
    
    fun access$getIntervalPingsSent$p(arg0: okhttp3.internal.http2.Http2Connection): long;
    
    fun access$getIntervalPongsReceived$p(arg0: okhttp3.internal.http2.Http2Connection): long;
    
    fun access$getPushObserver$p(arg0: okhttp3.internal.http2.Http2Connection): okhttp3.internal.http2.PushObserver;
    
    fun access$getSettingsListenerQueue$p(arg0: okhttp3.internal.http2.Http2Connection): okhttp3.internal.concurrent.TaskQueue;
    
    fun access$getTaskRunner$p(arg0: okhttp3.internal.http2.Http2Connection): okhttp3.internal.concurrent.TaskRunner;
    
    fun access$getWriteBytesMaximum$p(arg0: okhttp3.internal.http2.Http2Connection): long;
    
    fun access$getWriterQueue$p(arg0: okhttp3.internal.http2.Http2Connection): okhttp3.internal.concurrent.TaskQueue;
    
    fun access$isShutdown$p(arg0: okhttp3.internal.http2.Http2Connection): bool;
    
    fun access$setAwaitPongsReceived$p(arg0: okhttp3.internal.http2.Http2Connection, arg1: long): void {
        assigns arg0.awaitPongsReceived;
    }
    
    fun access$setDegradedPongsReceived$p(arg0: okhttp3.internal.http2.Http2Connection, arg1: long): void {
        assigns arg0.degradedPongsReceived;
    }
    
    fun access$setIntervalPingsSent$p(arg0: okhttp3.internal.http2.Http2Connection, arg1: long): void {
        assigns arg0.intervalPingsSent;
    }
    
    fun access$setIntervalPongsReceived$p(arg0: okhttp3.internal.http2.Http2Connection, arg1: long): void {
        assigns arg0.intervalPongsReceived;
    }
    
    fun access$setShutdown$p(arg0: okhttp3.internal.http2.Http2Connection, arg1: bool): void {
        assigns arg0.isShutdown;
    }
    
    fun access$setWriteBytesMaximum$p(arg0: okhttp3.internal.http2.Http2Connection, arg1: long): void {
        assigns arg0.writeBytesMaximum;
    }
    
    fun awaitPong(): void;
    
    fun close(): void {
        assigns isShutdown;
    }
    
    fun close$okhttp(arg0: okhttp3.internal.http2.ErrorCode, arg1: okhttp3.internal.http2.ErrorCode, arg2: java.io.IOException): void {
        assigns isShutdown;
    }
    
    fun failConnection(arg0: java.io.IOException): void {
        assigns isShutdown;
    }
    
    @Throws("java.io.IOException", closed)
    fun flush(): void;
    
    fun getClient$okhttp(): bool;
    
    fun getConnectionName$okhttp(): java.lang.String;
    
    fun getLastGoodStreamId$okhttp(): int;
    
    fun getListener$okhttp(): okhttp3.internal.http2.Http2Connection$Listener;
    
    fun getNextStreamId$okhttp(): int;
    
    fun getOkHttpSettings(): okhttp3.internal.http2.Settings;
    
    fun getPeerSettings(): okhttp3.internal.http2.Settings;
    
    fun getReadBytesAcknowledged(): long;
    
    fun getReadBytesTotal(): long;
    
    fun getReaderRunnable(): okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    
    fun getSocket$okhttp(): java.net.Socket;
    
    fun getStream(arg0: int): okhttp3.internal.http2.Http2Stream;
    
    fun getStreams$okhttp(): java.util.Map;
    
    fun getWriteBytesMaximum(): long;
    
    fun getWriteBytesTotal(): long;
    
    fun getWriter(): okhttp3.internal.http2.Http2Writer;
    
    fun isHealthy(arg0: long): bool;
    
    fun newStream(arg0: java.util.List, arg1: bool): okhttp3.internal.http2.Http2Stream {
        assigns nextStreamId;
        assigns isShutdown;
    }
    
    fun newStream(arg0: int, arg1: java.util.List, arg2: bool): okhttp3.internal.http2.Http2Stream {
        assigns nextStreamId;
        assigns isShutdown;
    }
    
    fun openStreamCount(): int;
    
    fun pushDataLater$okhttp(arg0: int, arg1: okio.BufferedSource, arg2: int, arg3: bool): void {
        assigns arg1;
    }
    
    fun pushDataLater$okhttp(arg0: int, arg1: okio.BufferedSource, arg2: int, arg3: bool): void;
    
    fun pushHeadersLater$okhttp(arg0: int, arg1: java.util.List, arg2: bool): void;
    
    fun pushRequestLater$okhttp(arg0: int, arg1: java.util.List): void;
    
    fun pushResetLater$okhttp(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    fun pushStream(arg0: int, arg1: java.util.List, arg2: bool): okhttp3.internal.http2.Http2Stream {
        assigns nextStreamId;
        assigns isShutdown;
    }
    
    fun pushedStream$okhttp(arg0: int): bool;
    
    fun removeStream$okhttp(arg0: int): okhttp3.internal.http2.Http2Stream;
    
    fun sendDegradedPingLater$okhttp(): void {
        assigns degradedPingsSent;
        assigns degradedPongDeadlineNs;
    }
    
    fun setLastGoodStreamId$okhttp(arg0: int): void {
        assigns lastGoodStreamId;
    }
    
    fun setNextStreamId$okhttp(arg0: int): void {
        assigns nextStreamId;
    }
    
    fun setPeerSettings(arg0: okhttp3.internal.http2.Settings): void {
        assigns peerSettings;
    }
    
    fun setSettings(arg0: okhttp3.internal.http2.Settings): void;
    
    fun shutdown(arg0: okhttp3.internal.http2.ErrorCode): void {
        assigns isShutdown;
    }
    
    fun start(arg0: bool, arg1: okhttp3.internal.concurrent.TaskRunner): void {
        assigns arg1.nextQueueName;
    }
    
    fun start(arg0: bool): void;
    
    fun start(): void;
    
    fun start$default(arg0: okhttp3.internal.http2.Http2Connection, arg1: bool, arg2: okhttp3.internal.concurrent.TaskRunner, arg3: int, arg4: java.lang.Object): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns DEFAULT_SETTINGS;
    }
    
    fun updateConnectionFlowControl$okhttp(arg0: long): void {
        assigns readBytesTotal;
        assigns readBytesAcknowledged;
    }
    
    fun writeData(arg0: int, arg1: bool, arg2: okio.Buffer, arg3: long): void {
        assigns writeBytesTotal;
        assigns arg2.head;
        assigns arg2.head.prev;
        assigns arg2.head.next;
        assigns arg2.size;
        assigns arg2.head.pos;
    }
    
    fun writeData(arg0: int, arg1: bool, arg2: okio.Buffer, arg3: long): void;
    
    fun writeHeaders$okhttp(arg0: int, arg1: bool, arg2: java.util.List): void;
    
    fun writePing(arg0: bool, arg1: int, arg2: int): void {
        assigns isShutdown;
    }
    
    fun writePing(): void {
        assigns awaitPingsSent;
        assigns isShutdown;
    }
    
    fun writePingAndAwaitPong(): void {
        assigns awaitPingsSent;
        assigns isShutdown;
    }
    
    @Throws("java.lang.IllegalArgumentException", !closed & httpCode == -1)
    @Throws("java.io.IOException", closed)
    fun writeSynReset$okhttp(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    fun writeSynResetLater$okhttp(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    fun writeWindowUpdateLater$okhttp(arg0: int, arg1: long): void;
}
automaton okhttp3.internal.http2.Http2Connection$$special$$inlined$schedule$1 (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: okhttp3.internal.http2.Http2Connection, val arg3: long) : okhttp3.internal.http2.Http2Connection$$special$$inlined$schedule$1 {
    val $name: java.lang.String;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $pingIntervalNanos$inlined: long;
    fun runOnce(): long {
        assigns this$0.intervalPingsSent;
        assigns this$0.isShutdown;
    }
}
automaton okhttp3.internal.http2.Http2Connection$Builder (val arg0: bool, val arg1: okhttp3.internal.concurrent.TaskRunner) : okhttp3.internal.http2.Http2Connection$Builder {
    val socket: java.net.Socket;
    val connectionName: java.lang.String;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    val listener: okhttp3.internal.http2.Http2Connection$Listener;
    val pushObserver: okhttp3.internal.http2.PushObserver;
    val pingIntervalMillis: int;
    val client: bool;
    val taskRunner: okhttp3.internal.concurrent.TaskRunner;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    fun build(): okhttp3.internal.http2.Http2Connection;
    
    fun getClient$okhttp(): bool;
    
    fun getConnectionName$okhttp(): java.lang.String;
    
    fun getListener$okhttp(): okhttp3.internal.http2.Http2Connection$Listener;
    
    fun getPingIntervalMillis$okhttp(): int;
    
    fun getPushObserver$okhttp(): okhttp3.internal.http2.PushObserver;
    
    fun getSink$okhttp(): okio.BufferedSink;
    
    fun getSink$okhttp(): okio.BufferedSink;
    
    fun getSocket$okhttp(): java.net.Socket;
    
    fun getSource$okhttp(): okio.BufferedSource;
    
    fun getSource$okhttp(): okio.BufferedSource;
    
    fun getTaskRunner$okhttp(): okhttp3.internal.concurrent.TaskRunner;
    
    fun listener(arg0: okhttp3.internal.http2.Http2Connection$Listener): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun pingIntervalMillis(arg0: int): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun pushObserver(arg0: okhttp3.internal.http2.PushObserver): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun setClient$okhttp(arg0: bool): void {
        assigns client;
    }
    
    fun setConnectionName$okhttp(arg0: java.lang.String): void {
        assigns connectionName;
    }
    
    fun setListener$okhttp(arg0: okhttp3.internal.http2.Http2Connection$Listener): void {
        assigns listener;
    }
    
    fun setPingIntervalMillis$okhttp(arg0: int): void {
        assigns pingIntervalMillis;
    }
    
    fun setPushObserver$okhttp(arg0: okhttp3.internal.http2.PushObserver): void {
        assigns pushObserver;
    }
    
    fun setSink$okhttp(arg0: okio.BufferedSink): void {
        assigns sink;
    }
    
    fun setSink$okhttp(arg0: okio.BufferedSink): void;
    
    fun setSocket$okhttp(arg0: java.net.Socket): void {
        assigns socket;
    }
    
    fun setSource$okhttp(arg0: okio.BufferedSource): void {
        assigns source;
    }
    
    fun setSource$okhttp(arg0: okio.BufferedSource): void;
    
    fun socket(arg0: java.net.Socket, arg1: java.lang.String, arg2: okio.BufferedSource, arg3: okio.BufferedSink): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket(arg0: java.net.Socket, arg1: java.lang.String, arg2: okio.BufferedSource): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket(arg0: java.net.Socket, arg1: java.lang.String): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket(arg0: java.net.Socket): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket(arg0: java.net.Socket, arg1: java.lang.String, arg2: okio.BufferedSource, arg3: okio.BufferedSink): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket(arg0: java.net.Socket, arg1: java.lang.String, arg2: okio.BufferedSource): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket$default(arg0: okhttp3.internal.http2.Http2Connection$Builder, arg1: java.net.Socket, arg2: java.lang.String, arg3: okio.BufferedSource, arg4: okio.BufferedSink, arg5: int, arg6: java.lang.Object): okhttp3.internal.http2.Http2Connection$Builder;
    
    fun socket$default(arg0: okhttp3.internal.http2.Http2Connection$Builder, arg1: java.net.Socket, arg2: java.lang.String, arg3: okio.BufferedSource, arg4: okio.BufferedSink, arg5: int, arg6: java.lang.Object): okhttp3.internal.http2.Http2Connection$Builder;
}
automaton okhttp3.internal.http2.Http2Connection$Companion : okhttp3.internal.http2.Http2Connection$Companion {
    fun getDEFAULT_SETTINGS(): okhttp3.internal.http2.Settings;
}
automaton okhttp3.internal.http2.Http2Connection$Listener : okhttp3.internal.http2.Http2Connection$Listener {
    val REFUSE_INCOMING_STREAMS: okhttp3.internal.http2.Http2Connection$Listener;
    val Companion: okhttp3.internal.http2.Http2Connection$Listener$Companion;
    fun onSettings(arg0: okhttp3.internal.http2.Http2Connection, arg1: okhttp3.internal.http2.Settings): void;
    
    fun onStream(arg0: okhttp3.internal.http2.Http2Stream): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.http2.Http2Connection$Listener$Companion : okhttp3.internal.http2.Http2Connection$Listener$Companion {
}
automaton okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 : okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 {
    fun onStream(arg0: okhttp3.internal.http2.Http2Stream): void {
        assigns arg0.errorCode;
        assigns arg0.errorException;
    }
}
automaton okhttp3.internal.http2.Http2Connection$ReaderRunnable (val arg0: okhttp3.internal.http2.Http2Connection, val arg1: okhttp3.internal.http2.Http2Reader) : okhttp3.internal.http2.Http2Connection$ReaderRunnable {
    val reader: okhttp3.internal.http2.Http2Reader;
    val this$0: okhttp3.internal.http2.Http2Connection;
    fun ackSettings(): void;
    
    fun alternateService(arg0: int, arg1: java.lang.String, arg2: okio.ByteString, arg3: java.lang.String, arg4: int, arg5: long): void;
    
    fun alternateService(arg0: int, arg1: java.lang.String, arg2: okio.ByteString, arg3: java.lang.String, arg4: int, arg5: long): void;
    
    fun applyAndAckSettings(arg0: bool, arg1: okhttp3.internal.http2.Settings): void {
        assigns this$0.isShutdown;
    }
    
    fun data(arg0: bool, arg1: int, arg2: okio.BufferedSource, arg3: int): void {
        assigns arg2;
    }
    
    fun data(arg0: bool, arg1: int, arg2: okio.BufferedSource, arg3: int): void;
    
    fun getReader$okhttp(): okhttp3.internal.http2.Http2Reader;
    
    fun goAway(arg0: int, arg1: okhttp3.internal.http2.ErrorCode, arg2: okio.ByteString): void {
        assigns this$0.isShutdown;
    }
    
    fun goAway(arg0: int, arg1: okhttp3.internal.http2.ErrorCode, arg2: okio.ByteString): void;
    
    fun headers(arg0: bool, arg1: int, arg2: int, arg3: java.util.List): void;
    
    fun invoke(): void;
    
    fun invoke(): java.lang.Object;
    
    fun ping(arg0: bool, arg1: int, arg2: int): void {
        assigns this$0.intervalPongsReceived;
        assigns this$0.degradedPongsReceived;
        assigns this$0.awaitPongsReceived;
    }
    
    fun priority(arg0: int, arg1: int, arg2: int, arg3: bool): void;
    
    fun pushPromise(arg0: int, arg1: int, arg2: java.util.List): void;
    
    fun rstStream(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    fun settings(arg0: bool, arg1: okhttp3.internal.http2.Settings): void;
    
    fun windowUpdate(arg0: int, arg1: long): void {
        assigns this$0.writeBytesMaximum;
    }
}
automaton okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection$ReaderRunnable, val arg5: bool, val arg6: `<UNRESOLVED_TYPE>`, val arg7: okhttp3.internal.http2.Settings, val arg8: `<UNRESOLVED_TYPE>`, val arg9: `<UNRESOLVED_TYPE>`) : okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    val $clearPrevious$inlined: bool;
    val $newPeerSettings$inlined: `<UNRESOLVED_TYPE>`;
    val $settings$inlined: okhttp3.internal.http2.Settings;
    val $delta$inlined: `<UNRESOLVED_TYPE>`;
    val $streamsToNotify$inlined: `<UNRESOLVED_TYPE>`;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Stream, val arg5: okhttp3.internal.http2.Http2Connection$ReaderRunnable, val arg6: okhttp3.internal.http2.Http2Stream, val arg7: int, val arg8: java.util.List, val arg9: bool) : okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val $newStream$inlined: okhttp3.internal.http2.Http2Stream;
    val this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    val $stream$inlined: okhttp3.internal.http2.Http2Stream;
    val $streamId$inlined: int;
    val $headerBlock$inlined: java.util.List;
    val $inFinished$inlined: bool;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection$ReaderRunnable, val arg5: int, val arg6: int) : okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    val $payload1$inlined: int;
    val $payload2$inlined: int;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection$ReaderRunnable, val arg5: bool, val arg6: okhttp3.internal.http2.Settings) : okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection$ReaderRunnable;
    val $clearPrevious$inlined: bool;
    val $settings$inlined: okhttp3.internal.http2.Settings;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection, val arg5: int, val arg6: okio.Buffer, val arg7: int, val arg8: bool) : okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $streamId$inlined: int;
    val $buffer$inlined: okio.Buffer;
    val $byteCount$inlined: int;
    val $inFinished$inlined: bool;
    val $buffer$inlined: okio.Buffer;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection, val arg5: int, val arg6: java.util.List, val arg7: bool) : okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $streamId$inlined: int;
    val $requestHeaders$inlined: java.util.List;
    val $inFinished$inlined: bool;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection, val arg5: int, val arg6: java.util.List) : okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $streamId$inlined: int;
    val $requestHeaders$inlined: java.util.List;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection, val arg5: int, val arg6: okhttp3.internal.http2.ErrorCode) : okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $streamId$inlined: int;
    val $errorCode$inlined: okhttp3.internal.http2.ErrorCode;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection) : okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    fun runOnce(): long;
}
automaton okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection, val arg5: int, val arg6: okhttp3.internal.http2.ErrorCode) : okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $streamId$inlined: int;
    val $errorCode$inlined: okhttp3.internal.http2.ErrorCode;
    fun runOnce(): long {
        assigns this$0.isShutdown;
    }
}
automaton okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.http2.Http2Connection, val arg5: int, val arg6: long) : okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.http2.Http2Connection;
    val $streamId$inlined: int;
    val $unacknowledgedBytesRead$inlined: long;
    fun runOnce(): long {
        assigns this$0.isShutdown;
    }
}
automaton okhttp3.internal.http2.Http2ExchangeCodec (val arg0: okhttp3.OkHttpClient, val arg1: okhttp3.internal.connection.RealConnection, val arg2: okhttp3.internal.http.RealInterceptorChain, val arg3: okhttp3.internal.http2.Http2Connection) : okhttp3.internal.http2.Http2ExchangeCodec {
    val stream: okhttp3.internal.http2.Http2Stream;
    val protocol: okhttp3.Protocol;
    val canceled: bool;
    val connection: okhttp3.internal.connection.RealConnection;
    val chain: okhttp3.internal.http.RealInterceptorChain;
    val http2Connection: okhttp3.internal.http2.Http2Connection;
    val CONNECTION: java.lang.String;
    val HOST: java.lang.String;
    val KEEP_ALIVE: java.lang.String;
    val PROXY_CONNECTION: java.lang.String;
    val TRANSFER_ENCODING: java.lang.String;
    val TE: java.lang.String;
    val ENCODING: java.lang.String;
    val UPGRADE: java.lang.String;
    val HTTP_2_SKIPPED_REQUEST_HEADERS: java.util.List;
    val HTTP_2_SKIPPED_RESPONSE_HEADERS: java.util.List;
    val Companion: okhttp3.internal.http2.Http2ExchangeCodec$Companion;
    fun access$getHTTP_2_SKIPPED_REQUEST_HEADERS$cp(): java.util.List;
    
    fun access$getHTTP_2_SKIPPED_RESPONSE_HEADERS$cp(): java.util.List;
    
    fun cancel(): void {
        assigns canceled;
    }
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: long): okio.Sink;
    
    fun createRequestBody(arg0: okhttp3.Request, arg1: long): okio.Sink;
    
    fun finishRequest(): void;
    
    @Throws("java.io.IOException", closed)
    fun flushRequest(): void;
    
    fun getConnection(): okhttp3.internal.connection.RealConnection;
    
    fun openResponseBodySource(arg0: okhttp3.Response): okio.Source;
    
    fun openResponseBodySource(arg0: okhttp3.Response): okio.Source;
    
    fun readResponseHeaders(arg0: bool): okhttp3.Response$Builder;
    
    fun reportedContentLength(arg0: okhttp3.Response): long;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns HTTP_2_SKIPPED_REQUEST_HEADERS;
        assigns HTTP_2_SKIPPED_RESPONSE_HEADERS;
    }
    
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'")
    @Throws("java.lang.Throwable", errorCode != "'null-const'")
    fun trailers(): okhttp3.Headers;
    
    fun writeRequestHeaders(arg0: okhttp3.Request): void {
        assigns stream;
    }
}
automaton okhttp3.internal.http2.Http2ExchangeCodec$Companion : okhttp3.internal.http2.Http2ExchangeCodec$Companion {
    fun http2HeadersList(arg0: okhttp3.Request): java.util.List;
    
    fun readHttp2HeadersList(arg0: okhttp3.Headers, arg1: okhttp3.Protocol): okhttp3.Response$Builder;
}
automaton okhttp3.internal.http2.Http2Reader (val arg0: okio.BufferedSource, val arg1: bool) : okhttp3.internal.http2.Http2Reader {
    val continuation: okhttp3.internal.http2.Http2Reader$ContinuationSource;
    val hpackReader: okhttp3.internal.http2.Hpack$Reader;
    val source: okio.BufferedSource;
    val client: bool;
    val logger: java.util.logging.Logger;
    val Companion: okhttp3.internal.http2.Http2Reader$Companion;
    val source: okio.BufferedSource;
    fun access$getLogger$cp(): java.util.logging.Logger;
    
    fun close(): void;
    
    fun nextFrame(arg0: bool, arg1: okhttp3.internal.http2.Http2Reader$Handler): bool {
        assigns source;
    }
    
    fun readConnectionPreface(arg0: okhttp3.internal.http2.Http2Reader$Handler): void;
    
    fun readData(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    @Throws("java.io.IOException", !arg3 == 0 & arg3 <= 0)
    @Throws("java.io.IOException", !arg3 == 0 & arg3 >= 0)
    @Throws("java.io.IOException", !arg3 == 0)
    fun readGoAway(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun readHeaderBlock(arg0: int, arg1: int, arg2: int, arg3: int): java.util.List;
    
    fun readHeaders(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun readPing(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    @Throws("java.io.IOException", arg3 == 0)
    fun readPriority(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun readPriority(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int): void;
    
    fun readPushPromise(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun readRstStream(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun readSettings(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun readWindowUpdate(arg0: okhttp3.internal.http2.Http2Reader$Handler, arg1: int, arg2: int, arg3: int): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns logger;
    }
}
automaton okhttp3.internal.http2.Http2Reader$Companion : okhttp3.internal.http2.Http2Reader$Companion {
    fun getLogger(): java.util.logging.Logger;
    
    fun lengthWithoutPadding(arg0: int, arg1: int, arg2: int): int;
}
automaton okhttp3.internal.http2.Http2Reader$ContinuationSource (val arg0: okio.BufferedSource) : okhttp3.internal.http2.Http2Reader$ContinuationSource {
    val length: int;
    val flags: int;
    val streamId: int;
    val left: int;
    val padding: int;
    val source: okio.BufferedSource;
    val source: okio.BufferedSource;
    fun close(): void;
    
    fun getFlags(): int;
    
    fun getLeft(): int;
    
    fun getLength(): int;
    
    fun getPadding(): int;
    
    fun getStreamId(): int;
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns padding;
        assigns left;
        assigns length;
        assigns flags;
        assigns streamId;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun readContinuationHeader(): void {
        assigns left;
        assigns length;
        assigns flags;
        assigns streamId;
        assigns source;
    }
    
    fun setFlags(arg0: int): void {
        assigns flags;
    }
    
    fun setLeft(arg0: int): void {
        assigns left;
    }
    
    fun setLength(arg0: int): void {
        assigns length;
    }
    
    fun setPadding(arg0: int): void {
        assigns padding;
    }
    
    fun setStreamId(arg0: int): void {
        assigns streamId;
    }
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
}
automaton okhttp3.internal.http2.Http2Reader$Handler : okhttp3.internal.http2.Http2Reader$Handler {
    fun ackSettings(): void;
    
    fun alternateService(arg0: int, arg1: java.lang.String, arg2: okio.ByteString, arg3: java.lang.String, arg4: int, arg5: long): void;
    
    fun alternateService(arg0: int, arg1: java.lang.String, arg2: okio.ByteString, arg3: java.lang.String, arg4: int, arg5: long): void;
    
    fun data(arg0: bool, arg1: int, arg2: okio.BufferedSource, arg3: int): void;
    
    fun data(arg0: bool, arg1: int, arg2: okio.BufferedSource, arg3: int): void;
    
    fun goAway(arg0: int, arg1: okhttp3.internal.http2.ErrorCode, arg2: okio.ByteString): void;
    
    fun goAway(arg0: int, arg1: okhttp3.internal.http2.ErrorCode, arg2: okio.ByteString): void;
    
    fun headers(arg0: bool, arg1: int, arg2: int, arg3: java.util.List): void;
    
    fun ping(arg0: bool, arg1: int, arg2: int): void;
    
    fun priority(arg0: int, arg1: int, arg2: int, arg3: bool): void;
    
    fun pushPromise(arg0: int, arg1: int, arg2: java.util.List): void;
    
    fun rstStream(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    fun settings(arg0: bool, arg1: okhttp3.internal.http2.Settings): void;
    
    fun windowUpdate(arg0: int, arg1: long): void;
}
automaton okhttp3.internal.http2.Http2Stream (val arg0: int, val arg1: okhttp3.internal.http2.Http2Connection, val arg2: bool, val arg3: bool, val arg4: okhttp3.Headers) : okhttp3.internal.http2.Http2Stream {
    val readBytesTotal: long;
    val readBytesAcknowledged: long;
    val writeBytesTotal: long;
    val writeBytesMaximum: long;
    val headersQueue: java.util.ArrayDeque;
    val hasResponseHeaders: bool;
    val source: okhttp3.internal.http2.Http2Stream$FramingSource;
    val sink: okhttp3.internal.http2.Http2Stream$FramingSink;
    val readTimeout: okhttp3.internal.http2.Http2Stream$StreamTimeout;
    val writeTimeout: okhttp3.internal.http2.Http2Stream$StreamTimeout;
    val errorCode: okhttp3.internal.http2.ErrorCode;
    val errorException: java.io.IOException;
    val id: int;
    val connection: okhttp3.internal.http2.Http2Connection;
    val EMIT_BUFFER_SIZE: long;
    val Companion: okhttp3.internal.http2.Http2Stream$Companion;
    fun addBytesToWriteWindow(arg0: long): void {
        assigns writeBytesMaximum;
    }
    
    fun cancelStreamIfNecessary$okhttp(): void {
        assigns errorCode;
        assigns errorException;
    }
    
    @Throws("java.lang.Throwable", !closed & !finished & errorCode != "'null-const'")
    @Throws("java.io.IOException", closed)
    @Throws("java.io.IOException", finished)
    @Throws("java.io.IOException", closed & !finished)
    @Throws("java.io.IOException", finished & !closed)
    fun checkOutNotClosed$okhttp(): void;
    
    fun close(arg0: okhttp3.internal.http2.ErrorCode, arg1: java.io.IOException): void {
        assigns errorCode;
        assigns errorException;
    }
    
    fun closeInternal(arg0: okhttp3.internal.http2.ErrorCode, arg1: java.io.IOException): bool {
        assigns errorCode;
        assigns errorException;
    }
    
    fun closeLater(arg0: okhttp3.internal.http2.ErrorCode): void {
        assigns errorCode;
        assigns errorException;
    }
    
    fun enqueueTrailers(arg0: okhttp3.Headers): void;
    
    fun getConnection(): okhttp3.internal.http2.Http2Connection;
    
    fun getErrorCode$okhttp(): okhttp3.internal.http2.ErrorCode;
    
    fun getErrorException$okhttp(): java.io.IOException;
    
    fun getId(): int;
    
    fun getReadBytesAcknowledged(): long;
    
    fun getReadBytesTotal(): long;
    
    fun getReadTimeout$okhttp(): okhttp3.internal.http2.Http2Stream$StreamTimeout;
    
    fun getSink(): okio.Sink;
    
    fun getSink(): okio.Sink;
    
    fun getSink$okhttp(): okhttp3.internal.http2.Http2Stream$FramingSink;
    
    fun getSource(): okio.Source;
    
    fun getSource(): okio.Source;
    
    fun getSource$okhttp(): okhttp3.internal.http2.Http2Stream$FramingSource;
    
    fun getWriteBytesMaximum(): long;
    
    fun getWriteBytesTotal(): long;
    
    fun getWriteTimeout$okhttp(): okhttp3.internal.http2.Http2Stream$StreamTimeout;
    
    fun isLocallyInitiated(): bool;
    
    fun isOpen(): bool;
    
    fun readTimeout(): okio.Timeout;
    
    fun readTimeout(): okio.Timeout;
    
    fun receiveData(arg0: okio.BufferedSource, arg1: int): void {
        assigns arg0;
    }
    
    fun receiveData(arg0: okio.BufferedSource, arg1: int): void;
    
    fun receiveHeaders(arg0: okhttp3.Headers, arg1: bool): void {
        assigns hasResponseHeaders;
    }
    
    fun receiveRstStream(arg0: okhttp3.internal.http2.ErrorCode): void {
        assigns errorCode;
    }
    
    fun setErrorCode$okhttp(arg0: okhttp3.internal.http2.ErrorCode): void {
        assigns errorCode;
    }
    
    fun setErrorException$okhttp(arg0: java.io.IOException): void {
        assigns errorException;
    }
    
    fun setReadBytesAcknowledged$okhttp(arg0: long): void {
        assigns readBytesAcknowledged;
    }
    
    fun setReadBytesTotal$okhttp(arg0: long): void {
        assigns readBytesTotal;
    }
    
    fun setWriteBytesMaximum$okhttp(arg0: long): void {
        assigns writeBytesMaximum;
    }
    
    fun setWriteBytesTotal$okhttp(arg0: long): void {
        assigns writeBytesTotal;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun takeHeaders(): okhttp3.Headers;
    
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'")
    @Throws("java.lang.Throwable", errorCode != "'null-const'")
    fun trailers(): okhttp3.Headers;
    
    fun waitForIo$okhttp(): void;
    
    fun writeHeaders(arg0: java.util.List, arg1: bool, arg2: bool): void {
        assigns hasResponseHeaders;
    }
    
    fun writeTimeout(): okio.Timeout;
    
    fun writeTimeout(): okio.Timeout;
}
automaton okhttp3.internal.http2.Http2Stream$Companion : okhttp3.internal.http2.Http2Stream$Companion {
}
automaton okhttp3.internal.http2.Http2Stream$FramingSink (val arg0: okhttp3.internal.http2.Http2Stream, val arg1: bool) : okhttp3.internal.http2.Http2Stream$FramingSink {
    val sendBuffer: okio.Buffer;
    val trailers: okhttp3.Headers;
    val closed: bool;
    val finished: bool;
    val this$0: okhttp3.internal.http2.Http2Stream;
    val sendBuffer: okio.Buffer;
    fun close(): void {
        assigns closed;
    }
    
    fun emitFrame(arg0: bool): void;
    
    fun flush(): void;
    
    fun getClosed(): bool;
    
    fun getFinished(): bool;
    
    fun getTrailers(): okhttp3.Headers;
    
    fun setClosed(arg0: bool): void {
        assigns closed;
    }
    
    fun setFinished(arg0: bool): void {
        assigns finished;
    }
    
    fun setTrailers(arg0: okhttp3.Headers): void {
        assigns trailers;
    }
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
    
    fun write(arg0: okio.Buffer, arg1: long): void {
        assigns arg0.head;
        assigns arg0.head.prev;
        assigns arg0.head.next;
        assigns arg0.size;
    }
    
    fun write(arg0: okio.Buffer, arg1: long): void;
}
automaton okhttp3.internal.http2.Http2Stream$FramingSource (val arg0: okhttp3.internal.http2.Http2Stream, val arg1: long, val arg2: bool) : okhttp3.internal.http2.Http2Stream$FramingSource {
    val receiveBuffer: okio.Buffer;
    val readBuffer: okio.Buffer;
    val trailers: okhttp3.Headers;
    val closed: bool;
    val maxByteCount: long;
    val finished: bool;
    val this$0: okhttp3.internal.http2.Http2Stream;
    val receiveBuffer: okio.Buffer;
    val readBuffer: okio.Buffer;
    fun close(): void {
        assigns closed;
    }
    
    fun getClosed$okhttp(): bool;
    
    fun getFinished$okhttp(): bool;
    
    fun getReadBuffer(): okio.Buffer;
    
    fun getReadBuffer(): okio.Buffer;
    
    fun getReceiveBuffer(): okio.Buffer;
    
    fun getReceiveBuffer(): okio.Buffer;
    
    fun getTrailers(): okhttp3.Headers;
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun receive$okhttp(arg0: okio.BufferedSource, arg1: long): void {
        assigns arg0;
    }
    
    fun receive$okhttp(arg0: okio.BufferedSource, arg1: long): void;
    
    fun setClosed$okhttp(arg0: bool): void {
        assigns closed;
    }
    
    fun setFinished$okhttp(arg0: bool): void {
        assigns finished;
    }
    
    fun setTrailers(arg0: okhttp3.Headers): void {
        assigns trailers;
    }
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
    
    fun updateConnectionFlowControl(arg0: long): void;
}
automaton okhttp3.internal.http2.Http2Stream$StreamTimeout (val arg0: okhttp3.internal.http2.Http2Stream) : okhttp3.internal.http2.Http2Stream$StreamTimeout {
    val this$0: okhttp3.internal.http2.Http2Stream;
    fun exitAndThrowIfTimedOut(): void;
    
    fun newTimeoutException(arg0: java.io.IOException): java.io.IOException;
    
    fun timedOut(): void;
}
automaton okhttp3.internal.http2.Http2Writer (val arg0: okio.BufferedSink, val arg1: bool) : okhttp3.internal.http2.Http2Writer {
    val hpackBuffer: okio.Buffer;
    val maxFrameSize: int;
    val closed: bool;
    val hpackWriter: okhttp3.internal.http2.Hpack$Writer;
    val sink: okio.BufferedSink;
    val client: bool;
    val logger: java.util.logging.Logger;
    val Companion: okhttp3.internal.http2.Http2Writer$Companion;
    val hpackBuffer: okio.Buffer;
    val sink: okio.BufferedSink;
    @Throws("java.io.IOException", closed)
    fun applyAndAckSettings(arg0: okhttp3.internal.http2.Settings): void {
        assigns maxFrameSize;
    }
    
    fun close(): void {
        assigns closed;
    }
    
    @Throws("java.io.IOException", closed)
    fun connectionPreface(): void;
    
    fun data(arg0: bool, arg1: int, arg2: okio.Buffer, arg3: int): void {
        assigns arg2.head;
        assigns arg2.head.prev;
        assigns arg2.head.next;
        assigns arg2.size;
        assigns arg2.head.pos;
    }
    
    fun data(arg0: bool, arg1: int, arg2: okio.Buffer, arg3: int): void;
    
    fun dataFrame(arg0: int, arg1: int, arg2: okio.Buffer, arg3: int): void {
        assigns arg2.head;
        assigns arg2.head.prev;
        assigns arg2.head.next;
        assigns arg2.size;
        assigns arg2.head.pos;
    }
    
    fun dataFrame(arg0: int, arg1: int, arg2: okio.Buffer, arg3: int): void;
    
    @Throws("java.io.IOException", closed)
    fun flush(): void;
    
    fun frameHeader(arg0: int, arg1: int, arg2: int, arg3: int): void {
        assigns sink;
    }
    
    fun getHpackWriter(): okhttp3.internal.http2.Hpack$Writer;
    
    fun goAway(arg0: int, arg1: okhttp3.internal.http2.ErrorCode, arg2: array): void;
    
    fun headers(arg0: bool, arg1: int, arg2: java.util.List): void;
    
    fun maxDataLength(): int;
    
    @Throws("java.io.IOException", closed)
    fun ping(arg0: bool, arg1: int, arg2: int): void;
    
    fun pushPromise(arg0: int, arg1: int, arg2: java.util.List): void;
    
    @Throws("java.lang.IllegalArgumentException", !closed & httpCode == -1)
    @Throws("java.io.IOException", !httpCode == -1 & closed)
    @Throws("java.io.IOException", closed & httpCode <= -1)
    @Throws("java.io.IOException", !httpCode == -1 & closed & httpCode <= -1)
    @Throws("java.io.IOException", closed)
    @Throws("java.io.IOException", closed & httpCode == -1)
    @Throws("java.io.IOException", closed & httpCode >= -1)
    @Throws("java.io.IOException", !httpCode == -1 & closed & httpCode >= -1)
    fun rstStream(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    @Throws("java.io.IOException", closed)
    fun settings(arg0: okhttp3.internal.http2.Settings): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns logger;
    }
    
    @Throws("java.io.IOException", closed)
    fun windowUpdate(arg0: int, arg1: long): void;
    
    fun writeContinuationFrames(arg0: int, arg1: long): void;
}
automaton okhttp3.internal.http2.Http2Writer$Companion : okhttp3.internal.http2.Http2Writer$Companion {
}
automaton okhttp3.internal.http.HttpHeaders : okhttp3.internal.http.HttpHeaders {
    val QUOTED_STRING_DELIMITERS: okio.ByteString;
    val TOKEN_DELIMITERS: okio.ByteString;
    val QUOTED_STRING_DELIMITERS: okio.ByteString;
    val TOKEN_DELIMITERS: okio.ByteString;
    fun hasBody(arg0: okhttp3.Response): bool;
    
    fun parseChallenges(arg0: okhttp3.Headers, arg1: java.lang.String): java.util.List;
    
    fun promisesBody(arg0: okhttp3.Response): bool;
    
    fun readChallengeHeader(arg0: okio.Buffer, arg1: java.util.List): void {
        assigns arg0.head;
        assigns arg0.head.pos;
        assigns arg0.size;
        assigns arg0.head.prev;
        assigns arg0.head.next;
    }
    
    fun readChallengeHeader(arg0: okio.Buffer, arg1: java.util.List): void;
    
    fun readQuotedString(arg0: okio.Buffer): java.lang.String {
        assigns arg0.head;
        assigns arg0.head.pos;
        assigns arg0.size;
        assigns arg0.head.prev;
        assigns arg0.head.next;
    }
    
    fun readQuotedString(arg0: okio.Buffer): java.lang.String;
    
    fun readToken(arg0: okio.Buffer): java.lang.String {
        assigns arg0.head.pos;
        assigns arg0.size;
        assigns arg0.head;
    }
    
    fun readToken(arg0: okio.Buffer): java.lang.String;
    
    fun receiveHeaders(arg0: okhttp3.CookieJar, arg1: okhttp3.HttpUrl, arg2: okhttp3.Headers): void;
    
    fun skipCommasAndWhitespace(arg0: okio.Buffer): bool {
        assigns arg0.head;
        assigns arg0.head.pos;
        assigns arg0.size;
    }
    
    fun skipCommasAndWhitespace(arg0: okio.Buffer): bool;
    
    fun startsWith(arg0: okio.Buffer, arg1: byte): bool;
    
    fun startsWith(arg0: okio.Buffer, arg1: byte): bool;
    
    fun `static-constructor`(): void {
        assigns QUOTED_STRING_DELIMITERS;
        assigns TOKEN_DELIMITERS;
    }
}
automaton okhttp3.internal.http.HttpMethod : okhttp3.internal.http.HttpMethod {
    val INSTANCE: okhttp3.internal.http.HttpMethod;
    fun invalidatesCache(arg0: java.lang.String): bool;
    
    fun permitsRequestBody(arg0: java.lang.String): bool;
    
    fun redirectsToGet(arg0: java.lang.String): bool;
    
    fun redirectsWithBody(arg0: java.lang.String): bool;
    
    fun requiresRequestBody(arg0: java.lang.String): bool;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.HttpUrl (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: java.lang.String, val arg3: java.lang.String, val arg4: int, val arg5: java.util.List, val arg6: java.util.List, val arg7: java.lang.String, val arg8: java.lang.String) : okhttp3.HttpUrl {
    val isHttps: bool;
    val scheme: java.lang.String;
    val username: java.lang.String;
    val password: java.lang.String;
    val host: java.lang.String;
    val port: int;
    val pathSegments: java.util.List;
    val queryNamesAndValues: java.util.List;
    val fragment: java.lang.String;
    val `url`: java.lang.String;
    val HEX_DIGITS: array<char>;
    val USERNAME_ENCODE_SET: java.lang.String;
    val PASSWORD_ENCODE_SET: java.lang.String;
    val PATH_SEGMENT_ENCODE_SET: java.lang.String;
    val PATH_SEGMENT_ENCODE_SET_URI: java.lang.String;
    val QUERY_ENCODE_SET: java.lang.String;
    val QUERY_COMPONENT_REENCODE_SET: java.lang.String;
    val QUERY_COMPONENT_ENCODE_SET: java.lang.String;
    val QUERY_COMPONENT_ENCODE_SET_URI: java.lang.String;
    val FORM_ENCODE_SET: java.lang.String;
    val FRAGMENT_ENCODE_SET: java.lang.String;
    val FRAGMENT_ENCODE_SET_URI: java.lang.String;
    val Companion: okhttp3.HttpUrl$Companion;
    @Throws("kotlin.TypeCastException", fragment != "'null-const'" & `url` == 0)
    fun `-deprecated_encodedFragment`(): java.lang.String;
    
    fun `-deprecated_encodedPassword`(): java.lang.String;
    
    fun `-deprecated_encodedPath`(): java.lang.String;
    
    fun `-deprecated_encodedPathSegments`(): java.util.List;
    
    fun `-deprecated_encodedQuery`(): java.lang.String;
    
    fun `-deprecated_encodedUsername`(): java.lang.String;
    
    fun `-deprecated_fragment`(): java.lang.String;
    
    fun `-deprecated_host`(): java.lang.String;
    
    fun `-deprecated_password`(): java.lang.String;
    
    fun `-deprecated_pathSegments`(): java.util.List;
    
    fun `-deprecated_pathSize`(): int;
    
    fun `-deprecated_port`(): int;
    
    fun `-deprecated_query`(): java.lang.String;
    
    fun `-deprecated_queryParameterNames`(): java.util.Set;
    
    fun `-deprecated_querySize`(): int;
    
    fun `-deprecated_scheme`(): java.lang.String;
    
    fun `-deprecated_uri`(): java.net.URI;
    
    fun `-deprecated_url`(): java.net.URL;
    
    fun `-deprecated_username`(): java.lang.String;
    
    fun access$getHEX_DIGITS$cp(): array<char>;
    
    fun defaultPort(arg0: java.lang.String): int;
    
    @Throws("kotlin.TypeCastException", fragment != "'null-const'" & `url` == 0)
    fun encodedFragment(): java.lang.String;
    
    fun encodedPassword(): java.lang.String;
    
    fun encodedPath(): java.lang.String;
    
    fun encodedPathSegments(): java.util.List;
    
    fun encodedQuery(): java.lang.String;
    
    fun encodedUsername(): java.lang.String;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun fragment(): java.lang.String;
    
    fun get(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun get(arg0: java.net.URL): okhttp3.HttpUrl;
    
    fun get(arg0: java.net.URI): okhttp3.HttpUrl;
    
    fun hashCode(): int;
    
    fun host(): java.lang.String;
    
    fun isHttps(): bool;
    
    fun newBuilder(): okhttp3.HttpUrl$Builder;
    
    fun newBuilder(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun parse(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun password(): java.lang.String;
    
    fun pathSegments(): java.util.List;
    
    fun pathSize(): int;
    
    fun port(): int;
    
    fun query(): java.lang.String;
    
    fun queryParameter(arg0: java.lang.String): java.lang.String;
    
    @Throws("java.lang.IndexOutOfBoundsException", queryNamesAndValues == "'null-const'")
    fun queryParameterName(arg0: int): java.lang.String;
    
    fun queryParameterNames(): java.util.Set;
    
    @Throws("java.lang.IndexOutOfBoundsException", queryNamesAndValues == "'null-const'")
    fun queryParameterValue(arg0: int): java.lang.String;
    
    fun queryParameterValues(arg0: java.lang.String): java.util.List;
    
    fun querySize(): int;
    
    fun redact(): java.lang.String;
    
    fun resolve(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun scheme(): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns HEX_DIGITS;
    }
    
    fun toString(): java.lang.String;
    
    @Throws("java.lang.IllegalStateException", publicSuffixListBytes == "'null-const'")
    fun topPrivateDomain(): java.lang.String;
    
    fun uri(): java.net.URI;
    
    fun `url`(): java.net.URL;
    
    fun username(): java.lang.String;
}
automaton okhttp3.HttpUrl$Builder : okhttp3.HttpUrl$Builder {
    val scheme: java.lang.String;
    val encodedUsername: java.lang.String;
    val encodedPassword: java.lang.String;
    val host: java.lang.String;
    val port: int;
    val encodedPathSegments: java.util.List;
    val encodedQueryNamesAndValues: java.util.List;
    val encodedFragment: java.lang.String;
    val INVALID_HOST: java.lang.String;
    val Companion: okhttp3.HttpUrl$Builder$Companion;
    fun addEncodedPathSegment(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun addEncodedPathSegments(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun addEncodedQueryParameter(arg0: java.lang.String, arg1: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun addPathSegment(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun addPathSegments(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun addPathSegments(arg0: java.lang.String, arg1: bool): okhttp3.HttpUrl$Builder;
    
    fun addQueryParameter(arg0: java.lang.String, arg1: java.lang.String): okhttp3.HttpUrl$Builder;
    
    @Throws("java.lang.IllegalStateException", scheme != "'null-const'" & host == "'null-const'")
    @Throws("java.lang.IllegalStateException", host != "'null-const'" & scheme == "'null-const'")
    @Throws("java.lang.IllegalStateException", host == "'null-const'")
    @Throws("java.lang.IllegalStateException", scheme == "'null-const'")
    fun build(): okhttp3.HttpUrl;
    
    fun effectivePort(): int;
    
    fun encodedFragment(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun encodedPassword(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun encodedPath(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun encodedQuery(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun encodedUsername(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun fragment(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun getEncodedFragment$okhttp(): java.lang.String;
    
    fun getEncodedPassword$okhttp(): java.lang.String;
    
    fun getEncodedPathSegments$okhttp(): java.util.List;
    
    fun getEncodedQueryNamesAndValues$okhttp(): java.util.List;
    
    fun getEncodedUsername$okhttp(): java.lang.String;
    
    fun getHost$okhttp(): java.lang.String;
    
    fun getPort$okhttp(): int;
    
    fun getScheme$okhttp(): java.lang.String;
    
    fun host(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun isDot(arg0: java.lang.String): bool;
    
    fun isDotDot(arg0: java.lang.String): bool;
    
    @Throws("java.lang.IllegalArgumentException", arg0 == "'null-const'" & arg1 != "'null-const'")
    @Throws("kotlin.TypeCastException", arg1 != "'null-const'" & arg0 != "'null-const'")
    fun parse$okhttp(arg0: okhttp3.HttpUrl, arg1: java.lang.String): okhttp3.HttpUrl$Builder {
        assigns scheme;
        assigns encodedUsername;
        assigns encodedPassword;
        assigns host;
        assigns port;
        assigns encodedQueryNamesAndValues;
        assigns encodedFragment;
    }
    
    fun password(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun pop(): void;
    
    fun port(arg0: int): okhttp3.HttpUrl$Builder;
    
    fun push(arg0: java.lang.String, arg1: int, arg2: int, arg3: bool, arg4: bool): void;
    
    fun query(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun reencodeForUri$okhttp(): okhttp3.HttpUrl$Builder;
    
    fun removeAllCanonicalQueryParameters(arg0: java.lang.String): void {
        assigns encodedQueryNamesAndValues;
    }
    
    fun removeAllEncodedQueryParameters(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun removeAllQueryParameters(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun removePathSegment(arg0: int): okhttp3.HttpUrl$Builder;
    
    fun resolvePath(arg0: java.lang.String, arg1: int, arg2: int): void;
    
    fun scheme(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun setEncodedFragment$okhttp(arg0: java.lang.String): void {
        assigns encodedFragment;
    }
    
    fun setEncodedPassword$okhttp(arg0: java.lang.String): void {
        assigns encodedPassword;
    }
    
    fun setEncodedPathSegment(arg0: int, arg1: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun setEncodedQueryNamesAndValues$okhttp(arg0: java.util.List): void {
        assigns encodedQueryNamesAndValues;
    }
    
    fun setEncodedQueryParameter(arg0: java.lang.String, arg1: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun setEncodedUsername$okhttp(arg0: java.lang.String): void {
        assigns encodedUsername;
    }
    
    fun setHost$okhttp(arg0: java.lang.String): void {
        assigns host;
    }
    
    fun setPathSegment(arg0: int, arg1: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun setPort$okhttp(arg0: int): void {
        assigns port;
    }
    
    fun setQueryParameter(arg0: java.lang.String, arg1: java.lang.String): okhttp3.HttpUrl$Builder;
    
    fun setScheme$okhttp(arg0: java.lang.String): void {
        assigns scheme;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun toString(): java.lang.String;
    
    fun username(arg0: java.lang.String): okhttp3.HttpUrl$Builder;
}
automaton okhttp3.HttpUrl$Builder$Companion : okhttp3.HttpUrl$Builder$Companion {
    fun access$parsePort(arg0: okhttp3.HttpUrl$Builder$Companion, arg1: java.lang.String, arg2: int, arg3: int): int;
    
    fun access$portColonOffset(arg0: okhttp3.HttpUrl$Builder$Companion, arg1: java.lang.String, arg2: int, arg3: int): int;
    
    fun access$schemeDelimiterOffset(arg0: okhttp3.HttpUrl$Builder$Companion, arg1: java.lang.String, arg2: int, arg3: int): int;
    
    fun access$slashCount(arg0: okhttp3.HttpUrl$Builder$Companion, arg1: java.lang.String, arg2: int, arg3: int): int;
    
    fun parsePort(arg0: java.lang.String, arg1: int, arg2: int): int;
    
    fun portColonOffset(arg0: java.lang.String, arg1: int, arg2: int): int;
    
    fun schemeDelimiterOffset(arg0: java.lang.String, arg1: int, arg2: int): int;
    
    fun slashCount(arg0: java.lang.String, arg1: int, arg2: int): int;
}
automaton okhttp3.HttpUrl$Companion : okhttp3.HttpUrl$Companion {
    fun `-deprecated_get`(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun `-deprecated_get`(arg0: java.net.URL): okhttp3.HttpUrl;
    
    fun `-deprecated_get`(arg0: java.net.URI): okhttp3.HttpUrl;
    
    fun `-deprecated_parse`(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun canonicalize$okhttp(arg0: java.lang.String, arg1: int, arg2: int, arg3: java.lang.String, arg4: bool, arg5: bool, arg6: bool, arg7: bool, arg8: java.nio.charset.Charset): java.lang.String;
    
    fun canonicalize$okhttp$default(arg0: okhttp3.HttpUrl$Companion, arg1: java.lang.String, arg2: int, arg3: int, arg4: java.lang.String, arg5: bool, arg6: bool, arg7: bool, arg8: bool, arg9: java.nio.charset.Charset, arg10: int, arg11: java.lang.Object): java.lang.String;
    
    fun defaultPort(arg0: java.lang.String): int;
    
    @Throws("java.lang.IllegalArgumentException", arg0 != "'null-const'")
    fun get(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun get(arg0: java.net.URL): okhttp3.HttpUrl;
    
    fun get(arg0: java.net.URI): okhttp3.HttpUrl;
    
    fun isPercentEncoded(arg0: java.lang.String, arg1: int, arg2: int): bool;
    
    @Throws("java.lang.IllegalArgumentException", arg0 != "'null-const'")
    fun parse(arg0: java.lang.String): okhttp3.HttpUrl;
    
    fun percentDecode$okhttp(arg0: java.lang.String, arg1: int, arg2: int, arg3: bool): java.lang.String;
    
    fun percentDecode$okhttp$default(arg0: okhttp3.HttpUrl$Companion, arg1: java.lang.String, arg2: int, arg3: int, arg4: bool, arg5: int, arg6: java.lang.Object): java.lang.String;
    
    fun toPathString$okhttp(arg0: java.util.List, arg1: java.lang.StringBuilder): void;
    
    fun toQueryNamesAndValues$okhttp(arg0: java.lang.String): java.util.List;
    
    fun toQueryString$okhttp(arg0: java.util.List, arg1: java.lang.StringBuilder): void;
    
    @Throws("kotlin.TypeCastException", arg1 == "'null-const'")
    fun writeCanonicalized(arg0: okio.Buffer, arg1: java.lang.String, arg2: int, arg3: int, arg4: java.lang.String, arg5: bool, arg6: bool, arg7: bool, arg8: bool, arg9: java.nio.charset.Charset): void {
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun writeCanonicalized(arg0: okio.Buffer, arg1: java.lang.String, arg2: int, arg3: int, arg4: java.lang.String, arg5: bool, arg6: bool, arg7: bool, arg8: bool, arg9: java.nio.charset.Charset): void;
    
    fun writePercentDecoded(arg0: okio.Buffer, arg1: java.lang.String, arg2: int, arg3: int, arg4: bool): void {
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun writePercentDecoded(arg0: okio.Buffer, arg1: java.lang.String, arg2: int, arg3: int, arg4: bool): void;
}
automaton okhttp3.internal.http2.Huffman : okhttp3.internal.http2.Huffman {
    val CODES: array<int>;
    val CODE_BIT_COUNTS: array<byte>;
    val root: okhttp3.internal.http2.Huffman$Node;
    val INSTANCE: okhttp3.internal.http2.Huffman;
    fun addCode(arg0: int, arg1: int, arg2: int): void;
    
    fun decode(arg0: okio.BufferedSource, arg1: long, arg2: okio.BufferedSink): void {
        assigns arg0;
        assigns arg2;
    }
    
    fun decode(arg0: okio.BufferedSource, arg1: long, arg2: okio.BufferedSink): void;
    
    fun encode(arg0: okio.ByteString, arg1: okio.BufferedSink): void {
        assigns arg1;
    }
    
    fun encode(arg0: okio.ByteString, arg1: okio.BufferedSink): void;
    
    fun encodedLength(arg0: okio.ByteString): int;
    
    fun encodedLength(arg0: okio.ByteString): int;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
        assigns CODES;
        assigns CODE_BIT_COUNTS;
        assigns root;
    }
}
automaton okhttp3.internal.http2.Huffman$Node : okhttp3.internal.http2.Huffman$Node {
    val children: array<okhttp3.internal.http2.Huffman$Node>;
    val symbol: int;
    val terminalBitCount: int;
    fun getChildren(): array<okhttp3.internal.http2.Huffman$Node>;
    
    fun getSymbol(): int;
    
    fun getTerminalBitCount(): int;
}
automaton okhttp3.Interceptor : okhttp3.Interceptor {
    val Companion: okhttp3.Interceptor$Companion;
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.Interceptor$Chain : okhttp3.Interceptor$Chain {
    fun call(): okhttp3.Call;
    
    fun connectTimeoutMillis(): int;
    
    fun connection(): okhttp3.Connection;
    
    fun proceed(arg0: okhttp3.Request): okhttp3.Response;
    
    fun readTimeoutMillis(): int;
    
    fun request(): okhttp3.Request;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun withConnectTimeout(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.Interceptor$Chain;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun withReadTimeout(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.Interceptor$Chain;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun withWriteTimeout(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.Interceptor$Chain;
    
    fun writeTimeoutMillis(): int;
}
automaton okhttp3.Interceptor$Companion : okhttp3.Interceptor$Companion {
    val $$INSTANCE: okhttp3.Interceptor$Companion;
    fun invoke(arg0: kotlin.jvm.functions.Function1): okhttp3.Interceptor;
    
    fun `static-constructor`(): void {
        assigns $$INSTANCE;
    }
}
automaton okhttp3.Interceptor$Companion$invoke$1 (val arg0: `<UNRESOLVED_TYPE>`) : okhttp3.Interceptor$Companion$invoke$1 {
    val $block: `<UNRESOLVED_TYPE>`;
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
}
automaton okhttp3.internal.Internal : okhttp3.internal.Internal {
    fun addHeaderLenient(arg0: okhttp3.Headers$Builder, arg1: java.lang.String): okhttp3.Headers$Builder;
    
    fun addHeaderLenient(arg0: okhttp3.Headers$Builder, arg1: java.lang.String, arg2: java.lang.String): okhttp3.Headers$Builder;
    
    @Throws("kotlin.TypeCastException", cipherSuitesAsString != "'null-const'" & tlsVersionsAsString == "'null-const'")
    @Throws("kotlin.TypeCastException", tlsVersionsAsString != "'null-const'")
    @Throws("kotlin.TypeCastException", tlsVersionsAsString != "'null-const'" & cipherSuitesAsString == "'null-const'")
    @Throws("kotlin.TypeCastException", cipherSuitesAsString != "'null-const'")
    fun applyConnectionSpec(arg0: okhttp3.ConnectionSpec, arg1: javax.net.ssl.SSLSocket, arg2: bool): void;
    
    fun cacheGet(arg0: okhttp3.Cache, arg1: okhttp3.Request): okhttp3.Response;
    
    fun cookieToString(arg0: okhttp3.Cookie, arg1: bool): java.lang.String;
    
    fun parseCookie(arg0: long, arg1: okhttp3.HttpUrl, arg2: java.lang.String): okhttp3.Cookie;
}
automaton okhttp3.internal.authenticator.JavaNetAuthenticator (val arg0: okhttp3.Dns) : okhttp3.internal.authenticator.JavaNetAuthenticator {
    val defaultDns: okhttp3.Dns;
    fun authenticate(arg0: okhttp3.Route, arg1: okhttp3.Response): okhttp3.Request;
    
    fun connectToInetAddress(arg0: java.net.Proxy, arg1: okhttp3.HttpUrl, arg2: okhttp3.Dns): java.net.InetAddress;
}
automaton okhttp3.internal.authenticator.JavaNetAuthenticator$WhenMappings : okhttp3.internal.authenticator.JavaNetAuthenticator$WhenMappings {
    val $EnumSwitchMapping$0: array<int>;
    fun `static-constructor`(): void {
        assigns $EnumSwitchMapping$0;
    }
}
automaton okhttp3.internal.platform.Jdk8WithJettyBootPlatform (val arg0: java.lang.reflect.Method, val arg1: java.lang.reflect.Method, val arg2: java.lang.reflect.Method, val arg3: java.lang.Class, val arg4: java.lang.Class) : okhttp3.internal.platform.Jdk8WithJettyBootPlatform {
    val putMethod: java.lang.reflect.Method;
    val getMethod: java.lang.reflect.Method;
    val removeMethod: java.lang.reflect.Method;
    val clientProviderClass: java.lang.Class;
    val serverProviderClass: java.lang.Class;
    val Companion: okhttp3.internal.platform.Jdk8WithJettyBootPlatform$Companion;
    fun afterHandshake(arg0: javax.net.ssl.SSLSocket): void;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.platform.Jdk8WithJettyBootPlatform$AlpnProvider (val arg0: java.util.List) : okhttp3.internal.platform.Jdk8WithJettyBootPlatform$AlpnProvider {
    val unsupported: bool;
    val selected: java.lang.String;
    val protocols: java.util.List;
    fun getSelected$okhttp(): java.lang.String;
    
    fun getUnsupported$okhttp(): bool;
    
    fun invoke(arg0: java.lang.Object, arg1: java.lang.reflect.Method, arg2: array): java.lang.Object {
        assigns unsupported;
        assigns selected;
    }
    
    fun setSelected$okhttp(arg0: java.lang.String): void {
        assigns selected;
    }
    
    fun setUnsupported$okhttp(arg0: bool): void {
        assigns unsupported;
    }
}
automaton okhttp3.internal.platform.Jdk8WithJettyBootPlatform$Companion : okhttp3.internal.platform.Jdk8WithJettyBootPlatform$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.Platform;
}
automaton okhttp3.internal.platform.Jdk9Platform : okhttp3.internal.platform.Jdk9Platform {
    val isAvailable: bool;
    val Companion: okhttp3.internal.platform.Jdk9Platform$Companion;
    fun access$isAvailable$cp(): bool;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns isAvailable;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.Jdk9Platform$Companion : okhttp3.internal.platform.Jdk9Platform$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.Jdk9Platform;
    
    fun isAvailable(): bool;
}
automaton okhttp3.MediaType (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: java.lang.String, val arg3: array<java.lang.String>) : okhttp3.MediaType {
    val mediaType: java.lang.String;
    val `type`: java.lang.String;
    val subtype: java.lang.String;
    val parameterNamesAndValues: array<java.lang.String>;
    val TOKEN: java.lang.String;
    val QUOTED: java.lang.String;
    val TYPE_SUBTYPE: java.util.regex.Pattern;
    val PARAMETER: java.util.regex.Pattern;
    val Companion: okhttp3.MediaType$Companion;
    fun `-deprecated_subtype`(): java.lang.String;
    
    fun `-deprecated_type`(): java.lang.String;
    
    fun access$getPARAMETER$cp(): java.util.regex.Pattern;
    
    fun access$getTYPE_SUBTYPE$cp(): java.util.regex.Pattern;
    
    fun charset(arg0: java.nio.charset.Charset): java.nio.charset.Charset;
    
    fun charset(): java.nio.charset.Charset;
    
    fun charset$default(arg0: okhttp3.MediaType, arg1: java.nio.charset.Charset, arg2: int, arg3: java.lang.Object): java.nio.charset.Charset;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun get(arg0: java.lang.String): okhttp3.MediaType;
    
    fun hashCode(): int;
    
    fun parameter(arg0: java.lang.String): java.lang.String;
    
    fun parse(arg0: java.lang.String): okhttp3.MediaType;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns TYPE_SUBTYPE;
        assigns PARAMETER;
    }
    
    fun subtype(): java.lang.String;
    
    fun toString(): java.lang.String;
    
    fun `type`(): java.lang.String;
}
automaton okhttp3.MediaType$Companion : okhttp3.MediaType$Companion {
    fun `-deprecated_get`(arg0: java.lang.String): okhttp3.MediaType;
    
    fun `-deprecated_parse`(arg0: java.lang.String): okhttp3.MediaType;
    
    fun get(arg0: java.lang.String): okhttp3.MediaType;
    
    fun parse(arg0: java.lang.String): okhttp3.MediaType;
}
automaton okhttp3.internal.ws.MessageDeflater (val arg0: bool) : okhttp3.internal.ws.MessageDeflater {
    val deflatedBytes: okio.Buffer;
    val deflater: java.util.zip.Deflater;
    val deflaterSink: okio.DeflaterSink;
    val noContextTakeover: bool;
    val deflatedBytes: okio.Buffer;
    val deflaterSink: okio.DeflaterSink;
    fun close(): void;
    
    fun deflate(arg0: okio.Buffer): void {
        assigns arg0.head.pos;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun deflate(arg0: okio.Buffer): void;
    
    fun endsWith(arg0: okio.Buffer, arg1: okio.ByteString): bool;
    
    fun endsWith(arg0: okio.Buffer, arg1: okio.ByteString): bool;
}
automaton okhttp3.internal.ws.MessageDeflaterKt : okhttp3.internal.ws.MessageDeflaterKt {
    val EMPTY_DEFLATE_BLOCK: okio.ByteString;
    val LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION: int;
    val EMPTY_DEFLATE_BLOCK: okio.ByteString;
    fun access$getEMPTY_DEFLATE_BLOCK$p(): okio.ByteString;
    
    fun access$getEMPTY_DEFLATE_BLOCK$p(): okio.ByteString;
    
    fun `static-constructor`(): void {
        assigns EMPTY_DEFLATE_BLOCK;
    }
}
automaton okhttp3.internal.ws.MessageInflater (val arg0: bool) : okhttp3.internal.ws.MessageInflater {
    val deflatedBytes: okio.Buffer;
    val inflater: java.util.zip.Inflater;
    val inflaterSource: okio.InflaterSource;
    val noContextTakeover: bool;
    val deflatedBytes: okio.Buffer;
    val inflaterSource: okio.InflaterSource;
    fun close(): void;
    
    fun inflate(arg0: okio.Buffer): void {
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun inflate(arg0: okio.Buffer): void;
}
automaton okhttp3.internal.ws.MessageInflaterKt : okhttp3.internal.ws.MessageInflaterKt {
    val OCTETS_TO_ADD_BEFORE_INFLATION: int;
}
automaton okhttp3.MultipartBody (val arg0: okio.ByteString, val arg1: okhttp3.MediaType, val arg2: java.util.List) : okhttp3.MultipartBody {
    val contentType: okhttp3.MediaType;
    val contentLength: long;
    val boundaryByteString: okio.ByteString;
    val `type`: okhttp3.MediaType;
    val parts: java.util.List;
    val MIXED: okhttp3.MediaType;
    val ALTERNATIVE: okhttp3.MediaType;
    val DIGEST: okhttp3.MediaType;
    val PARALLEL: okhttp3.MediaType;
    val FORM: okhttp3.MediaType;
    val COLONSPACE: array<byte>;
    val CRLF: array<byte>;
    val DASHDASH: array<byte>;
    val Companion: okhttp3.MultipartBody$Companion;
    val boundaryByteString: okio.ByteString;
    fun `-deprecated_boundary`(): java.lang.String;
    
    fun `-deprecated_parts`(): java.util.List;
    
    fun `-deprecated_size`(): int;
    
    fun `-deprecated_type`(): okhttp3.MediaType;
    
    fun boundary(): java.lang.String;
    
    fun contentLength(): long {
        assigns contentLength;
    }
    
    fun contentType(): okhttp3.MediaType;
    
    fun part(arg0: int): okhttp3.MultipartBody$Part;
    
    fun parts(): java.util.List;
    
    fun size(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns MIXED;
        assigns ALTERNATIVE;
        assigns DIGEST;
        assigns PARALLEL;
        assigns FORM;
        assigns COLONSPACE;
        assigns CRLF;
        assigns DASHDASH;
    }
    
    fun `type`(): okhttp3.MediaType;
    
    fun writeOrCountBytes(arg0: okio.BufferedSink, arg1: bool): long;
    
    fun writeOrCountBytes(arg0: okio.BufferedSink, arg1: bool): long;
    
    fun writeTo(arg0: okio.BufferedSink): void;
    
    fun writeTo(arg0: okio.BufferedSink): void;
}
automaton okhttp3.MultipartBody$Builder (val arg0: java.lang.String) : okhttp3.MultipartBody$Builder {
    val boundary: okio.ByteString;
    val `type`: okhttp3.MediaType;
    val parts: java.util.List;
    val boundary: okio.ByteString;
    fun addFormDataPart(arg0: java.lang.String, arg1: java.lang.String): okhttp3.MultipartBody$Builder;
    
    fun addFormDataPart(arg0: java.lang.String, arg1: java.lang.String, arg2: okhttp3.RequestBody): okhttp3.MultipartBody$Builder;
    
    fun addPart(arg0: okhttp3.RequestBody): okhttp3.MultipartBody$Builder;
    
    fun addPart(arg0: okhttp3.Headers, arg1: okhttp3.RequestBody): okhttp3.MultipartBody$Builder;
    
    fun addPart(arg0: okhttp3.MultipartBody$Part): okhttp3.MultipartBody$Builder;
    
    fun build(): okhttp3.MultipartBody;
    
    fun setType(arg0: okhttp3.MediaType): okhttp3.MultipartBody$Builder;
}
automaton okhttp3.MultipartBody$Companion : okhttp3.MultipartBody$Companion {
    fun appendQuotedString$okhttp(arg0: java.lang.StringBuilder, arg1: java.lang.String): void;
}
automaton okhttp3.MultipartBody$Part (val arg0: okhttp3.Headers, val arg1: okhttp3.RequestBody) : okhttp3.MultipartBody$Part {
    val headers: okhttp3.Headers;
    val body: okhttp3.RequestBody;
    val Companion: okhttp3.MultipartBody$Part$Companion;
    fun `-deprecated_body`(): okhttp3.RequestBody;
    
    fun `-deprecated_headers`(): okhttp3.Headers;
    
    fun body(): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.RequestBody): okhttp3.MultipartBody$Part;
    
    fun create(arg0: okhttp3.Headers, arg1: okhttp3.RequestBody): okhttp3.MultipartBody$Part;
    
    fun createFormData(arg0: java.lang.String, arg1: java.lang.String): okhttp3.MultipartBody$Part;
    
    fun createFormData(arg0: java.lang.String, arg1: java.lang.String, arg2: okhttp3.RequestBody): okhttp3.MultipartBody$Part;
    
    fun headers(): okhttp3.Headers;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.MultipartBody$Part$Companion : okhttp3.MultipartBody$Part$Companion {
    fun create(arg0: okhttp3.RequestBody): okhttp3.MultipartBody$Part;
    
    fun create(arg0: okhttp3.Headers, arg1: okhttp3.RequestBody): okhttp3.MultipartBody$Part;
    
    fun createFormData(arg0: java.lang.String, arg1: java.lang.String): okhttp3.MultipartBody$Part;
    
    fun createFormData(arg0: java.lang.String, arg1: java.lang.String, arg2: okhttp3.RequestBody): okhttp3.MultipartBody$Part;
}
automaton okhttp3.MultipartReader (val arg0: okio.BufferedSource, val arg1: java.lang.String) : okhttp3.MultipartReader {
    val dashDashBoundary: okio.ByteString;
    val crlfDashDashBoundary: okio.ByteString;
    val partCount: int;
    val closed: bool;
    val noMoreParts: bool;
    val currentPart: okhttp3.MultipartReader$PartSource;
    val source: okio.BufferedSource;
    val boundary: java.lang.String;
    val afterBoundaryOptions: okio.Options;
    val Companion: okhttp3.MultipartReader$Companion;
    val dashDashBoundary: okio.ByteString;
    val crlfDashDashBoundary: okio.ByteString;
    val source: okio.BufferedSource;
    val afterBoundaryOptions: okio.Options;
    fun access$currentPartBytesRemaining(arg0: okhttp3.MultipartReader, arg1: long): long;
    
    fun access$getAfterBoundaryOptions$cp(): okio.Options;
    
    fun access$getAfterBoundaryOptions$cp(): okio.Options;
    
    fun access$getCurrentPart$p(arg0: okhttp3.MultipartReader): okhttp3.MultipartReader$PartSource;
    
    fun access$getSource$p(arg0: okhttp3.MultipartReader): okio.BufferedSource;
    
    fun access$getSource$p(arg0: okhttp3.MultipartReader): okio.BufferedSource;
    
    fun access$setCurrentPart$p(arg0: okhttp3.MultipartReader, arg1: okhttp3.MultipartReader$PartSource): void {
        assigns arg0.currentPart;
    }
    
    fun boundary(): java.lang.String;
    
    fun close(): void {
        assigns closed;
        assigns currentPart;
    }
    
    fun currentPartBytesRemaining(arg0: long): long;
    
    @Throws("java.lang.IllegalStateException", closed)
    fun nextPart(): okhttp3.MultipartReader$Part {
        assigns partCount;
        assigns noMoreParts;
        assigns currentPart;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns afterBoundaryOptions;
    }
}
automaton okhttp3.MultipartReader$Companion : okhttp3.MultipartReader$Companion {
    fun getAfterBoundaryOptions(): okio.Options;
    
    fun getAfterBoundaryOptions(): okio.Options;
}
automaton okhttp3.MultipartReader$Part (val arg0: okhttp3.Headers, val arg1: okio.BufferedSource) : okhttp3.MultipartReader$Part {
    val headers: okhttp3.Headers;
    val body: okio.BufferedSource;
    val body: okio.BufferedSource;
    fun body(): okio.BufferedSource;
    
    fun body(): okio.BufferedSource;
    
    fun close(): void;
    
    fun headers(): okhttp3.Headers;
}
automaton okhttp3.MultipartReader$PartSource (val arg0: okhttp3.MultipartReader) : okhttp3.MultipartReader$PartSource {
    val timeout: okio.Timeout;
    val this$0: okhttp3.MultipartReader;
    val timeout: okio.Timeout;
    fun close(): void {
        assigns this$0.currentPart;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
}
automaton okhttp3.internal.proxy.NullProxySelector : okhttp3.internal.proxy.NullProxySelector {
    val INSTANCE: okhttp3.internal.proxy.NullProxySelector;
    fun connectFailed(arg0: java.net.URI, arg1: java.net.SocketAddress, arg2: java.io.IOException): void;
    
    @Throws("java.lang.IllegalArgumentException", arg0 == "'null-const'")
    fun select(arg0: java.net.URI): java.util.List;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.internal.tls.OkHostnameVerifier : okhttp3.internal.tls.OkHostnameVerifier {
    val ALT_DNS_NAME: int;
    val ALT_IPA_NAME: int;
    val INSTANCE: okhttp3.internal.tls.OkHostnameVerifier;
    fun allSubjectAltNames(arg0: java.security.cert.X509Certificate): java.util.List;
    
    fun getSubjectAltNames(arg0: java.security.cert.X509Certificate, arg1: int): java.util.List;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
    
    @Throws("kotlin.TypeCastException", arg0 == "'null-const'")
    fun verify(arg0: java.lang.String, arg1: javax.net.ssl.SSLSession): bool;
    
    fun verify(arg0: java.lang.String, arg1: java.security.cert.X509Certificate): bool;
    
    @Throws("kotlin.TypeCastException", arg0 == "'null-const'")
    fun verifyHostname(arg0: java.lang.String, arg1: java.security.cert.X509Certificate): bool;
    
    fun verifyHostname(arg0: java.lang.String, arg1: java.lang.String): bool;
    
    fun verifyIpAddress(arg0: java.lang.String, arg1: java.security.cert.X509Certificate): bool;
}
automaton okhttp3.OkHttp : okhttp3.OkHttp {
    val VERSION: java.lang.String;
    val INSTANCE: okhttp3.OkHttp;
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.OkHttpClient (val arg0: okhttp3.OkHttpClient$Builder) : okhttp3.OkHttpClient {
    val dispatcher: okhttp3.Dispatcher;
    val connectionPool: okhttp3.ConnectionPool;
    val interceptors: java.util.List;
    val networkInterceptors: java.util.List;
    val eventListenerFactory: okhttp3.EventListener$Factory;
    val retryOnConnectionFailure: bool;
    val authenticator: okhttp3.Authenticator;
    val followRedirects: bool;
    val followSslRedirects: bool;
    val cookieJar: okhttp3.CookieJar;
    val cache: okhttp3.Cache;
    val dns: okhttp3.Dns;
    val proxy: java.net.Proxy;
    val proxySelector: java.net.ProxySelector;
    val proxyAuthenticator: okhttp3.Authenticator;
    val socketFactory: javax.net.SocketFactory;
    val sslSocketFactoryOrNull: javax.net.ssl.SSLSocketFactory;
    val x509TrustManager: javax.net.ssl.X509TrustManager;
    val connectionSpecs: java.util.List;
    val protocols: java.util.List;
    val hostnameVerifier: javax.net.ssl.HostnameVerifier;
    val certificatePinner: okhttp3.CertificatePinner;
    val certificateChainCleaner: okhttp3.internal.tls.CertificateChainCleaner;
    val callTimeoutMillis: int;
    val connectTimeoutMillis: int;
    val readTimeoutMillis: int;
    val writeTimeoutMillis: int;
    val pingIntervalMillis: int;
    val minWebSocketMessageToCompress: long;
    val routeDatabase: okhttp3.internal.connection.RouteDatabase;
    val DEFAULT_PROTOCOLS: java.util.List;
    val DEFAULT_CONNECTION_SPECS: java.util.List;
    val Companion: okhttp3.OkHttpClient$Companion;
    fun `-deprecated_authenticator`(): okhttp3.Authenticator;
    
    fun `-deprecated_cache`(): okhttp3.Cache;
    
    fun `-deprecated_callTimeoutMillis`(): int;
    
    fun `-deprecated_certificatePinner`(): okhttp3.CertificatePinner;
    
    fun `-deprecated_connectTimeoutMillis`(): int;
    
    fun `-deprecated_connectionPool`(): okhttp3.ConnectionPool;
    
    fun `-deprecated_connectionSpecs`(): java.util.List;
    
    fun `-deprecated_cookieJar`(): okhttp3.CookieJar;
    
    fun `-deprecated_dispatcher`(): okhttp3.Dispatcher;
    
    fun `-deprecated_dns`(): okhttp3.Dns;
    
    fun `-deprecated_eventListenerFactory`(): okhttp3.EventListener$Factory;
    
    fun `-deprecated_followRedirects`(): bool;
    
    fun `-deprecated_followSslRedirects`(): bool;
    
    fun `-deprecated_hostnameVerifier`(): javax.net.ssl.HostnameVerifier;
    
    fun `-deprecated_interceptors`(): java.util.List;
    
    fun `-deprecated_networkInterceptors`(): java.util.List;
    
    fun `-deprecated_pingIntervalMillis`(): int;
    
    fun `-deprecated_protocols`(): java.util.List;
    
    fun `-deprecated_proxy`(): java.net.Proxy;
    
    fun `-deprecated_proxyAuthenticator`(): okhttp3.Authenticator;
    
    fun `-deprecated_proxySelector`(): java.net.ProxySelector;
    
    fun `-deprecated_readTimeoutMillis`(): int;
    
    fun `-deprecated_retryOnConnectionFailure`(): bool;
    
    fun `-deprecated_socketFactory`(): javax.net.SocketFactory;
    
    @Throws("java.lang.IllegalStateException", sslSocketFactoryOrNull == "'null-const'")
    fun `-deprecated_sslSocketFactory`(): javax.net.ssl.SSLSocketFactory;
    
    fun `-deprecated_writeTimeoutMillis`(): int;
    
    fun access$getDEFAULT_CONNECTION_SPECS$cp(): java.util.List;
    
    fun access$getDEFAULT_PROTOCOLS$cp(): java.util.List;
    
    fun access$getSslSocketFactoryOrNull$p(arg0: okhttp3.OkHttpClient): javax.net.ssl.SSLSocketFactory;
    
    fun authenticator(): okhttp3.Authenticator;
    
    fun cache(): okhttp3.Cache;
    
    fun callTimeoutMillis(): int;
    
    fun certificateChainCleaner(): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun certificatePinner(): okhttp3.CertificatePinner;
    
    fun clone(): java.lang.Object;
    
    fun connectTimeoutMillis(): int;
    
    fun connectionPool(): okhttp3.ConnectionPool;
    
    fun connectionSpecs(): java.util.List;
    
    fun cookieJar(): okhttp3.CookieJar;
    
    fun dispatcher(): okhttp3.Dispatcher;
    
    fun dns(): okhttp3.Dns;
    
    fun eventListenerFactory(): okhttp3.EventListener$Factory;
    
    fun followRedirects(): bool;
    
    fun followSslRedirects(): bool;
    
    fun getRouteDatabase(): okhttp3.internal.connection.RouteDatabase;
    
    fun hostnameVerifier(): javax.net.ssl.HostnameVerifier;
    
    fun interceptors(): java.util.List;
    
    fun minWebSocketMessageToCompress(): long;
    
    fun networkInterceptors(): java.util.List;
    
    fun newBuilder(): okhttp3.OkHttpClient$Builder;
    
    fun newCall(arg0: okhttp3.Request): okhttp3.Call;
    
    fun newWebSocket(arg0: okhttp3.Request, arg1: okhttp3.WebSocketListener): okhttp3.WebSocket;
    
    fun pingIntervalMillis(): int;
    
    fun protocols(): java.util.List;
    
    fun proxy(): java.net.Proxy;
    
    fun proxyAuthenticator(): okhttp3.Authenticator;
    
    fun proxySelector(): java.net.ProxySelector;
    
    fun readTimeoutMillis(): int;
    
    fun retryOnConnectionFailure(): bool;
    
    fun socketFactory(): javax.net.SocketFactory;
    
    @Throws("java.lang.IllegalStateException", sslSocketFactoryOrNull == 0)
    fun sslSocketFactory(): javax.net.ssl.SSLSocketFactory;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns DEFAULT_PROTOCOLS;
        assigns DEFAULT_CONNECTION_SPECS;
    }
    
    @Throws("kotlin.TypeCastException", networkInterceptors == "'null-const'" & interceptors != "'null-const'")
    @Throws("kotlin.TypeCastException", interceptors == "'null-const'" & networkInterceptors != "'null-const'")
    @Throws("kotlin.TypeCastException", networkInterceptors == "'null-const'")
    @Throws("kotlin.TypeCastException", interceptors == "'null-const'")
    fun verifyClientState(): void;
    
    fun writeTimeoutMillis(): int;
    
    fun x509TrustManager(): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.OkHttpClient$Builder : okhttp3.OkHttpClient$Builder {
    val dispatcher: okhttp3.Dispatcher;
    val connectionPool: okhttp3.ConnectionPool;
    val interceptors: java.util.List;
    val networkInterceptors: java.util.List;
    val eventListenerFactory: okhttp3.EventListener$Factory;
    val retryOnConnectionFailure: bool;
    val authenticator: okhttp3.Authenticator;
    val followRedirects: bool;
    val followSslRedirects: bool;
    val cookieJar: okhttp3.CookieJar;
    val cache: okhttp3.Cache;
    val dns: okhttp3.Dns;
    val proxy: java.net.Proxy;
    val proxySelector: java.net.ProxySelector;
    val proxyAuthenticator: okhttp3.Authenticator;
    val socketFactory: javax.net.SocketFactory;
    val sslSocketFactoryOrNull: javax.net.ssl.SSLSocketFactory;
    val x509TrustManagerOrNull: javax.net.ssl.X509TrustManager;
    val connectionSpecs: java.util.List;
    val protocols: java.util.List;
    val hostnameVerifier: javax.net.ssl.HostnameVerifier;
    val certificatePinner: okhttp3.CertificatePinner;
    val certificateChainCleaner: okhttp3.internal.tls.CertificateChainCleaner;
    val callTimeout: int;
    val connectTimeout: int;
    val readTimeout: int;
    val writeTimeout: int;
    val pingInterval: int;
    val minWebSocketMessageToCompress: long;
    val routeDatabase: okhttp3.internal.connection.RouteDatabase;
    fun `-addInterceptor`(arg0: kotlin.jvm.functions.Function1): okhttp3.OkHttpClient$Builder;
    
    fun `-addNetworkInterceptor`(arg0: kotlin.jvm.functions.Function1): okhttp3.OkHttpClient$Builder;
    
    fun addInterceptor(arg0: okhttp3.Interceptor): okhttp3.OkHttpClient$Builder;
    
    fun addNetworkInterceptor(arg0: okhttp3.Interceptor): okhttp3.OkHttpClient$Builder;
    
    fun authenticator(arg0: okhttp3.Authenticator): okhttp3.OkHttpClient$Builder;
    
    fun build(): okhttp3.OkHttpClient;
    
    fun cache(arg0: okhttp3.Cache): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun callTimeout(arg0: long, arg1: java.util.concurrent.TimeUnit): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", MILLISECONDS == "'null-const'")
    fun callTimeout(arg0: java.time.Duration): okhttp3.OkHttpClient$Builder;
    
    fun certificatePinner(arg0: okhttp3.CertificatePinner): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun connectTimeout(arg0: long, arg1: java.util.concurrent.TimeUnit): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", MILLISECONDS == "'null-const'")
    fun connectTimeout(arg0: java.time.Duration): okhttp3.OkHttpClient$Builder;
    
    fun connectionPool(arg0: okhttp3.ConnectionPool): okhttp3.OkHttpClient$Builder;
    
    fun connectionSpecs(arg0: java.util.List): okhttp3.OkHttpClient$Builder;
    
    fun cookieJar(arg0: okhttp3.CookieJar): okhttp3.OkHttpClient$Builder;
    
    fun dispatcher(arg0: okhttp3.Dispatcher): okhttp3.OkHttpClient$Builder;
    
    fun dns(arg0: okhttp3.Dns): okhttp3.OkHttpClient$Builder;
    
    fun eventListener(arg0: okhttp3.EventListener): okhttp3.OkHttpClient$Builder;
    
    fun eventListenerFactory(arg0: okhttp3.EventListener$Factory): okhttp3.OkHttpClient$Builder;
    
    fun followRedirects(arg0: bool): okhttp3.OkHttpClient$Builder;
    
    fun followSslRedirects(arg0: bool): okhttp3.OkHttpClient$Builder;
    
    fun getAuthenticator$okhttp(): okhttp3.Authenticator;
    
    fun getCache$okhttp(): okhttp3.Cache;
    
    fun getCallTimeout$okhttp(): int;
    
    fun getCertificateChainCleaner$okhttp(): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun getCertificatePinner$okhttp(): okhttp3.CertificatePinner;
    
    fun getConnectTimeout$okhttp(): int;
    
    fun getConnectionPool$okhttp(): okhttp3.ConnectionPool;
    
    fun getConnectionSpecs$okhttp(): java.util.List;
    
    fun getCookieJar$okhttp(): okhttp3.CookieJar;
    
    fun getDispatcher$okhttp(): okhttp3.Dispatcher;
    
    fun getDns$okhttp(): okhttp3.Dns;
    
    fun getEventListenerFactory$okhttp(): okhttp3.EventListener$Factory;
    
    fun getFollowRedirects$okhttp(): bool;
    
    fun getFollowSslRedirects$okhttp(): bool;
    
    fun getHostnameVerifier$okhttp(): javax.net.ssl.HostnameVerifier;
    
    fun getInterceptors$okhttp(): java.util.List;
    
    fun getMinWebSocketMessageToCompress$okhttp(): long;
    
    fun getNetworkInterceptors$okhttp(): java.util.List;
    
    fun getPingInterval$okhttp(): int;
    
    fun getProtocols$okhttp(): java.util.List;
    
    fun getProxy$okhttp(): java.net.Proxy;
    
    fun getProxyAuthenticator$okhttp(): okhttp3.Authenticator;
    
    fun getProxySelector$okhttp(): java.net.ProxySelector;
    
    fun getReadTimeout$okhttp(): int;
    
    fun getRetryOnConnectionFailure$okhttp(): bool;
    
    fun getRouteDatabase$okhttp(): okhttp3.internal.connection.RouteDatabase;
    
    fun getSocketFactory$okhttp(): javax.net.SocketFactory;
    
    fun getSslSocketFactoryOrNull$okhttp(): javax.net.ssl.SSLSocketFactory;
    
    fun getWriteTimeout$okhttp(): int;
    
    fun getX509TrustManagerOrNull$okhttp(): javax.net.ssl.X509TrustManager;
    
    fun hostnameVerifier(arg0: javax.net.ssl.HostnameVerifier): okhttp3.OkHttpClient$Builder;
    
    fun interceptors(): java.util.List;
    
    fun minWebSocketMessageToCompress(arg0: long): okhttp3.OkHttpClient$Builder;
    
    fun networkInterceptors(): java.util.List;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun pingInterval(arg0: long, arg1: java.util.concurrent.TimeUnit): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", MILLISECONDS == "'null-const'")
    fun pingInterval(arg0: java.time.Duration): okhttp3.OkHttpClient$Builder;
    
    fun protocols(arg0: java.util.List): okhttp3.OkHttpClient$Builder;
    
    fun proxy(arg0: java.net.Proxy): okhttp3.OkHttpClient$Builder;
    
    fun proxyAuthenticator(arg0: okhttp3.Authenticator): okhttp3.OkHttpClient$Builder;
    
    fun proxySelector(arg0: java.net.ProxySelector): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun readTimeout(arg0: long, arg1: java.util.concurrent.TimeUnit): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", MILLISECONDS == "'null-const'")
    fun readTimeout(arg0: java.time.Duration): okhttp3.OkHttpClient$Builder;
    
    fun retryOnConnectionFailure(arg0: bool): okhttp3.OkHttpClient$Builder;
    
    fun setAuthenticator$okhttp(arg0: okhttp3.Authenticator): void {
        assigns authenticator;
    }
    
    fun setCache$okhttp(arg0: okhttp3.Cache): void {
        assigns cache;
    }
    
    fun setCallTimeout$okhttp(arg0: int): void {
        assigns callTimeout;
    }
    
    fun setCertificateChainCleaner$okhttp(arg0: okhttp3.internal.tls.CertificateChainCleaner): void {
        assigns certificateChainCleaner;
    }
    
    fun setCertificatePinner$okhttp(arg0: okhttp3.CertificatePinner): void {
        assigns certificatePinner;
    }
    
    fun setConnectTimeout$okhttp(arg0: int): void {
        assigns connectTimeout;
    }
    
    fun setConnectionPool$okhttp(arg0: okhttp3.ConnectionPool): void {
        assigns connectionPool;
    }
    
    fun setConnectionSpecs$okhttp(arg0: java.util.List): void {
        assigns connectionSpecs;
    }
    
    fun setCookieJar$okhttp(arg0: okhttp3.CookieJar): void {
        assigns cookieJar;
    }
    
    fun setDispatcher$okhttp(arg0: okhttp3.Dispatcher): void {
        assigns dispatcher;
    }
    
    fun setDns$okhttp(arg0: okhttp3.Dns): void {
        assigns dns;
    }
    
    fun setEventListenerFactory$okhttp(arg0: okhttp3.EventListener$Factory): void {
        assigns eventListenerFactory;
    }
    
    fun setFollowRedirects$okhttp(arg0: bool): void {
        assigns followRedirects;
    }
    
    fun setFollowSslRedirects$okhttp(arg0: bool): void {
        assigns followSslRedirects;
    }
    
    fun setHostnameVerifier$okhttp(arg0: javax.net.ssl.HostnameVerifier): void {
        assigns hostnameVerifier;
    }
    
    fun setMinWebSocketMessageToCompress$okhttp(arg0: long): void {
        assigns minWebSocketMessageToCompress;
    }
    
    fun setPingInterval$okhttp(arg0: int): void {
        assigns pingInterval;
    }
    
    fun setProtocols$okhttp(arg0: java.util.List): void {
        assigns protocols;
    }
    
    fun setProxy$okhttp(arg0: java.net.Proxy): void {
        assigns proxy;
    }
    
    fun setProxyAuthenticator$okhttp(arg0: okhttp3.Authenticator): void {
        assigns proxyAuthenticator;
    }
    
    fun setProxySelector$okhttp(arg0: java.net.ProxySelector): void {
        assigns proxySelector;
    }
    
    fun setReadTimeout$okhttp(arg0: int): void {
        assigns readTimeout;
    }
    
    fun setRetryOnConnectionFailure$okhttp(arg0: bool): void {
        assigns retryOnConnectionFailure;
    }
    
    fun setRouteDatabase$okhttp(arg0: okhttp3.internal.connection.RouteDatabase): void {
        assigns routeDatabase;
    }
    
    fun setSocketFactory$okhttp(arg0: javax.net.SocketFactory): void {
        assigns socketFactory;
    }
    
    fun setSslSocketFactoryOrNull$okhttp(arg0: javax.net.ssl.SSLSocketFactory): void {
        assigns sslSocketFactoryOrNull;
    }
    
    fun setWriteTimeout$okhttp(arg0: int): void {
        assigns writeTimeout;
    }
    
    fun setX509TrustManagerOrNull$okhttp(arg0: javax.net.ssl.X509TrustManager): void {
        assigns x509TrustManagerOrNull;
    }
    
    fun socketFactory(arg0: javax.net.SocketFactory): okhttp3.OkHttpClient$Builder;
    
    fun sslSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): okhttp3.OkHttpClient$Builder;
    
    fun sslSocketFactory(arg0: javax.net.ssl.SSLSocketFactory, arg1: javax.net.ssl.X509TrustManager): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun writeTimeout(arg0: long, arg1: java.util.concurrent.TimeUnit): okhttp3.OkHttpClient$Builder;
    
    @Throws("java.lang.IllegalStateException", MILLISECONDS == "'null-const'")
    fun writeTimeout(arg0: java.time.Duration): okhttp3.OkHttpClient$Builder;
}
automaton okhttp3.OkHttpClient$Builder$addInterceptor$$inlined$invoke$1 (val arg0: `<UNRESOLVED_TYPE>`) : okhttp3.OkHttpClient$Builder$addInterceptor$$inlined$invoke$1 {
    val $block$inlined: `<UNRESOLVED_TYPE>`;
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
}
automaton okhttp3.OkHttpClient$Builder$addNetworkInterceptor$$inlined$invoke$1 (val arg0: `<UNRESOLVED_TYPE>`) : okhttp3.OkHttpClient$Builder$addNetworkInterceptor$$inlined$invoke$1 {
    val $block$inlined: `<UNRESOLVED_TYPE>`;
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
}
automaton okhttp3.OkHttpClient$Companion : okhttp3.OkHttpClient$Companion {
    fun getDEFAULT_CONNECTION_SPECS$okhttp(): java.util.List;
    
    fun getDEFAULT_PROTOCOLS$okhttp(): java.util.List;
}
automaton okhttp3.internal.platform.OpenJSSEPlatform : okhttp3.internal.platform.OpenJSSEPlatform {
    val provider: java.security.Provider;
    val isSupported: bool;
    val Companion: okhttp3.internal.platform.OpenJSSEPlatform$Companion;
    fun access$isSupported$cp(): bool;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun newSSLContext(): javax.net.ssl.SSLContext;
    
    fun platformTrustManager(): javax.net.ssl.X509TrustManager;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns isSupported;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.OpenJSSEPlatform$Companion : okhttp3.internal.platform.OpenJSSEPlatform$Companion {
    fun buildIfSupported(): okhttp3.internal.platform.OpenJSSEPlatform;
    
    fun isSupported(): bool;
}
automaton okhttp3.internal.platform.Platform : okhttp3.internal.platform.Platform {
    val platform: okhttp3.internal.platform.Platform;
    val INFO: int;
    val WARN: int;
    val logger: java.util.logging.Logger;
    val Companion: okhttp3.internal.platform.Platform$Companion;
    fun access$getPlatform$cp(): okhttp3.internal.platform.Platform;
    
    fun access$setPlatform$cp(arg0: okhttp3.internal.platform.Platform): void {
        assigns arg0.platform;
    }
    
    fun afterHandshake(arg0: javax.net.ssl.SSLSocket): void;
    
    fun buildCertificateChainCleaner(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.tls.CertificateChainCleaner;
    
    fun buildTrustRootIndex(arg0: javax.net.ssl.X509TrustManager): okhttp3.internal.tls.TrustRootIndex;
    
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun connectSocket(arg0: java.net.Socket, arg1: java.net.InetSocketAddress, arg2: int): void;
    
    fun get(): okhttp3.internal.platform.Platform;
    
    fun getPrefix(): java.lang.String;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun getStackTraceForCloseable(arg0: java.lang.String): java.lang.Object;
    
    fun isCleartextTrafficPermitted(arg0: java.lang.String): bool;
    
    fun log(arg0: java.lang.String, arg1: int, arg2: java.lang.Throwable): void;
    
    @Throws("java.lang.UnsupportedOperationException", arg5 != "'null-const'")
    fun log$default(arg0: okhttp3.internal.platform.Platform, arg1: java.lang.String, arg2: int, arg3: java.lang.Throwable, arg4: int, arg5: java.lang.Object): void;
    
    fun logCloseableLeak(arg0: java.lang.String, arg1: java.lang.Object): void;
    
    fun newSSLContext(): javax.net.ssl.SSLContext;
    
    fun newSslSocketFactory(arg0: javax.net.ssl.X509TrustManager): javax.net.ssl.SSLSocketFactory;
    
    fun platformTrustManager(): javax.net.ssl.X509TrustManager;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns platform;
        assigns logger;
    }
    
    fun toString(): java.lang.String;
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.Platform$Companion : okhttp3.internal.platform.Platform$Companion {
    fun access$findPlatform(arg0: okhttp3.internal.platform.Platform$Companion): okhttp3.internal.platform.Platform;
    
    fun alpnProtocolNames(arg0: java.util.List): java.util.List;
    
    fun concatLengthPrefixed(arg0: java.util.List): array<byte>;
    
    fun findAndroidPlatform(): okhttp3.internal.platform.Platform;
    
    fun findJvmPlatform(): okhttp3.internal.platform.Platform;
    
    fun findPlatform(): okhttp3.internal.platform.Platform;
    
    fun get(): okhttp3.internal.platform.Platform;
    
    fun isAndroid(): bool;
    
    fun isBouncyCastlePreferred(): bool;
    
    fun isConscryptPreferred(): bool;
    
    fun isOpenJSSEPreferred(): bool;
    
    fun resetForTests(arg0: okhttp3.internal.platform.Platform): void {
        assigns arg0.platform;
    }
    
    fun resetForTests$default(arg0: okhttp3.internal.platform.Platform$Companion, arg1: okhttp3.internal.platform.Platform, arg2: int, arg3: java.lang.Object): void;
}
automaton okhttp3.Protocol (val arg0: java.lang.String, val arg1: int, val arg2: java.lang.String) : okhttp3.Protocol {
    val HTTP_1_0: okhttp3.Protocol;
    val HTTP_1_1: okhttp3.Protocol;
    val SPDY_3: okhttp3.Protocol;
    val HTTP_2: okhttp3.Protocol;
    val H2_PRIOR_KNOWLEDGE: okhttp3.Protocol;
    val QUIC: okhttp3.Protocol;
    val $VALUES: array<okhttp3.Protocol>;
    val protocol: java.lang.String;
    val Companion: okhttp3.Protocol$Companion;
    fun access$getProtocol$p(arg0: okhttp3.Protocol): java.lang.String;
    
    fun get(arg0: java.lang.String): okhttp3.Protocol;
    
    fun `static-constructor`(): void {
        assigns HTTP_1_0;
        assigns HTTP_1_1;
        assigns SPDY_3;
        assigns HTTP_2;
        assigns H2_PRIOR_KNOWLEDGE;
        assigns QUIC;
        assigns $VALUES;
        assigns Companion;
    }
    
    fun toString(): java.lang.String;
    
    fun valueOf(arg0: java.lang.String): okhttp3.Protocol;
    
    fun values(): array<okhttp3.Protocol>;
}
automaton okhttp3.Protocol$Companion : okhttp3.Protocol$Companion {
    fun get(arg0: java.lang.String): okhttp3.Protocol;
}
automaton okhttp3.internal.publicsuffix.PublicSuffixDatabase : okhttp3.internal.publicsuffix.PublicSuffixDatabase {
    val listRead: java.util.concurrent.atomic.AtomicBoolean;
    val readCompleteLatch: java.util.concurrent.CountDownLatch;
    val publicSuffixListBytes: array<byte>;
    val publicSuffixExceptionListBytes: array<byte>;
    val PUBLIC_SUFFIX_RESOURCE: java.lang.String;
    val WILDCARD_LABEL: array<byte>;
    val PREVAILING_RULE: java.util.List;
    val EXCEPTION_MARKER: char;
    val instance: okhttp3.internal.publicsuffix.PublicSuffixDatabase;
    val Companion: okhttp3.internal.publicsuffix.PublicSuffixDatabase$Companion;
    fun access$getInstance$cp(): okhttp3.internal.publicsuffix.PublicSuffixDatabase;
    
    fun access$getPublicSuffixListBytes$p(arg0: okhttp3.internal.publicsuffix.PublicSuffixDatabase): array<byte>;
    
    fun access$setPublicSuffixListBytes$p(arg0: okhttp3.internal.publicsuffix.PublicSuffixDatabase, arg1: array): void {
        assigns arg0.publicSuffixListBytes;
    }
    
    @Throws("java.lang.IllegalStateException", arg0 != "'null-const'" & publicSuffixListBytes == "'null-const'")
    @Throws("java.lang.IllegalStateException", publicSuffixListBytes == "'null-const'")
    fun findMatchingRule(arg0: java.util.List): java.util.List {
        assigns publicSuffixListBytes;
        assigns publicSuffixExceptionListBytes;
    }
    
    @Throws("java.lang.IllegalStateException", publicSuffixListBytes == "'null-const'")
    fun getEffectiveTldPlusOne(arg0: java.lang.String): java.lang.String {
        assigns publicSuffixListBytes;
        assigns publicSuffixExceptionListBytes;
    }
    
    fun readTheList(): void {
        assigns publicSuffixListBytes;
        assigns publicSuffixExceptionListBytes;
    }
    
    fun readTheListUninterruptibly(): void {
        assigns publicSuffixListBytes;
        assigns publicSuffixExceptionListBytes;
    }
    
    fun setListBytes(arg0: array, arg1: array): void {
        assigns publicSuffixListBytes;
        assigns publicSuffixExceptionListBytes;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns WILDCARD_LABEL;
        assigns PREVAILING_RULE;
        assigns instance;
    }
}
automaton okhttp3.internal.publicsuffix.PublicSuffixDatabase$Companion : okhttp3.internal.publicsuffix.PublicSuffixDatabase$Companion {
    fun access$binarySearch(arg0: okhttp3.internal.publicsuffix.PublicSuffixDatabase$Companion, arg1: array, arg2: array, arg3: int): java.lang.String;
    
    fun binarySearch(arg0: array, arg1: array, arg2: int): java.lang.String;
    
    fun get(): okhttp3.internal.publicsuffix.PublicSuffixDatabase;
}
automaton okhttp3.internal.publicsuffix.PublicSuffixDatabase$findMatchingRule$1 (val arg0: okhttp3.internal.publicsuffix.PublicSuffixDatabase) : okhttp3.internal.publicsuffix.PublicSuffixDatabase$findMatchingRule$1 {
    fun get(): java.lang.Object;
    
    fun getName(): java.lang.String;
    
    fun getOwner(): `<UNRESOLVED_TYPE>`;
    
    fun getSignature(): java.lang.String;
    
    fun set(arg0: java.lang.Object): void;
}
automaton okhttp3.internal.http2.PushObserver : okhttp3.internal.http2.PushObserver {
    val CANCEL: okhttp3.internal.http2.PushObserver;
    val Companion: okhttp3.internal.http2.PushObserver$Companion;
    fun onData(arg0: int, arg1: okio.BufferedSource, arg2: int, arg3: bool): bool;
    
    fun onData(arg0: int, arg1: okio.BufferedSource, arg2: int, arg3: bool): bool;
    
    fun onHeaders(arg0: int, arg1: java.util.List, arg2: bool): bool;
    
    fun onRequest(arg0: int, arg1: java.util.List): bool;
    
    fun onReset(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.http2.PushObserver$Companion : okhttp3.internal.http2.PushObserver$Companion {
    val $$INSTANCE: okhttp3.internal.http2.PushObserver$Companion;
}
automaton okhttp3.internal.http2.PushObserver$Companion$PushObserverCancel : okhttp3.internal.http2.PushObserver$Companion$PushObserverCancel {
    fun onData(arg0: int, arg1: okio.BufferedSource, arg2: int, arg3: bool): bool {
        assigns arg1;
    }
    
    fun onData(arg0: int, arg1: okio.BufferedSource, arg2: int, arg3: bool): bool;
    
    fun onHeaders(arg0: int, arg1: java.util.List, arg2: bool): bool;
    
    fun onRequest(arg0: int, arg1: java.util.List): bool;
    
    fun onReset(arg0: int, arg1: okhttp3.internal.http2.ErrorCode): void;
}
automaton okhttp3.internal.connection.RealCall (val arg0: okhttp3.OkHttpClient, val arg1: okhttp3.Request, val arg2: bool) : okhttp3.internal.connection.RealCall {
    val connectionPool: okhttp3.internal.connection.RealConnectionPool;
    val eventListener: okhttp3.EventListener;
    val timeout: okhttp3.internal.connection.RealCall$timeout$1;
    val callStackTrace: java.lang.Object;
    val exchangeFinder: okhttp3.internal.connection.ExchangeFinder;
    val connection: okhttp3.internal.connection.RealConnection;
    val exchange: okhttp3.internal.connection.Exchange;
    val exchangeRequestDone: bool;
    val exchangeResponseDone: bool;
    val canceled: bool;
    val timeoutEarlyExit: bool;
    val noMoreExchanges: bool;
    val executed: bool;
    val interceptorScopedExchange: okhttp3.internal.connection.Exchange;
    val client: okhttp3.OkHttpClient;
    val originalRequest: okhttp3.Request;
    val forWebSocket: bool;
    fun access$getTimeout$p(arg0: okhttp3.internal.connection.RealCall): okhttp3.internal.connection.RealCall$timeout$1;
    
    fun access$toLoggableString(arg0: okhttp3.internal.connection.RealCall): java.lang.String;
    
    @Throws("java.lang.IllegalStateException", connection != "'null-const'")
    fun acquireConnectionNoEvents(arg0: okhttp3.internal.connection.RealConnection): void {
        assigns connection;
    }
    
    fun callStart(): void {
        assigns callStackTrace;
    }
    
    fun cancel(): void {
        assigns canceled;
    }
    
    fun clone(): okhttp3.internal.connection.RealCall;
    
    fun clone(): java.lang.Object;
    
    fun clone(): okhttp3.Call;
    
    @Throws("java.lang.IllegalStateException", isHttps & sslSocketFactoryOrNull == 0)
    fun createAddress(arg0: okhttp3.HttpUrl): okhttp3.Address;
    
    fun enqueue(arg0: okhttp3.Callback): void {
        assigns executed;
        assigns callStackTrace;
    }
    
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & exchange != "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange != "'null-const'" & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & interceptorScopedExchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange != "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange != "'null-const'" & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange != "'null-const'" & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & interceptorScopedExchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & exchange != "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & interceptorScopedExchange != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange != "'null-const'" & interceptorScopedExchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange != "'null-const'" & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & interceptorScopedExchange != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange != "'null-const'" & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange != "'null-const'" & exchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & sslSocketFactoryOrNull == 0 & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange != "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & sslSocketFactoryOrNull == 0 & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & sslSocketFactoryOrNull == 0)
    @Throws("java.lang.IllegalStateException", sslSocketFactoryOrNull == 0 & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", sslSocketFactoryOrNull == 0 & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & sslSocketFactoryOrNull == 0 & exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & sslSocketFactoryOrNull == 0 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", sslSocketFactoryOrNull == 0 & exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & exchange == "'null-const'" & interceptorScopedExchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & sslSocketFactoryOrNull == 0 & interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & sslSocketFactoryOrNull == 0 & interceptorScopedExchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", sslSocketFactoryOrNull == 0 & interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & arg1 & interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", !sslSocketFactoryOrNull == "'null-const'" & interceptorScopedExchange == "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", arg1 & sslSocketFactoryOrNull == 0 & interceptorScopedExchange == "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !arg1 & exchange != "'null-const'" & sslSocketFactoryOrNull == "'null-const'")
    fun enterNetworkInterceptorExchange(arg0: okhttp3.Request, arg1: bool): void {
        assigns exchangeFinder;
    }
    
    fun execute(): okhttp3.Response {
        assigns executed;
        assigns callStackTrace;
        assigns noMoreExchanges;
        assigns connection;
    }
    
    fun exitNetworkInterceptorExchange$okhttp(arg0: bool): void {
        assigns interceptorScopedExchange;
    }
    
    fun getClient(): okhttp3.OkHttpClient;
    
    fun getConnection(): okhttp3.internal.connection.RealConnection;
    
    fun getEventListener$okhttp(): okhttp3.EventListener;
    
    fun getForWebSocket(): bool;
    
    fun getInterceptorScopedExchange$okhttp(): okhttp3.internal.connection.Exchange;
    
    fun getOriginalRequest(): okhttp3.Request;
    
    fun getResponseWithInterceptorChain$okhttp(): okhttp3.Response {
        assigns noMoreExchanges;
        assigns connection;
    }
    
    fun initExchange$okhttp(arg0: okhttp3.internal.http.RealInterceptorChain): okhttp3.internal.connection.Exchange {
        assigns interceptorScopedExchange;
        assigns exchange;
        assigns exchangeRequestDone;
        assigns exchangeResponseDone;
    }
    
    fun isCanceled(): bool;
    
    fun isExecuted(): bool;
    
    fun maybeReleaseConnection(arg0: java.io.IOException, arg1: bool): java.io.IOException {
        assigns connection;
    }
    
    fun messageDone$okhttp(arg0: okhttp3.internal.connection.Exchange, arg1: bool, arg2: bool, arg3: java.io.IOException): java.io.IOException {
        assigns exchangeRequestDone;
        assigns exchangeResponseDone;
        assigns exchange;
        assigns connection;
    }
    
    fun noMoreExchanges$okhttp(arg0: java.io.IOException): java.io.IOException {
        assigns noMoreExchanges;
        assigns connection;
    }
    
    fun redactedUrl$okhttp(): java.lang.String;
    
    fun releaseConnectionNoEvents$okhttp(): java.net.Socket {
        assigns connection;
    }
    
    fun request(): okhttp3.Request;
    
    fun retryAfterFailure(): bool;
    
    fun setConnection(arg0: okhttp3.internal.connection.RealConnection): void {
        assigns connection;
    }
    
    fun timeout(): okio.AsyncTimeout;
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.AsyncTimeout;
    
    fun timeout(): okio.Timeout;
    
    @Throws("java.lang.IllegalStateException", timeoutEarlyExit)
    fun timeoutEarlyExit(): void {
        assigns timeoutEarlyExit;
    }
    
    fun timeoutExit(arg0: java.io.IOException): java.io.IOException;
    
    fun toLoggableString(): java.lang.String;
}
automaton okhttp3.internal.connection.RealCall$AsyncCall (val arg0: okhttp3.internal.connection.RealCall, val arg1: okhttp3.Callback) : okhttp3.internal.connection.RealCall$AsyncCall {
    val callsPerHost: java.util.concurrent.atomic.AtomicInteger;
    val responseCallback: okhttp3.Callback;
    val this$0: okhttp3.internal.connection.RealCall;
    fun executeOn(arg0: java.util.concurrent.ExecutorService): void;
    
    fun getCall(): okhttp3.internal.connection.RealCall;
    
    fun getCallsPerHost(): java.util.concurrent.atomic.AtomicInteger;
    
    fun getHost(): java.lang.String;
    
    fun getRequest(): okhttp3.Request;
    
    fun reuseCallsPerHostFrom(arg0: okhttp3.internal.connection.RealCall$AsyncCall): void {
        assigns callsPerHost;
    }
    
    fun run(): void;
}
automaton okhttp3.internal.connection.RealCall$CallReference (val arg0: okhttp3.internal.connection.RealCall, val arg1: java.lang.Object) : okhttp3.internal.connection.RealCall$CallReference {
    val callStackTrace: java.lang.Object;
    fun getCallStackTrace(): java.lang.Object;
}
automaton okhttp3.internal.connection.RealCall$timeout$1 (val arg0: okhttp3.internal.connection.RealCall) : okhttp3.internal.connection.RealCall$timeout$1 {
    val this$0: okhttp3.internal.connection.RealCall;
    fun timedOut(): void;
}
automaton okhttp3.internal.connection.RealConnection (val arg0: okhttp3.internal.connection.RealConnectionPool, val arg1: okhttp3.Route) : okhttp3.internal.connection.RealConnection {
    val rawSocket: java.net.Socket;
    val socket: java.net.Socket;
    val handshake: okhttp3.Handshake;
    val protocol: okhttp3.Protocol;
    val http2Connection: okhttp3.internal.http2.Http2Connection;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    val noNewExchanges: bool;
    val noCoalescedConnections: bool;
    val routeFailureCount: int;
    val successCount: int;
    val refusedStreamCount: int;
    val allocationLimit: int;
    val calls: java.util.List;
    val idleAtNs: long;
    val connectionPool: okhttp3.internal.connection.RealConnectionPool;
    val route: okhttp3.Route;
    val NPE_THROW_WITH_NULL: java.lang.String;
    val MAX_TUNNEL_ATTEMPTS: int;
    val IDLE_CONNECTION_HEALTHY_NS: long;
    val Companion: okhttp3.internal.connection.RealConnection$Companion;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    fun access$getHandshake$p(arg0: okhttp3.internal.connection.RealConnection): okhttp3.Handshake;
    
    fun access$getSocket$p(arg0: okhttp3.internal.connection.RealConnection): java.net.Socket;
    
    fun access$setHandshake$p(arg0: okhttp3.internal.connection.RealConnection, arg1: okhttp3.Handshake): void {
        assigns arg0.handshake;
    }
    
    fun access$setSocket$p(arg0: okhttp3.internal.connection.RealConnection, arg1: java.net.Socket): void {
        assigns arg0.socket;
    }
    
    fun cancel(): void;
    
    fun certificateSupportHost(arg0: okhttp3.HttpUrl, arg1: okhttp3.Handshake): bool;
    
    fun connect(arg0: int, arg1: int, arg2: int, arg3: int, arg4: bool, arg5: okhttp3.Call, arg6: okhttp3.EventListener): void {
        assigns socket;
        assigns rawSocket;
        assigns source;
        assigns sink;
        assigns handshake;
        assigns protocol;
        assigns http2Connection;
        assigns allocationLimit;
        assigns idleAtNs;
    }
    
    fun connectFailed$okhttp(arg0: okhttp3.OkHttpClient, arg1: okhttp3.Route, arg2: java.io.IOException): void;
    
    fun connectSocket(arg0: int, arg1: int, arg2: okhttp3.Call, arg3: okhttp3.EventListener): void {
        assigns rawSocket;
        assigns source;
        assigns sink;
    }
    
    fun connectTls(arg0: okhttp3.internal.connection.ConnectionSpecSelector): void {
        assigns handshake;
        assigns socket;
        assigns source;
        assigns sink;
        assigns protocol;
        assigns arg0.nextModeIndex;
        assigns arg0.isFallbackPossible;
    }
    
    fun connectTunnel(arg0: int, arg1: int, arg2: int, arg3: okhttp3.Call, arg4: okhttp3.EventListener): void {
        assigns rawSocket;
        assigns sink;
        assigns source;
    }
    
    fun createTunnel(arg0: int, arg1: int, arg2: okhttp3.Request, arg3: okhttp3.HttpUrl): okhttp3.Request;
    
    fun createTunnelRequest(): okhttp3.Request;
    
    fun establishProtocol(arg0: okhttp3.internal.connection.ConnectionSpecSelector, arg1: int, arg2: okhttp3.Call, arg3: okhttp3.EventListener): void {
        assigns socket;
        assigns protocol;
        assigns http2Connection;
        assigns allocationLimit;
        assigns handshake;
        assigns source;
        assigns sink;
        assigns arg0.nextModeIndex;
        assigns arg0.isFallbackPossible;
    }
    
    fun getCalls(): java.util.List;
    
    fun getConnectionPool(): okhttp3.internal.connection.RealConnectionPool;
    
    fun getIdleAtNs$okhttp(): long;
    
    fun getNoNewExchanges(): bool;
    
    fun getRouteFailureCount$okhttp(): int;
    
    fun getSuccessCount$okhttp(): int;
    
    fun handshake(): okhttp3.Handshake;
    
    fun isEligible$okhttp(arg0: okhttp3.Address, arg1: java.util.List): bool;
    
    fun isHealthy(arg0: bool): bool;
    
    fun isMultiplexed(): bool;
    
    fun newCodec$okhttp(arg0: okhttp3.OkHttpClient, arg1: okhttp3.internal.http.RealInterceptorChain): okhttp3.internal.http.ExchangeCodec;
    
    fun newWebSocketStreams$okhttp(arg0: okhttp3.internal.connection.Exchange): okhttp3.internal.ws.RealWebSocket$Streams {
        assigns noNewExchanges;
    }
    
    fun noCoalescedConnections(): void {
        assigns noCoalescedConnections;
    }
    
    fun noNewExchanges(): void {
        assigns noNewExchanges;
    }
    
    fun onSettings(arg0: okhttp3.internal.http2.Http2Connection, arg1: okhttp3.internal.http2.Settings): void {
        assigns allocationLimit;
    }
    
    fun onStream(arg0: okhttp3.internal.http2.Http2Stream): void {
        assigns arg0.errorCode;
        assigns arg0.errorException;
    }
    
    fun protocol(): okhttp3.Protocol;
    
    fun route(): okhttp3.Route;
    
    fun routeMatchesAny(arg0: java.util.List): bool;
    
    fun setIdleAtNs$okhttp(arg0: long): void {
        assigns idleAtNs;
    }
    
    fun setNoNewExchanges(arg0: bool): void {
        assigns noNewExchanges;
    }
    
    fun setRouteFailureCount$okhttp(arg0: int): void {
        assigns routeFailureCount;
    }
    
    fun setSuccessCount$okhttp(arg0: int): void {
        assigns successCount;
    }
    
    fun socket(): java.net.Socket;
    
    fun startHttp2(arg0: int): void {
        assigns http2Connection;
        assigns allocationLimit;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun supportsUrl(arg0: okhttp3.HttpUrl): bool;
    
    fun toString(): java.lang.String;
    
    fun trackFailure$okhttp(arg0: okhttp3.internal.connection.RealCall, arg1: java.io.IOException): void {
        assigns refusedStreamCount;
        assigns noNewExchanges;
        assigns routeFailureCount;
    }
}
automaton okhttp3.internal.connection.RealConnection$Companion : okhttp3.internal.connection.RealConnection$Companion {
    fun newTestConnection(arg0: okhttp3.internal.connection.RealConnectionPool, arg1: okhttp3.Route, arg2: java.net.Socket, arg3: long): okhttp3.internal.connection.RealConnection;
}
automaton okhttp3.internal.connection.RealConnection$WhenMappings : okhttp3.internal.connection.RealConnection$WhenMappings {
    val $EnumSwitchMapping$0: array<int>;
    fun `static-constructor`(): void {
        assigns $EnumSwitchMapping$0;
    }
}
automaton okhttp3.internal.connection.RealConnection$connectTls$1 (val arg0: okhttp3.CertificatePinner, val arg1: okhttp3.Handshake, val arg2: okhttp3.Address) : okhttp3.internal.connection.RealConnection$connectTls$1 {
    val $certificatePinner: okhttp3.CertificatePinner;
    val $unverifiedHandshake: okhttp3.Handshake;
    val $address: okhttp3.Address;
    @Throws("kotlin.TypeCastException", $unverifiedHandshake != "'null-const'" & $unverifiedHandshake <= 6 & peerCertificates$delegate != "'null-const'" & certificateChainCleaner != "'null-const'" & certificateChainCleaner <= 10 & host <= 10 & $address != "'null-const'" & $address <= 8 & `url` != "'null-const'" & `url` <= 9 & $certificatePinner != "'null-const'" & $certificatePinner <= 4)
    @Throws("kotlin.TypeCastException", peerCertificates$delegate != "'null-const'" & peerCertificates$delegate <= 7)
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.internal.connection.RealConnection$connectTls$2 (val arg0: okhttp3.internal.connection.RealConnection) : okhttp3.internal.connection.RealConnection$connectTls$2 {
    val this$0: okhttp3.internal.connection.RealConnection;
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.internal.connection.RealConnection$newWebSocketStreams$1 (val arg0: okhttp3.internal.connection.Exchange, val arg1: okio.BufferedSource, val arg2: okio.BufferedSink, val arg3: bool, val arg4: okio.BufferedSource, val arg5: okio.BufferedSink) : okhttp3.internal.connection.RealConnection$newWebSocketStreams$1 {
    val $exchange: okhttp3.internal.connection.Exchange;
    val $source: okio.BufferedSource;
    val $sink: okio.BufferedSink;
    val $source: okio.BufferedSource;
    val $sink: okio.BufferedSink;
    fun close(): void;
}
automaton okhttp3.internal.connection.RealConnectionPool (val arg0: okhttp3.internal.concurrent.TaskRunner, val arg1: int, val arg2: long, val arg3: java.util.concurrent.TimeUnit) : okhttp3.internal.connection.RealConnectionPool {
    val keepAliveDurationNs: long;
    val cleanupQueue: okhttp3.internal.concurrent.TaskQueue;
    val cleanupTask: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1;
    val connections: java.util.ArrayDeque;
    val maxIdleConnections: int;
    val Companion: okhttp3.internal.connection.RealConnectionPool$Companion;
    fun callAcquirePooledConnection(arg0: okhttp3.Address, arg1: okhttp3.internal.connection.RealCall, arg2: java.util.List, arg3: bool): bool {
        assigns arg1.connection;
    }
    
    fun cleanup(arg0: long): long;
    
    fun connectionBecameIdle(arg0: okhttp3.internal.connection.RealConnection): bool;
    
    fun connectionCount(): int;
    
    fun evictAll(): void;
    
    fun idleConnectionCount(): int;
    
    fun pruneAndGetAllocationCount(arg0: okhttp3.internal.connection.RealConnection, arg1: long): int {
        assigns arg0.noNewExchanges;
        assigns arg0.idleAtNs;
    }
    
    fun put(arg0: okhttp3.internal.connection.RealConnection): void;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.connection.RealConnectionPool$Companion : okhttp3.internal.connection.RealConnectionPool$Companion {
    fun get(arg0: okhttp3.ConnectionPool): okhttp3.internal.connection.RealConnectionPool;
}
automaton okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 (val arg0: okhttp3.internal.connection.RealConnectionPool, val arg1: java.lang.String) : okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 {
    val this$0: okhttp3.internal.connection.RealConnectionPool;
    fun runOnce(): long;
}
automaton okhttp3.internal.http.RealInterceptorChain (val arg0: okhttp3.internal.connection.RealCall, val arg1: java.util.List, val arg2: int, val arg3: okhttp3.internal.connection.Exchange, val arg4: okhttp3.Request, val arg5: int, val arg6: int, val arg7: int) : okhttp3.internal.http.RealInterceptorChain {
    val calls: int;
    val call: okhttp3.internal.connection.RealCall;
    val interceptors: java.util.List;
    val index: int;
    val exchange: okhttp3.internal.connection.Exchange;
    val request: okhttp3.Request;
    val connectTimeoutMillis: int;
    val readTimeoutMillis: int;
    val writeTimeoutMillis: int;
    fun call(): okhttp3.Call;
    
    fun connectTimeoutMillis(): int;
    
    fun connection(): okhttp3.Connection;
    
    fun copy$okhttp(arg0: int, arg1: okhttp3.internal.connection.Exchange, arg2: okhttp3.Request, arg3: int, arg4: int, arg5: int): okhttp3.internal.http.RealInterceptorChain;
    
    fun copy$okhttp$default(arg0: okhttp3.internal.http.RealInterceptorChain, arg1: int, arg2: okhttp3.internal.connection.Exchange, arg3: okhttp3.Request, arg4: int, arg5: int, arg6: int, arg7: int, arg8: java.lang.Object): okhttp3.internal.http.RealInterceptorChain;
    
    fun getCall$okhttp(): okhttp3.internal.connection.RealCall;
    
    fun getConnectTimeoutMillis$okhttp(): int;
    
    fun getExchange$okhttp(): okhttp3.internal.connection.Exchange;
    
    fun getReadTimeoutMillis$okhttp(): int;
    
    fun getRequest$okhttp(): okhttp3.Request;
    
    fun getWriteTimeoutMillis$okhttp(): int;
    
    fun proceed(arg0: okhttp3.Request): okhttp3.Response {
        assigns calls;
    }
    
    fun readTimeoutMillis(): int;
    
    fun request(): okhttp3.Request;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun withConnectTimeout(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.Interceptor$Chain;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun withReadTimeout(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.Interceptor$Chain;
    
    @Throws("java.lang.IllegalStateException", arg1 == "'null-const'")
    fun withWriteTimeout(arg0: int, arg1: java.util.concurrent.TimeUnit): okhttp3.Interceptor$Chain;
    
    fun writeTimeoutMillis(): int;
}
automaton okhttp3.internal.http.RealResponseBody (val arg0: java.lang.String, val arg1: long, val arg2: okio.BufferedSource) : okhttp3.internal.http.RealResponseBody {
    val contentTypeString: java.lang.String;
    val contentLength: long;
    val source: okio.BufferedSource;
    val source: okio.BufferedSource;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun source(): okio.BufferedSource;
    
    fun source(): okio.BufferedSource;
}
automaton okhttp3.internal.ws.RealWebSocket (val arg0: okhttp3.internal.concurrent.TaskRunner, val arg1: okhttp3.Request, val arg2: okhttp3.WebSocketListener, val arg3: java.util.Random, val arg4: long, val arg5: okhttp3.internal.ws.WebSocketExtensions, val arg6: long) : okhttp3.internal.ws.RealWebSocket {
    val key: java.lang.String;
    val call: okhttp3.Call;
    val writerTask: okhttp3.internal.concurrent.Task;
    val reader: okhttp3.internal.ws.WebSocketReader;
    val writer: okhttp3.internal.ws.WebSocketWriter;
    val taskQueue: okhttp3.internal.concurrent.TaskQueue;
    val name: java.lang.String;
    val streams: okhttp3.internal.ws.RealWebSocket$Streams;
    val pongQueue: java.util.ArrayDeque;
    val messageAndCloseQueue: java.util.ArrayDeque;
    val queueSize: long;
    val enqueuedClose: bool;
    val receivedCloseCode: int;
    val receivedCloseReason: java.lang.String;
    val failed: bool;
    val sentPingCount: int;
    val receivedPingCount: int;
    val receivedPongCount: int;
    val awaitingPong: bool;
    val originalRequest: okhttp3.Request;
    val listener: okhttp3.WebSocketListener;
    val random: java.util.Random;
    val pingIntervalMillis: long;
    val extensions: okhttp3.internal.ws.WebSocketExtensions;
    val minimumDeflateSize: long;
    val ONLY_HTTP1: java.util.List;
    val MAX_QUEUE_SIZE: long;
    val CANCEL_AFTER_CLOSE_MILLIS: long;
    val DEFAULT_MINIMUM_DEFLATE_SIZE: long;
    val Companion: okhttp3.internal.ws.RealWebSocket$Companion;
    fun access$getExtensions$p(arg0: okhttp3.internal.ws.RealWebSocket): okhttp3.internal.ws.WebSocketExtensions;
    
    fun access$getMessageAndCloseQueue$p(arg0: okhttp3.internal.ws.RealWebSocket): java.util.ArrayDeque;
    
    fun access$getName$p(arg0: okhttp3.internal.ws.RealWebSocket): java.lang.String;
    
    fun access$isValid(arg0: okhttp3.internal.ws.RealWebSocket, arg1: okhttp3.internal.ws.WebSocketExtensions): bool;
    
    fun access$setExtensions$p(arg0: okhttp3.internal.ws.RealWebSocket, arg1: okhttp3.internal.ws.WebSocketExtensions): void {
        assigns arg0.extensions;
    }
    
    fun access$setName$p(arg0: okhttp3.internal.ws.RealWebSocket, arg1: java.lang.String): void {
        assigns arg0.name;
    }
    
    fun awaitTermination(arg0: long, arg1: java.util.concurrent.TimeUnit): void;
    
    fun cancel(): void;
    
    fun checkUpgradeSuccess$okhttp(arg0: okhttp3.Response, arg1: okhttp3.internal.connection.Exchange): void;
    
    fun close(arg0: int, arg1: java.lang.String): bool {
        assigns enqueuedClose;
    }
    
    fun close(arg0: int, arg1: java.lang.String, arg2: long): bool {
        assigns enqueuedClose;
    }
    
    fun connect(arg0: okhttp3.OkHttpClient): void {
        assigns call;
        assigns failed;
        assigns streams;
        assigns reader;
        assigns writer;
    }
    
    fun failWebSocket(arg0: java.lang.Exception, arg1: okhttp3.Response): void {
        assigns failed;
        assigns streams;
        assigns reader;
        assigns writer;
    }
    
    fun getListener$okhttp(): okhttp3.WebSocketListener;
    
    fun initReaderAndWriter(arg0: java.lang.String, arg1: okhttp3.internal.ws.RealWebSocket$Streams): void {
        assigns name;
        assigns streams;
        assigns writer;
        assigns writerTask;
        assigns reader;
    }
    
    fun isValid(arg0: okhttp3.internal.ws.WebSocketExtensions): bool;
    
    fun loopReader(): void;
    
    fun onReadClose(arg0: int, arg1: java.lang.String): void {
        assigns receivedCloseCode;
        assigns receivedCloseReason;
        assigns streams;
        assigns reader;
        assigns writer;
    }
    
    fun onReadMessage(arg0: java.lang.String): void;
    
    fun onReadMessage(arg0: okio.ByteString): void;
    
    fun onReadMessage(arg0: okio.ByteString): void;
    
    fun onReadPing(arg0: okio.ByteString): void {
        assigns receivedPingCount;
    }
    
    fun onReadPing(arg0: okio.ByteString): void;
    
    fun onReadPong(arg0: okio.ByteString): void {
        assigns receivedPongCount;
        assigns awaitingPong;
    }
    
    fun onReadPong(arg0: okio.ByteString): void;
    
    fun pong(arg0: okio.ByteString): bool;
    
    fun pong(arg0: okio.ByteString): bool;
    
    fun processNextFrame(): bool {
        assigns failed;
        assigns streams;
        assigns reader;
        assigns writer;
    }
    
    fun queueSize(): long;
    
    fun receivedPingCount(): int;
    
    fun receivedPongCount(): int;
    
    fun request(): okhttp3.Request;
    
    fun runWriter(): void {
        assigns writerTask.queue;
        assigns writerTask.nextExecuteNanoTime;
    }
    
    fun send(arg0: java.lang.String): bool {
        assigns queueSize;
        assigns enqueuedClose;
    }
    
    fun send(arg0: okio.ByteString): bool;
    
    fun send(arg0: okio.ByteString, arg1: int): bool {
        assigns queueSize;
        assigns enqueuedClose;
    }
    
    fun send(arg0: okio.ByteString): bool;
    
    fun send(arg0: okio.ByteString, arg1: int): bool;
    
    fun sentPingCount(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns ONLY_HTTP1;
    }
    
    fun tearDown(): void;
    
    fun writeOneFrame$okhttp(): bool {
        assigns streams;
        assigns reader;
        assigns writer;
        assigns queueSize;
    }
    
    fun writePingFrame$okhttp(): void {
        assigns sentPingCount;
        assigns awaitingPong;
        assigns failed;
        assigns streams;
        assigns reader;
        assigns writer;
    }
}
automaton okhttp3.internal.ws.RealWebSocket$Close (val arg0: int, val arg1: okio.ByteString, val arg2: long) : okhttp3.internal.ws.RealWebSocket$Close {
    val code: int;
    val reason: okio.ByteString;
    val cancelAfterCloseMillis: long;
    val reason: okio.ByteString;
    fun getCancelAfterCloseMillis(): long;
    
    fun getCode(): int;
    
    fun getReason(): okio.ByteString;
    
    fun getReason(): okio.ByteString;
}
automaton okhttp3.internal.ws.RealWebSocket$Companion : okhttp3.internal.ws.RealWebSocket$Companion {
}
automaton okhttp3.internal.ws.RealWebSocket$Message (val arg0: int, val arg1: okio.ByteString) : okhttp3.internal.ws.RealWebSocket$Message {
    val formatOpcode: int;
    val data: okio.ByteString;
    val data: okio.ByteString;
    fun getData(): okio.ByteString;
    
    fun getData(): okio.ByteString;
    
    fun getFormatOpcode(): int;
}
automaton okhttp3.internal.ws.RealWebSocket$Streams (val arg0: bool, val arg1: okio.BufferedSource, val arg2: okio.BufferedSink) : okhttp3.internal.ws.RealWebSocket$Streams {
    val client: bool;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    val source: okio.BufferedSource;
    val sink: okio.BufferedSink;
    fun getClient(): bool;
    
    fun getSink(): okio.BufferedSink;
    
    fun getSink(): okio.BufferedSink;
    
    fun getSource(): okio.BufferedSource;
    
    fun getSource(): okio.BufferedSource;
}
automaton okhttp3.internal.ws.RealWebSocket$WriterTask (val arg0: okhttp3.internal.ws.RealWebSocket) : okhttp3.internal.ws.RealWebSocket$WriterTask {
    val this$0: okhttp3.internal.ws.RealWebSocket;
    fun runOnce(): long;
}
automaton okhttp3.internal.ws.RealWebSocket$connect$1 (val arg0: okhttp3.internal.ws.RealWebSocket, val arg1: okhttp3.Request) : okhttp3.internal.ws.RealWebSocket$connect$1 {
    val this$0: okhttp3.internal.ws.RealWebSocket;
    val $request: okhttp3.Request;
    fun onFailure(arg0: okhttp3.Call, arg1: java.io.IOException): void;
    
    fun onResponse(arg0: okhttp3.Call, arg1: okhttp3.Response): void {
        assigns this$0.extensions;
    }
}
automaton okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$$inlined$synchronized$lambda$1 (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: long, val arg3: okhttp3.internal.ws.RealWebSocket, val arg4: java.lang.String, val arg5: okhttp3.internal.ws.RealWebSocket$Streams, val arg6: okhttp3.internal.ws.WebSocketExtensions) : okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$$inlined$synchronized$lambda$1 {
    val $name: java.lang.String;
    val $pingIntervalNanos$inlined: long;
    val this$0: okhttp3.internal.ws.RealWebSocket;
    val $name$inlined: java.lang.String;
    val $streams$inlined: okhttp3.internal.ws.RealWebSocket$Streams;
    val $extensions$inlined: okhttp3.internal.ws.WebSocketExtensions;
    fun runOnce(): long;
}
automaton okhttp3.internal.ws.RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1 (val arg0: java.lang.String, val arg1: bool, val arg2: java.lang.String, val arg3: bool, val arg4: okhttp3.internal.ws.RealWebSocket, val arg5: okhttp3.internal.ws.WebSocketWriter, val arg6: okio.ByteString, val arg7: `<UNRESOLVED_TYPE>`, val arg8: `<UNRESOLVED_TYPE>`, val arg9: `<UNRESOLVED_TYPE>`, val arg10: `<UNRESOLVED_TYPE>`, val arg11: `<UNRESOLVED_TYPE>`, val arg12: `<UNRESOLVED_TYPE>`) : okhttp3.internal.ws.RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1 {
    val $name: java.lang.String;
    val $cancelable: bool;
    val this$0: okhttp3.internal.ws.RealWebSocket;
    val $writer$inlined: okhttp3.internal.ws.WebSocketWriter;
    val $pong$inlined: okio.ByteString;
    val $messageOrClose$inlined: `<UNRESOLVED_TYPE>`;
    val $receivedCloseCode$inlined: `<UNRESOLVED_TYPE>`;
    val $receivedCloseReason$inlined: `<UNRESOLVED_TYPE>`;
    val $streamsToClose$inlined: `<UNRESOLVED_TYPE>`;
    val $readerToClose$inlined: `<UNRESOLVED_TYPE>`;
    val $writerToClose$inlined: `<UNRESOLVED_TYPE>`;
    val $pong$inlined: okio.ByteString;
    fun runOnce(): long;
}
automaton okhttp3.internal.cache2.Relay (val arg0: java.io.RandomAccessFile, val arg1: okio.Source, val arg2: long, val arg3: okio.ByteString, val arg4: long) : okhttp3.internal.cache2.Relay {
    val upstreamReader: java.lang.Thread;
    val upstreamBuffer: okio.Buffer;
    val complete: bool;
    val buffer: okio.Buffer;
    val sourceCount: int;
    val file: java.io.RandomAccessFile;
    val upstream: okio.Source;
    val upstreamPos: long;
    val metadata: okio.ByteString;
    val bufferMaxSize: long;
    val SOURCE_UPSTREAM: int;
    val SOURCE_FILE: int;
    val PREFIX_CLEAN: okio.ByteString;
    val PREFIX_DIRTY: okio.ByteString;
    val FILE_HEADER_SIZE: long;
    val Companion: okhttp3.internal.cache2.Relay$Companion;
    val upstreamBuffer: okio.Buffer;
    val buffer: okio.Buffer;
    val upstream: okio.Source;
    val metadata: okio.ByteString;
    val PREFIX_CLEAN: okio.ByteString;
    val PREFIX_DIRTY: okio.ByteString;
    fun access$writeHeader(arg0: okhttp3.internal.cache2.Relay, arg1: okio.ByteString, arg2: long, arg3: long): void;
    
    fun access$writeHeader(arg0: okhttp3.internal.cache2.Relay, arg1: okio.ByteString, arg2: long, arg3: long): void;
    
    fun commit(arg0: long): void {
        assigns complete;
        assigns upstream;
    }
    
    fun getBuffer(): okio.Buffer;
    
    fun getBuffer(): okio.Buffer;
    
    fun getBufferMaxSize(): long;
    
    fun getComplete(): bool;
    
    fun getFile(): java.io.RandomAccessFile;
    
    fun getSourceCount(): int;
    
    fun getUpstream(): okio.Source;
    
    fun getUpstream(): okio.Source;
    
    fun getUpstreamBuffer(): okio.Buffer;
    
    fun getUpstreamBuffer(): okio.Buffer;
    
    fun getUpstreamPos(): long;
    
    fun getUpstreamReader(): java.lang.Thread;
    
    fun isClosed(): bool;
    
    fun metadata(): okio.ByteString;
    
    fun metadata(): okio.ByteString;
    
    fun newSource(): okio.Source {
        assigns sourceCount;
    }
    
    fun newSource(): okio.Source;
    
    fun setComplete(arg0: bool): void {
        assigns complete;
    }
    
    fun setFile(arg0: java.io.RandomAccessFile): void {
        assigns file;
    }
    
    fun setSourceCount(arg0: int): void {
        assigns sourceCount;
    }
    
    fun setUpstream(arg0: okio.Source): void {
        assigns upstream;
    }
    
    fun setUpstream(arg0: okio.Source): void;
    
    fun setUpstreamPos(arg0: long): void {
        assigns upstreamPos;
    }
    
    fun setUpstreamReader(arg0: java.lang.Thread): void {
        assigns upstreamReader;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns PREFIX_CLEAN;
        assigns PREFIX_DIRTY;
    }
    
    fun writeHeader(arg0: okio.ByteString, arg1: long, arg2: long): void;
    
    fun writeHeader(arg0: okio.ByteString, arg1: long, arg2: long): void;
    
    fun writeMetadata(arg0: long): void;
}
automaton okhttp3.internal.cache2.Relay$Companion : okhttp3.internal.cache2.Relay$Companion {
    fun edit(arg0: java.io.File, arg1: okio.Source, arg2: okio.ByteString, arg3: long): okhttp3.internal.cache2.Relay;
    
    fun edit(arg0: java.io.File, arg1: okio.Source, arg2: okio.ByteString, arg3: long): okhttp3.internal.cache2.Relay;
    
    fun read(arg0: java.io.File): okhttp3.internal.cache2.Relay;
}
automaton okhttp3.internal.cache2.Relay$RelaySource (val arg0: okhttp3.internal.cache2.Relay) : okhttp3.internal.cache2.Relay$RelaySource {
    val timeout: okio.Timeout;
    val fileOperator: okhttp3.internal.cache2.FileOperator;
    val sourcePos: long;
    val this$0: okhttp3.internal.cache2.Relay;
    val timeout: okio.Timeout;
    fun close(): void {
        assigns fileOperator;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long {
        assigns sourcePos;
        assigns arg0.head;
        assigns arg0.size;
    }
    
    fun read(arg0: okio.Buffer, arg1: long): long;
    
    fun timeout(): okio.Timeout;
    
    fun timeout(): okio.Timeout;
}
automaton okhttp3.Request (val arg0: okhttp3.HttpUrl, val arg1: java.lang.String, val arg2: okhttp3.Headers, val arg3: okhttp3.RequestBody, val arg4: java.util.Map) : okhttp3.Request {
    val lazyCacheControl: okhttp3.CacheControl;
    val `url`: okhttp3.HttpUrl;
    val method: java.lang.String;
    val headers: okhttp3.Headers;
    val body: okhttp3.RequestBody;
    val tags: java.util.Map;
    fun `-deprecated_body`(): okhttp3.RequestBody;
    
    fun `-deprecated_cacheControl`(): okhttp3.CacheControl {
        assigns lazyCacheControl;
    }
    
    fun `-deprecated_headers`(): okhttp3.Headers;
    
    fun `-deprecated_method`(): java.lang.String;
    
    fun `-deprecated_url`(): okhttp3.HttpUrl;
    
    fun body(): okhttp3.RequestBody;
    
    fun cacheControl(): okhttp3.CacheControl {
        assigns lazyCacheControl;
    }
    
    fun getTags$okhttp(): java.util.Map;
    
    fun header(arg0: java.lang.String): java.lang.String;
    
    fun headers(arg0: java.lang.String): java.util.List;
    
    fun headers(): okhttp3.Headers;
    
    fun isHttps(): bool;
    
    fun method(): java.lang.String;
    
    fun newBuilder(): okhttp3.Request$Builder;
    
    fun tag(): java.lang.Object;
    
    fun tag(arg0: java.lang.Class): java.lang.Object;
    
    fun toString(): java.lang.String;
    
    fun `url`(): okhttp3.HttpUrl;
}
automaton okhttp3.Request$Builder : okhttp3.Request$Builder {
    val `url`: okhttp3.HttpUrl;
    val method: java.lang.String;
    val headers: okhttp3.Headers$Builder;
    val body: okhttp3.RequestBody;
    val tags: java.util.Map;
    fun addHeader(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Request$Builder;
    
    @Throws("java.lang.IllegalStateException", `url` == "'null-const'")
    @Throws("kotlin.TypeCastException", `url` != "'null-const'")
    fun build(): okhttp3.Request;
    
    fun cacheControl(arg0: okhttp3.CacheControl): okhttp3.Request$Builder {
        assigns arg0.headerValue;
    }
    
    fun delete(arg0: okhttp3.RequestBody): okhttp3.Request$Builder;
    
    fun delete(): okhttp3.Request$Builder;
    
    @Throws("java.lang.UnsupportedOperationException", arg3 != "'null-const'")
    @Throws("java.lang.IllegalArgumentException", arg3 == "'null-const'")
    fun delete$default(arg0: okhttp3.Request$Builder, arg1: okhttp3.RequestBody, arg2: int, arg3: java.lang.Object): okhttp3.Request$Builder;
    
    fun get(): okhttp3.Request$Builder;
    
    fun getBody$okhttp(): okhttp3.RequestBody;
    
    fun getHeaders$okhttp(): okhttp3.Headers$Builder;
    
    fun getMethod$okhttp(): java.lang.String;
    
    fun getTags$okhttp(): java.util.Map;
    
    fun getUrl$okhttp(): okhttp3.HttpUrl;
    
    fun head(): okhttp3.Request$Builder;
    
    fun header(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Request$Builder;
    
    fun headers(arg0: okhttp3.Headers): okhttp3.Request$Builder;
    
    fun method(arg0: java.lang.String, arg1: okhttp3.RequestBody): okhttp3.Request$Builder;
    
    fun patch(arg0: okhttp3.RequestBody): okhttp3.Request$Builder;
    
    fun post(arg0: okhttp3.RequestBody): okhttp3.Request$Builder;
    
    fun put(arg0: okhttp3.RequestBody): okhttp3.Request$Builder;
    
    fun removeHeader(arg0: java.lang.String): okhttp3.Request$Builder;
    
    fun setBody$okhttp(arg0: okhttp3.RequestBody): void {
        assigns body;
    }
    
    fun setHeaders$okhttp(arg0: okhttp3.Headers$Builder): void {
        assigns headers;
    }
    
    fun setMethod$okhttp(arg0: java.lang.String): void {
        assigns method;
    }
    
    fun setTags$okhttp(arg0: java.util.Map): void {
        assigns tags;
    }
    
    fun setUrl$okhttp(arg0: okhttp3.HttpUrl): void {
        assigns `url`;
    }
    
    fun tag(arg0: java.lang.Object): okhttp3.Request$Builder;
    
    fun tag(arg0: java.lang.Class, arg1: java.lang.Object): okhttp3.Request$Builder;
    
    fun `url`(arg0: okhttp3.HttpUrl): okhttp3.Request$Builder;
    
    fun `url`(arg0: java.lang.String): okhttp3.Request$Builder;
    
    fun `url`(arg0: java.net.URL): okhttp3.Request$Builder;
}
automaton okhttp3.RequestBody : okhttp3.RequestBody {
    val Companion: okhttp3.RequestBody$Companion;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun create(arg0: java.lang.String, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType, arg2: int, arg3: int): okhttp3.RequestBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType, arg2: int): okhttp3.RequestBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: array): okhttp3.RequestBody;
    
    fun create(arg0: java.io.File, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: java.lang.String): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array, arg2: int, arg3: int): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array, arg2: int): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: java.io.File): okhttp3.RequestBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.RequestBody;
    
    fun isDuplex(): bool;
    
    fun isOneShot(): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun writeTo(arg0: okio.BufferedSink): void;
    
    fun writeTo(arg0: okio.BufferedSink): void;
}
automaton okhttp3.RequestBody$Companion : okhttp3.RequestBody$Companion {
    fun create(arg0: java.lang.String, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType, arg2: int, arg3: int): okhttp3.RequestBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType, arg2: int): okhttp3.RequestBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: array): okhttp3.RequestBody;
    
    fun create(arg0: java.io.File, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: java.lang.String): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array, arg2: int, arg3: int): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array, arg2: int): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: java.io.File): okhttp3.RequestBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.RequestBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.RequestBody;
    
    fun create$default(arg0: okhttp3.RequestBody$Companion, arg1: java.lang.String, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.RequestBody;
    
    fun create$default(arg0: okhttp3.RequestBody$Companion, arg1: okio.ByteString, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.RequestBody;
    
    fun create$default(arg0: okhttp3.RequestBody$Companion, arg1: array, arg2: okhttp3.MediaType, arg3: int, arg4: int, arg5: int, arg6: java.lang.Object): okhttp3.RequestBody;
    
    fun create$default(arg0: okhttp3.RequestBody$Companion, arg1: java.io.File, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.RequestBody;
    
    fun create$default(arg0: okhttp3.RequestBody$Companion, arg1: okhttp3.MediaType, arg2: array, arg3: int, arg4: int, arg5: int, arg6: java.lang.Object): okhttp3.RequestBody;
    
    fun create$default(arg0: okhttp3.RequestBody$Companion, arg1: okio.ByteString, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.RequestBody;
}
automaton okhttp3.RequestBody$Companion$asRequestBody$1 (val arg0: java.io.File, val arg1: okhttp3.MediaType) : okhttp3.RequestBody$Companion$asRequestBody$1 {
    val $this_asRequestBody: java.io.File;
    val $contentType: okhttp3.MediaType;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun writeTo(arg0: okio.BufferedSink): void {
        assigns arg0;
    }
    
    fun writeTo(arg0: okio.BufferedSink): void;
}
automaton okhttp3.RequestBody$Companion$toRequestBody$1 (val arg0: okio.ByteString, val arg1: okhttp3.MediaType) : okhttp3.RequestBody$Companion$toRequestBody$1 {
    val $this_toRequestBody: okio.ByteString;
    val $contentType: okhttp3.MediaType;
    val $this_toRequestBody: okio.ByteString;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun writeTo(arg0: okio.BufferedSink): void {
        assigns arg0;
    }
    
    fun writeTo(arg0: okio.BufferedSink): void;
}
automaton okhttp3.RequestBody$Companion$toRequestBody$2 (val arg0: array<byte>, val arg1: okhttp3.MediaType, val arg2: int, val arg3: int) : okhttp3.RequestBody$Companion$toRequestBody$2 {
    val $this_toRequestBody: array<byte>;
    val $contentType: okhttp3.MediaType;
    val $byteCount: int;
    val $offset: int;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun writeTo(arg0: okio.BufferedSink): void {
        assigns arg0;
    }
    
    fun writeTo(arg0: okio.BufferedSink): void;
}
automaton okhttp3.internal.http.RequestLine : okhttp3.internal.http.RequestLine {
    val INSTANCE: okhttp3.internal.http.RequestLine;
    fun get(arg0: okhttp3.Request, arg1: java.net.Proxy$Type): java.lang.String;
    
    fun includeAuthorityInRequestLine(arg0: okhttp3.Request, arg1: java.net.Proxy$Type): bool;
    
    fun requestPath(arg0: okhttp3.HttpUrl): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
}
automaton okhttp3.Response (val arg0: okhttp3.Request, val arg1: okhttp3.Protocol, val arg2: java.lang.String, val arg3: int, val arg4: okhttp3.Handshake, val arg5: okhttp3.Headers, val arg6: okhttp3.ResponseBody, val arg7: okhttp3.Response, val arg8: okhttp3.Response, val arg9: okhttp3.Response, val arg10: long, val arg11: long, val arg12: okhttp3.internal.connection.Exchange) : okhttp3.Response {
    val lazyCacheControl: okhttp3.CacheControl;
    val request: okhttp3.Request;
    val protocol: okhttp3.Protocol;
    val message: java.lang.String;
    val code: int;
    val handshake: okhttp3.Handshake;
    val headers: okhttp3.Headers;
    val body: okhttp3.ResponseBody;
    val networkResponse: okhttp3.Response;
    val cacheResponse: okhttp3.Response;
    val priorResponse: okhttp3.Response;
    val sentRequestAtMillis: long;
    val receivedResponseAtMillis: long;
    val exchange: okhttp3.internal.connection.Exchange;
    fun `-deprecated_body`(): okhttp3.ResponseBody;
    
    fun `-deprecated_cacheControl`(): okhttp3.CacheControl {
        assigns lazyCacheControl;
    }
    
    fun `-deprecated_cacheResponse`(): okhttp3.Response;
    
    fun `-deprecated_code`(): int;
    
    fun `-deprecated_handshake`(): okhttp3.Handshake;
    
    fun `-deprecated_headers`(): okhttp3.Headers;
    
    fun `-deprecated_message`(): java.lang.String;
    
    fun `-deprecated_networkResponse`(): okhttp3.Response;
    
    fun `-deprecated_priorResponse`(): okhttp3.Response;
    
    fun `-deprecated_protocol`(): okhttp3.Protocol;
    
    fun `-deprecated_receivedResponseAtMillis`(): long;
    
    fun `-deprecated_request`(): okhttp3.Request;
    
    fun `-deprecated_sentRequestAtMillis`(): long;
    
    fun body(): okhttp3.ResponseBody;
    
    fun cacheControl(): okhttp3.CacheControl {
        assigns lazyCacheControl;
    }
    
    fun cacheResponse(): okhttp3.Response;
    
    fun challenges(): java.util.List;
    
    @Throws("java.lang.IllegalStateException", body == "'null-const'")
    fun close(): void;
    
    fun code(): int;
    
    fun exchange(): okhttp3.internal.connection.Exchange;
    
    fun handshake(): okhttp3.Handshake;
    
    fun header(arg0: java.lang.String, arg1: java.lang.String): java.lang.String;
    
    fun header(arg0: java.lang.String): java.lang.String;
    
    fun header$default(arg0: okhttp3.Response, arg1: java.lang.String, arg2: java.lang.String, arg3: int, arg4: java.lang.Object): java.lang.String;
    
    fun headers(arg0: java.lang.String): java.util.List;
    
    fun headers(): okhttp3.Headers;
    
    fun isRedirect(): bool;
    
    fun isSuccessful(): bool;
    
    fun message(): java.lang.String;
    
    fun networkResponse(): okhttp3.Response;
    
    fun newBuilder(): okhttp3.Response$Builder;
    
    fun peekBody(arg0: long): okhttp3.ResponseBody;
    
    fun priorResponse(): okhttp3.Response;
    
    fun protocol(): okhttp3.Protocol;
    
    fun receivedResponseAtMillis(): long;
    
    fun request(): okhttp3.Request;
    
    fun sentRequestAtMillis(): long;
    
    fun toString(): java.lang.String;
    
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` <= 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` <= 6)
    @Throws("java.lang.IllegalStateException", `state` <= 6 & errorCode != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` <= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` == 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` == 6 & errorCode != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` >= 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` >= 6 & errorCode != "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` >= 6)
    @Throws("java.lang.IllegalStateException", `state` >= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & `state` <= 6)
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & `state` <= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & `state` >= 6)
    @Throws("java.lang.IllegalStateException", exchange != "'null-const'" & `state` >= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & `state` <= 6)
    @Throws("java.lang.IllegalStateException", !`state` == 6 & exchange == "'null-const'" & `state` <= 6)
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & `state` <= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & exchange == "'null-const'" & `state` <= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & exchange == "'null-const'" & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & `state` == 6)
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & `state` == 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & `state` >= 6)
    @Throws("java.lang.IllegalStateException", !`state` == 6 & exchange == "'null-const'" & `state` >= 6)
    @Throws("java.lang.IllegalStateException", exchange == "'null-const'" & `state` >= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & exchange == "'null-const'" & `state` >= 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", `state` == 6)
    @Throws("java.lang.IllegalStateException", `state` == 6 & errorCode != "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'" & `state` <= 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & errorCode == "'null-const'" & `state` <= 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & errorCode == "'null-const'" & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'" & `state` == 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", errorCode == "'null-const'" & `state` >= 6 & exchange == "'null-const'")
    @Throws("java.lang.IllegalStateException", !`state` == 6 & errorCode == "'null-const'" & `state` >= 6 & exchange == "'null-const'")
    @Throws("java.lang.Throwable", `state` <= 6 & errorCode != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.Throwable", `state` >= 6 & errorCode != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.Throwable", `state` == 6 & errorCode != "'null-const'" & exchange != "'null-const'")
    @Throws("java.lang.Throwable", errorCode != "'null-const'" & exchange != "'null-const'")
    fun trailers(): okhttp3.Headers;
}
automaton okhttp3.Response$Builder : okhttp3.Response$Builder {
    val request: okhttp3.Request;
    val protocol: okhttp3.Protocol;
    val code: int;
    val message: java.lang.String;
    val handshake: okhttp3.Handshake;
    val headers: okhttp3.Headers$Builder;
    val body: okhttp3.ResponseBody;
    val networkResponse: okhttp3.Response;
    val cacheResponse: okhttp3.Response;
    val priorResponse: okhttp3.Response;
    val sentRequestAtMillis: long;
    val receivedResponseAtMillis: long;
    val exchange: okhttp3.internal.connection.Exchange;
    fun addHeader(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Response$Builder;
    
    fun body(arg0: okhttp3.ResponseBody): okhttp3.Response$Builder;
    
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'")
    @Throws("java.lang.IllegalStateException", message != "'null-const'" & protocol == "'null-const'")
    @Throws("java.lang.IllegalStateException", message != "'null-const'" & request == "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & request != "'null-const'" & protocol != "'null-const'")
    @Throws("java.lang.IllegalStateException", message != "'null-const'" & request == "'null-const'" & protocol != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'")
    @Throws("java.lang.IllegalStateException", message != "'null-const'" & protocol == "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", protocol == "'null-const'" & request != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'" & protocol != "'null-const'")
    @Throws("java.lang.IllegalStateException", request == "'null-const'" & protocol != "'null-const'")
    @Throws("java.lang.IllegalStateException", message == "'null-const'")
    @Throws("kotlin.TypeCastException", message != "'null-const'" & request != "'null-const'" & protocol != "'null-const'")
    fun build(): okhttp3.Response;
    
    fun cacheResponse(arg0: okhttp3.Response): okhttp3.Response$Builder;
    
    @Throws("java.lang.IllegalArgumentException", arg0 != "'null-const'" & body != "'null-const'")
    fun checkPriorResponse(arg0: okhttp3.Response): void;
    
    fun checkSupportResponse(arg0: java.lang.String, arg1: okhttp3.Response): void;
    
    fun code(arg0: int): okhttp3.Response$Builder;
    
    fun getBody$okhttp(): okhttp3.ResponseBody;
    
    fun getCacheResponse$okhttp(): okhttp3.Response;
    
    fun getCode$okhttp(): int;
    
    fun getExchange$okhttp(): okhttp3.internal.connection.Exchange;
    
    fun getHandshake$okhttp(): okhttp3.Handshake;
    
    fun getHeaders$okhttp(): okhttp3.Headers$Builder;
    
    fun getMessage$okhttp(): java.lang.String;
    
    fun getNetworkResponse$okhttp(): okhttp3.Response;
    
    fun getPriorResponse$okhttp(): okhttp3.Response;
    
    fun getProtocol$okhttp(): okhttp3.Protocol;
    
    fun getReceivedResponseAtMillis$okhttp(): long;
    
    fun getRequest$okhttp(): okhttp3.Request;
    
    fun getSentRequestAtMillis$okhttp(): long;
    
    fun handshake(arg0: okhttp3.Handshake): okhttp3.Response$Builder;
    
    fun header(arg0: java.lang.String, arg1: java.lang.String): okhttp3.Response$Builder;
    
    fun headers(arg0: okhttp3.Headers): okhttp3.Response$Builder;
    
    fun initExchange$okhttp(arg0: okhttp3.internal.connection.Exchange): void {
        assigns exchange;
    }
    
    fun message(arg0: java.lang.String): okhttp3.Response$Builder;
    
    fun networkResponse(arg0: okhttp3.Response): okhttp3.Response$Builder;
    
    @Throws("java.lang.IllegalArgumentException", arg0 != "'null-const'" & body != "'null-const'")
    fun priorResponse(arg0: okhttp3.Response): okhttp3.Response$Builder;
    
    fun protocol(arg0: okhttp3.Protocol): okhttp3.Response$Builder;
    
    fun receivedResponseAtMillis(arg0: long): okhttp3.Response$Builder;
    
    fun removeHeader(arg0: java.lang.String): okhttp3.Response$Builder;
    
    fun request(arg0: okhttp3.Request): okhttp3.Response$Builder;
    
    fun sentRequestAtMillis(arg0: long): okhttp3.Response$Builder;
    
    fun setBody$okhttp(arg0: okhttp3.ResponseBody): void {
        assigns body;
    }
    
    fun setCacheResponse$okhttp(arg0: okhttp3.Response): void {
        assigns cacheResponse;
    }
    
    fun setCode$okhttp(arg0: int): void {
        assigns code;
    }
    
    fun setExchange$okhttp(arg0: okhttp3.internal.connection.Exchange): void {
        assigns exchange;
    }
    
    fun setHandshake$okhttp(arg0: okhttp3.Handshake): void {
        assigns handshake;
    }
    
    fun setHeaders$okhttp(arg0: okhttp3.Headers$Builder): void {
        assigns headers;
    }
    
    fun setMessage$okhttp(arg0: java.lang.String): void {
        assigns message;
    }
    
    fun setNetworkResponse$okhttp(arg0: okhttp3.Response): void {
        assigns networkResponse;
    }
    
    fun setPriorResponse$okhttp(arg0: okhttp3.Response): void {
        assigns priorResponse;
    }
    
    fun setProtocol$okhttp(arg0: okhttp3.Protocol): void {
        assigns protocol;
    }
    
    fun setReceivedResponseAtMillis$okhttp(arg0: long): void {
        assigns receivedResponseAtMillis;
    }
    
    fun setRequest$okhttp(arg0: okhttp3.Request): void {
        assigns request;
    }
    
    fun setSentRequestAtMillis$okhttp(arg0: long): void {
        assigns sentRequestAtMillis;
    }
}
automaton okhttp3.ResponseBody : okhttp3.ResponseBody {
    val reader: java.io.Reader;
    val Companion: okhttp3.ResponseBody$Companion;
    fun byteStream(): java.io.InputStream;
    
    fun byteString(): okio.ByteString;
    
    fun byteString(): okio.ByteString;
    
    fun bytes(): array<byte>;
    
    fun charStream(): java.io.Reader {
        assigns reader;
    }
    
    fun charset(): java.nio.charset.Charset;
    
    fun close(): void;
    
    fun consumeSource(arg0: kotlin.jvm.functions.Function1, arg1: kotlin.jvm.functions.Function1): java.lang.Object;
    
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun create(arg0: java.lang.String, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: okio.BufferedSource, arg1: okhttp3.MediaType, arg2: long): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: java.lang.String): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: long, arg2: okio.BufferedSource): okhttp3.ResponseBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: okio.BufferedSource, arg1: okhttp3.MediaType, arg2: long): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: long, arg2: okio.BufferedSource): okhttp3.ResponseBody;
    
    fun source(): okio.BufferedSource;
    
    fun source(): okio.BufferedSource;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun string(): java.lang.String;
}
automaton okhttp3.ResponseBody$BomAwareReader (val arg0: okio.BufferedSource, val arg1: java.nio.charset.Charset) : okhttp3.ResponseBody$BomAwareReader {
    val closed: bool;
    val delegate: java.io.Reader;
    val source: okio.BufferedSource;
    val charset: java.nio.charset.Charset;
    val source: okio.BufferedSource;
    fun close(): void {
        assigns closed;
    }
    
    @Throws("java.io.IOException", closed)
    fun read(arg0: array, arg1: int, arg2: int): int {
        assigns delegate;
        assigns source;
    }
}
automaton okhttp3.ResponseBody$Companion : okhttp3.ResponseBody$Companion {
    fun create(arg0: java.lang.String, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: array, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: okio.BufferedSource, arg1: okhttp3.MediaType, arg2: long): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: java.lang.String): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: array): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: long, arg2: okio.BufferedSource): okhttp3.ResponseBody;
    
    fun create(arg0: okio.ByteString, arg1: okhttp3.MediaType): okhttp3.ResponseBody;
    
    fun create(arg0: okio.BufferedSource, arg1: okhttp3.MediaType, arg2: long): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: okio.ByteString): okhttp3.ResponseBody;
    
    fun create(arg0: okhttp3.MediaType, arg1: long, arg2: okio.BufferedSource): okhttp3.ResponseBody;
    
    fun create$default(arg0: okhttp3.ResponseBody$Companion, arg1: java.lang.String, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.ResponseBody;
    
    fun create$default(arg0: okhttp3.ResponseBody$Companion, arg1: array, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.ResponseBody;
    
    fun create$default(arg0: okhttp3.ResponseBody$Companion, arg1: okio.ByteString, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.ResponseBody;
    
    fun create$default(arg0: okhttp3.ResponseBody$Companion, arg1: okio.BufferedSource, arg2: okhttp3.MediaType, arg3: long, arg4: int, arg5: java.lang.Object): okhttp3.ResponseBody;
    
    fun create$default(arg0: okhttp3.ResponseBody$Companion, arg1: okio.ByteString, arg2: okhttp3.MediaType, arg3: int, arg4: java.lang.Object): okhttp3.ResponseBody;
    
    fun create$default(arg0: okhttp3.ResponseBody$Companion, arg1: okio.BufferedSource, arg2: okhttp3.MediaType, arg3: long, arg4: int, arg5: java.lang.Object): okhttp3.ResponseBody;
}
automaton okhttp3.ResponseBody$Companion$asResponseBody$1 (val arg0: okio.BufferedSource, val arg1: okhttp3.MediaType, val arg2: long) : okhttp3.ResponseBody$Companion$asResponseBody$1 {
    val $this_asResponseBody: okio.BufferedSource;
    val $contentType: okhttp3.MediaType;
    val $contentLength: long;
    val $this_asResponseBody: okio.BufferedSource;
    fun contentLength(): long;
    
    fun contentType(): okhttp3.MediaType;
    
    fun source(): okio.BufferedSource;
    
    fun source(): okio.BufferedSource;
}
automaton okhttp3.internal.http.RetryAndFollowUpInterceptor (val arg0: okhttp3.OkHttpClient) : okhttp3.internal.http.RetryAndFollowUpInterceptor {
    val client: okhttp3.OkHttpClient;
    val MAX_FOLLOW_UPS: int;
    val Companion: okhttp3.internal.http.RetryAndFollowUpInterceptor$Companion;
    fun buildRedirectRequest(arg0: okhttp3.Response, arg1: java.lang.String): okhttp3.Request;
    
    fun followUpRequest(arg0: okhttp3.Response, arg1: okhttp3.internal.connection.Exchange): okhttp3.Request;
    
    fun intercept(arg0: okhttp3.Interceptor$Chain): okhttp3.Response;
    
    fun isRecoverable(arg0: java.io.IOException, arg1: bool): bool;
    
    fun recover(arg0: java.io.IOException, arg1: okhttp3.internal.connection.RealCall, arg2: okhttp3.Request, arg3: bool): bool;
    
    fun requestIsOneShot(arg0: java.io.IOException, arg1: okhttp3.Request): bool;
    
    fun retryAfter(arg0: okhttp3.Response, arg1: int): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.http.RetryAndFollowUpInterceptor$Companion : okhttp3.internal.http.RetryAndFollowUpInterceptor$Companion {
}
automaton okhttp3.Route (val arg0: okhttp3.Address, val arg1: java.net.Proxy, val arg2: java.net.InetSocketAddress) : okhttp3.Route {
    val address: okhttp3.Address;
    val proxy: java.net.Proxy;
    val socketAddress: java.net.InetSocketAddress;
    fun `-deprecated_address`(): okhttp3.Address;
    
    fun `-deprecated_proxy`(): java.net.Proxy;
    
    fun `-deprecated_socketAddress`(): java.net.InetSocketAddress;
    
    fun address(): okhttp3.Address;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun proxy(): java.net.Proxy;
    
    fun requiresTunnel(): bool;
    
    fun socketAddress(): java.net.InetSocketAddress;
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.connection.RouteDatabase : okhttp3.internal.connection.RouteDatabase {
    val failedRoutes: java.util.Set;
    fun connected(arg0: okhttp3.Route): void;
    
    fun failed(arg0: okhttp3.Route): void;
    
    fun shouldPostpone(arg0: okhttp3.Route): bool;
}
automaton okhttp3.internal.connection.RouteException (val arg0: java.io.IOException) : okhttp3.internal.connection.RouteException {
    val lastConnectException: java.io.IOException;
    val firstConnectException: java.io.IOException;
    fun addConnectException(arg0: java.io.IOException): void {
        assigns lastConnectException;
    }
    
    fun getFirstConnectException(): java.io.IOException;
    
    fun getLastConnectException(): java.io.IOException;
}
automaton okhttp3.internal.connection.RouteSelector (val arg0: okhttp3.Address, val arg1: okhttp3.internal.connection.RouteDatabase, val arg2: okhttp3.Call, val arg3: okhttp3.EventListener) : okhttp3.internal.connection.RouteSelector {
    val proxies: java.util.List;
    val nextProxyIndex: int;
    val inetSocketAddresses: java.util.List;
    val postponedRoutes: java.util.List;
    val address: okhttp3.Address;
    val routeDatabase: okhttp3.internal.connection.RouteDatabase;
    val call: okhttp3.Call;
    val eventListener: okhttp3.EventListener;
    val Companion: okhttp3.internal.connection.RouteSelector$Companion;
    fun access$getAddress$p(arg0: okhttp3.internal.connection.RouteSelector): okhttp3.Address;
    
    fun hasNext(): bool;
    
    fun hasNextProxy(): bool;
    
    fun next(): okhttp3.internal.connection.RouteSelector$Selection {
        assigns nextProxyIndex;
        assigns inetSocketAddresses;
    }
    
    fun nextProxy(): java.net.Proxy {
        assigns nextProxyIndex;
        assigns inetSocketAddresses;
    }
    
    fun resetNextInetSocketAddress(arg0: java.net.Proxy): void {
        assigns inetSocketAddresses;
    }
    
    fun resetNextProxy(arg0: okhttp3.HttpUrl, arg1: java.net.Proxy): void {
        assigns proxies;
        assigns nextProxyIndex;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.connection.RouteSelector$Companion : okhttp3.internal.connection.RouteSelector$Companion {
    fun getSocketHost(arg0: java.net.InetSocketAddress): java.lang.String;
}
automaton okhttp3.internal.connection.RouteSelector$Selection (val arg0: java.util.List) : okhttp3.internal.connection.RouteSelector$Selection {
    val nextRouteIndex: int;
    val routes: java.util.List;
    fun getRoutes(): java.util.List;
    
    fun hasNext(): bool;
    
    @Throws("java.util.NoSuchElementException", nextRouteIndex >= 0)
    fun next(): okhttp3.Route {
        assigns nextRouteIndex;
    }
}
automaton okhttp3.internal.connection.RouteSelector$resetNextProxy$1 (val arg0: okhttp3.internal.connection.RouteSelector, val arg1: java.net.Proxy, val arg2: okhttp3.HttpUrl) : okhttp3.internal.connection.RouteSelector$resetNextProxy$1 {
    val this$0: okhttp3.internal.connection.RouteSelector;
    val $proxy: java.net.Proxy;
    val $url: okhttp3.HttpUrl;
    fun invoke(): java.lang.Object;
    
    fun invoke(): java.util.List;
}
automaton okhttp3.internal.http2.Settings : okhttp3.internal.http2.Settings {
    val set: int;
    val values: array<int>;
    val DEFAULT_INITIAL_WINDOW_SIZE: int;
    val HEADER_TABLE_SIZE: int;
    val ENABLE_PUSH: int;
    val MAX_CONCURRENT_STREAMS: int;
    val MAX_FRAME_SIZE: int;
    val MAX_HEADER_LIST_SIZE: int;
    val INITIAL_WINDOW_SIZE: int;
    val COUNT: int;
    val Companion: okhttp3.internal.http2.Settings$Companion;
    fun clear(): void {
        assigns set;
    }
    
    fun get(arg0: int): int;
    
    fun getEnablePush(arg0: bool): bool;
    
    fun getHeaderTableSize(): int;
    
    fun getInitialWindowSize(): int;
    
    fun getMaxConcurrentStreams(): int;
    
    fun getMaxFrameSize(arg0: int): int;
    
    fun getMaxHeaderListSize(arg0: int): int;
    
    fun isSet(arg0: int): bool;
    
    fun merge(arg0: okhttp3.internal.http2.Settings): void {
        assigns set;
    }
    
    fun set(arg0: int, arg1: int): okhttp3.internal.http2.Settings {
        assigns set;
    }
    
    fun size(): int;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton okhttp3.internal.http2.Settings$Companion : okhttp3.internal.http2.Settings$Companion {
}
automaton okhttp3.internal.platform.android.SocketAdapter : okhttp3.internal.platform.android.SocketAdapter {
    fun configureTlsExtensions(arg0: javax.net.ssl.SSLSocket, arg1: java.lang.String, arg2: java.util.List): void;
    
    fun getSelectedProtocol(arg0: javax.net.ssl.SSLSocket): java.lang.String;
    
    fun isSupported(): bool;
    
    fun matchesSocket(arg0: javax.net.ssl.SSLSocket): bool;
    
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.android.SocketAdapter$DefaultImpls : okhttp3.internal.platform.android.SocketAdapter$DefaultImpls {
    fun matchesSocketFactory(arg0: okhttp3.internal.platform.android.SocketAdapter, arg1: javax.net.ssl.SSLSocketFactory): bool;
}
automaton okhttp3.internal.platform.android.StandardAndroidSocketAdapter (val arg0: java.lang.Class, val arg1: java.lang.Class, val arg2: java.lang.Class) : okhttp3.internal.platform.android.StandardAndroidSocketAdapter {
    val sslSocketFactoryClass: java.lang.Class;
    val paramClass: java.lang.Class;
    val Companion: okhttp3.internal.platform.android.StandardAndroidSocketAdapter$Companion;
    fun matchesSocketFactory(arg0: javax.net.ssl.SSLSocketFactory): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun trustManager(arg0: javax.net.ssl.SSLSocketFactory): javax.net.ssl.X509TrustManager;
}
automaton okhttp3.internal.platform.android.StandardAndroidSocketAdapter$Companion : okhttp3.internal.platform.android.StandardAndroidSocketAdapter$Companion {
    fun buildIfSupported(arg0: java.lang.String): okhttp3.internal.platform.android.SocketAdapter;
    
    fun buildIfSupported$default(arg0: okhttp3.internal.platform.android.StandardAndroidSocketAdapter$Companion, arg1: java.lang.String, arg2: int, arg3: java.lang.Object): okhttp3.internal.platform.android.SocketAdapter;
}
automaton okhttp3.internal.http.StatusLine (val arg0: okhttp3.Protocol, val arg1: int, val arg2: java.lang.String) : okhttp3.internal.http.StatusLine {
    val protocol: okhttp3.Protocol;
    val code: int;
    val message: java.lang.String;
    val HTTP_TEMP_REDIRECT: int;
    val HTTP_PERM_REDIRECT: int;
    val HTTP_MISDIRECTED_REQUEST: int;
    val HTTP_CONTINUE: int;
    val Companion: okhttp3.internal.http.StatusLine$Companion;
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.http.StatusLine$Companion : okhttp3.internal.http.StatusLine$Companion {
    fun get(arg0: okhttp3.Response): okhttp3.internal.http.StatusLine;
    
    fun parse(arg0: java.lang.String): okhttp3.internal.http.StatusLine;
}
automaton okhttp3.internal.http2.StreamResetException (val arg0: okhttp3.internal.http2.ErrorCode) : okhttp3.internal.http2.StreamResetException {
    val errorCode: okhttp3.internal.http2.ErrorCode;
}
automaton okhttp3.internal.SuppressSignatureCheck : okhttp3.internal.SuppressSignatureCheck {
}
automaton okhttp3.internal.concurrent.Task (val arg0: java.lang.String, val arg1: bool) : okhttp3.internal.concurrent.Task {
    val queue: okhttp3.internal.concurrent.TaskQueue;
    val nextExecuteNanoTime: long;
    val name: java.lang.String;
    val cancelable: bool;
    fun getCancelable(): bool;
    
    fun getName(): java.lang.String;
    
    fun getNextExecuteNanoTime$okhttp(): long;
    
    fun getQueue$okhttp(): okhttp3.internal.concurrent.TaskQueue;
    
    @Throws("java.lang.IllegalStateException", arg0 >= 2)
    fun initQueue$okhttp(arg0: okhttp3.internal.concurrent.TaskQueue): void {
        assigns queue;
    }
    
    fun runOnce(): long;
    
    fun setNextExecuteNanoTime$okhttp(arg0: long): void {
        assigns nextExecuteNanoTime;
    }
    
    fun setQueue$okhttp(arg0: okhttp3.internal.concurrent.TaskQueue): void {
        assigns queue;
    }
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.concurrent.TaskLoggerKt : okhttp3.internal.concurrent.TaskLoggerKt {
    fun access$log(arg0: okhttp3.internal.concurrent.Task, arg1: okhttp3.internal.concurrent.TaskQueue, arg2: java.lang.String): void;
    
    fun formatDuration(arg0: long): java.lang.String;
    
    fun log(arg0: okhttp3.internal.concurrent.Task, arg1: okhttp3.internal.concurrent.TaskQueue, arg2: java.lang.String): void;
    
    fun logElapsed(arg0: okhttp3.internal.concurrent.Task, arg1: okhttp3.internal.concurrent.TaskQueue, arg2: kotlin.jvm.functions.Function0): java.lang.Object;
    
    fun taskLog(arg0: okhttp3.internal.concurrent.Task, arg1: okhttp3.internal.concurrent.TaskQueue, arg2: kotlin.jvm.functions.Function0): void;
}
automaton okhttp3.internal.concurrent.TaskQueue (val arg0: okhttp3.internal.concurrent.TaskRunner, val arg1: java.lang.String) : okhttp3.internal.concurrent.TaskQueue {
    val shutdown: bool;
    val activeTask: okhttp3.internal.concurrent.Task;
    val futureTasks: java.util.List;
    val cancelActiveTask: bool;
    val taskRunner: okhttp3.internal.concurrent.TaskRunner;
    val name: java.lang.String;
    fun cancelAll(): void {
        assigns cancelActiveTask;
    }
    
    fun cancelAllAndDecide$okhttp(): bool {
        assigns cancelActiveTask;
    }
    
    fun execute(arg0: java.lang.String, arg1: long, arg2: bool, arg3: kotlin.jvm.functions.Function0): void;
    
    fun execute$default(arg0: okhttp3.internal.concurrent.TaskQueue, arg1: java.lang.String, arg2: long, arg3: bool, arg4: kotlin.jvm.functions.Function0, arg5: int, arg6: java.lang.Object): void;
    
    fun getActiveTask$okhttp(): okhttp3.internal.concurrent.Task;
    
    fun getCancelActiveTask$okhttp(): bool;
    
    fun getFutureTasks$okhttp(): java.util.List;
    
    fun getName$okhttp(): java.lang.String;
    
    fun getScheduledTasks(): java.util.List;
    
    fun getShutdown$okhttp(): bool;
    
    fun getTaskRunner$okhttp(): okhttp3.internal.concurrent.TaskRunner;
    
    fun idleLatch(): java.util.concurrent.CountDownLatch;
    
    fun schedule(arg0: okhttp3.internal.concurrent.Task, arg1: long): void {
        assigns arg0.queue;
        assigns arg0.nextExecuteNanoTime;
    }
    
    fun schedule(arg0: java.lang.String, arg1: long, arg2: kotlin.jvm.functions.Function0): void;
    
    fun schedule$default(arg0: okhttp3.internal.concurrent.TaskQueue, arg1: okhttp3.internal.concurrent.Task, arg2: long, arg3: int, arg4: java.lang.Object): void {
        assigns arg1.queue;
        assigns arg1.nextExecuteNanoTime;
    }
    
    fun schedule$default(arg0: okhttp3.internal.concurrent.TaskQueue, arg1: java.lang.String, arg2: long, arg3: kotlin.jvm.functions.Function0, arg4: int, arg5: java.lang.Object): void;
    
    fun scheduleAndDecide$okhttp(arg0: okhttp3.internal.concurrent.Task, arg1: long, arg2: bool): bool {
        assigns arg0.queue;
        assigns arg0.nextExecuteNanoTime;
    }
    
    fun setActiveTask$okhttp(arg0: okhttp3.internal.concurrent.Task): void {
        assigns activeTask;
    }
    
    fun setCancelActiveTask$okhttp(arg0: bool): void {
        assigns cancelActiveTask;
    }
    
    fun setShutdown$okhttp(arg0: bool): void {
        assigns shutdown;
    }
    
    fun shutdown(): void {
        assigns shutdown;
        assigns cancelActiveTask;
    }
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask : okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask {
    val latch: java.util.concurrent.CountDownLatch;
    fun getLatch(): java.util.concurrent.CountDownLatch;
    
    fun runOnce(): long;
}
automaton okhttp3.internal.concurrent.TaskQueue$execute$1 (val arg0: `<UNRESOLVED_TYPE>`, val arg1: java.lang.String, val arg2: bool, val arg3: java.lang.String, val arg4: bool) : okhttp3.internal.concurrent.TaskQueue$execute$1 {
    val $block: `<UNRESOLVED_TYPE>`;
    val $name: java.lang.String;
    val $cancelable: bool;
    fun runOnce(): long;
}
automaton okhttp3.internal.concurrent.TaskQueue$schedule$2 (val arg0: `<UNRESOLVED_TYPE>`, val arg1: java.lang.String, val arg2: java.lang.String) : okhttp3.internal.concurrent.TaskQueue$schedule$2 {
    val $block: `<UNRESOLVED_TYPE>`;
    val $name: java.lang.String;
    fun runOnce(): long;
}
automaton okhttp3.internal.concurrent.TaskRunner (val arg0: okhttp3.internal.concurrent.TaskRunner$Backend) : okhttp3.internal.concurrent.TaskRunner {
    val nextQueueName: int;
    val coordinatorWaiting: bool;
    val coordinatorWakeUpAt: long;
    val busyQueues: java.util.List;
    val readyQueues: java.util.List;
    val runnable: java.lang.Runnable;
    val backend: okhttp3.internal.concurrent.TaskRunner$Backend;
    val INSTANCE: okhttp3.internal.concurrent.TaskRunner;
    val logger: java.util.logging.Logger;
    val Companion: okhttp3.internal.concurrent.TaskRunner$Companion;
    fun access$getLogger$cp(): java.util.logging.Logger;
    
    fun access$runTask(arg0: okhttp3.internal.concurrent.TaskRunner, arg1: okhttp3.internal.concurrent.Task): void {
        assigns arg1.queue;
        assigns arg1.nextExecuteNanoTime;
    }
    
    fun activeQueues(): java.util.List;
    
    fun afterRun(arg0: okhttp3.internal.concurrent.Task, arg1: long): void {
        assigns arg0.queue;
        assigns arg0.nextExecuteNanoTime;
    }
    
    fun awaitTaskToRun(): okhttp3.internal.concurrent.Task {
        assigns coordinatorWaiting;
        assigns coordinatorWakeUpAt;
    }
    
    fun beforeRun(arg0: okhttp3.internal.concurrent.Task): void {
        assigns arg0.nextExecuteNanoTime;
    }
    
    fun cancelAll(): void;
    
    fun getBackend(): okhttp3.internal.concurrent.TaskRunner$Backend;
    
    fun kickCoordinator$okhttp(arg0: okhttp3.internal.concurrent.TaskQueue): void;
    
    fun newQueue(): okhttp3.internal.concurrent.TaskQueue {
        assigns nextQueueName;
    }
    
    fun runTask(arg0: okhttp3.internal.concurrent.Task): void {
        assigns arg0.queue;
        assigns arg0.nextExecuteNanoTime;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
        assigns INSTANCE;
        assigns logger;
    }
}
automaton okhttp3.internal.concurrent.TaskRunner$Backend : okhttp3.internal.concurrent.TaskRunner$Backend {
    fun beforeTask(arg0: okhttp3.internal.concurrent.TaskRunner): void;
    
    fun coordinatorNotify(arg0: okhttp3.internal.concurrent.TaskRunner): void;
    
    fun coordinatorWait(arg0: okhttp3.internal.concurrent.TaskRunner, arg1: long): void;
    
    fun execute(arg0: java.lang.Runnable): void;
    
    fun nanoTime(): long;
}
automaton okhttp3.internal.concurrent.TaskRunner$Companion : okhttp3.internal.concurrent.TaskRunner$Companion {
    fun getLogger(): java.util.logging.Logger;
}
automaton okhttp3.internal.concurrent.TaskRunner$RealBackend (val arg0: java.util.concurrent.ThreadFactory) : okhttp3.internal.concurrent.TaskRunner$RealBackend {
    val executor: java.util.concurrent.ThreadPoolExecutor;
    fun beforeTask(arg0: okhttp3.internal.concurrent.TaskRunner): void;
    
    fun coordinatorNotify(arg0: okhttp3.internal.concurrent.TaskRunner): void;
    
    fun coordinatorWait(arg0: okhttp3.internal.concurrent.TaskRunner, arg1: long): void;
    
    fun execute(arg0: java.lang.Runnable): void;
    
    fun nanoTime(): long;
    
    fun shutdown(): void;
}
automaton okhttp3.internal.concurrent.TaskRunner$runnable$1 (val arg0: okhttp3.internal.concurrent.TaskRunner) : okhttp3.internal.concurrent.TaskRunner$runnable$1 {
    val this$0: okhttp3.internal.concurrent.TaskRunner;
    fun run(): void;
}
automaton okhttp3.TlsVersion (val arg0: java.lang.String, val arg1: int, val arg2: java.lang.String) : okhttp3.TlsVersion {
    val TLS_1_3: okhttp3.TlsVersion;
    val TLS_1_2: okhttp3.TlsVersion;
    val TLS_1_1: okhttp3.TlsVersion;
    val TLS_1_0: okhttp3.TlsVersion;
    val SSL_3_0: okhttp3.TlsVersion;
    val $VALUES: array<okhttp3.TlsVersion>;
    val javaName: java.lang.String;
    val Companion: okhttp3.TlsVersion$Companion;
    fun `-deprecated_javaName`(): java.lang.String;
    
    fun forJavaName(arg0: java.lang.String): okhttp3.TlsVersion;
    
    fun javaName(): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns TLS_1_3;
        assigns TLS_1_2;
        assigns TLS_1_1;
        assigns TLS_1_0;
        assigns SSL_3_0;
        assigns $VALUES;
        assigns Companion;
    }
    
    fun valueOf(arg0: java.lang.String): okhttp3.TlsVersion;
    
    fun values(): array<okhttp3.TlsVersion>;
}
automaton okhttp3.TlsVersion$Companion : okhttp3.TlsVersion$Companion {
    fun forJavaName(arg0: java.lang.String): okhttp3.TlsVersion;
}
automaton okhttp3.internal.tls.TrustRootIndex : okhttp3.internal.tls.TrustRootIndex {
    fun findByIssuerAndSignature(arg0: java.security.cert.X509Certificate): java.security.cert.X509Certificate;
}
automaton okhttp3.internal.Util : okhttp3.internal.Util {
    val EMPTY_BYTE_ARRAY: array<byte>;
    val EMPTY_HEADERS: okhttp3.Headers;
    val EMPTY_RESPONSE: okhttp3.ResponseBody;
    val EMPTY_REQUEST: okhttp3.RequestBody;
    val UNICODE_BOMS: okio.Options;
    val UTC: java.util.TimeZone;
    val VERIFY_AS_IP_ADDRESS: `<UNRESOLVED_TYPE>`;
    val assertionsEnabled: bool;
    val okHttpName: java.lang.String;
    val userAgent: java.lang.String;
    val UNICODE_BOMS: okio.Options;
    fun addIfAbsent(arg0: java.util.List, arg1: java.lang.Object): void;
    
    fun and(arg0: byte, arg1: int): int;
    
    fun and(arg0: short, arg1: int): int;
    
    fun and(arg0: int, arg1: long): long;
    
    fun asFactory(arg0: okhttp3.EventListener): okhttp3.EventListener$Factory;
    
    fun assertThreadDoesntHoldLock(arg0: java.lang.Object): void;
    
    fun assertThreadHoldsLock(arg0: java.lang.Object): void;
    
    fun canParseAsIpAddress(arg0: java.lang.String): bool;
    
    fun canReuseConnectionFor(arg0: okhttp3.HttpUrl, arg1: okhttp3.HttpUrl): bool;
    
    @Throws("java.lang.IllegalStateException", arg2 == "'null-const'")
    fun checkDuration(arg0: java.lang.String, arg1: long, arg2: java.util.concurrent.TimeUnit): int;
    
    fun checkOffsetAndCount(arg0: long, arg1: long, arg2: long): void;
    
    fun closeQuietly(arg0: java.io.Closeable): void {
        assigns arg0;
    }
    
    fun closeQuietly(arg0: java.net.Socket): void;
    
    fun closeQuietly(arg0: java.net.ServerSocket): void;
    
    fun concat(arg0: array, arg1: java.lang.String): array<java.lang.String>;
    
    fun delimiterOffset(arg0: java.lang.String, arg1: java.lang.String, arg2: int, arg3: int): int;
    
    fun delimiterOffset(arg0: java.lang.String, arg1: char, arg2: int, arg3: int): int;
    
    fun delimiterOffset$default(arg0: java.lang.String, arg1: java.lang.String, arg2: int, arg3: int, arg4: int, arg5: java.lang.Object): int;
    
    fun delimiterOffset$default(arg0: java.lang.String, arg1: char, arg2: int, arg3: int, arg4: int, arg5: java.lang.Object): int;
    
    fun discard(arg0: okio.Source, arg1: int, arg2: java.util.concurrent.TimeUnit): bool {
        assigns arg0;
    }
    
    fun discard(arg0: okio.Source, arg1: int, arg2: java.util.concurrent.TimeUnit): bool;
    
    fun filterList(arg0: java.lang.Iterable, arg1: kotlin.jvm.functions.Function1): java.util.List;
    
    fun format(arg0: java.lang.String, arg1: array): java.lang.String;
    
    fun hasIntersection(arg0: array, arg1: array, arg2: java.util.Comparator): bool;
    
    fun headersContentLength(arg0: okhttp3.Response): long;
    
    fun ignoreIoExceptions(arg0: kotlin.jvm.functions.Function0): void;
    
    fun immutableListOf(arg0: array): java.util.List;
    
    fun indexOf(arg0: array, arg1: java.lang.String, arg2: java.util.Comparator): int;
    
    fun indexOfControlOrNonAscii(arg0: java.lang.String): int;
    
    fun indexOfFirstNonAsciiWhitespace(arg0: java.lang.String, arg1: int, arg2: int): int;
    
    fun indexOfFirstNonAsciiWhitespace$default(arg0: java.lang.String, arg1: int, arg2: int, arg3: int, arg4: java.lang.Object): int;
    
    fun indexOfLastNonAsciiWhitespace(arg0: java.lang.String, arg1: int, arg2: int): int;
    
    fun indexOfLastNonAsciiWhitespace$default(arg0: java.lang.String, arg1: int, arg2: int, arg3: int, arg4: java.lang.Object): int;
    
    fun indexOfNonWhitespace(arg0: java.lang.String, arg1: int): int;
    
    fun indexOfNonWhitespace$default(arg0: java.lang.String, arg1: int, arg2: int, arg3: java.lang.Object): int;
    
    fun intersect(arg0: array, arg1: array, arg2: java.util.Comparator): array<java.lang.String>;
    
    fun isCivilized(arg0: okhttp3.internal.io.FileSystem, arg1: java.io.File): bool;
    
    fun isHealthy(arg0: java.net.Socket, arg1: okio.BufferedSource): bool;
    
    fun isHealthy(arg0: java.net.Socket, arg1: okio.BufferedSource): bool;
    
    fun notify(arg0: java.lang.Object): void;
    
    fun notifyAll(arg0: java.lang.Object): void;
    
    fun parseHexDigit(arg0: char): int;
    
    fun peerName(arg0: java.net.Socket): java.lang.String;
    
    fun readBomAsCharset(arg0: okio.BufferedSource, arg1: java.nio.charset.Charset): java.nio.charset.Charset {
        assigns arg0;
    }
    
    fun readBomAsCharset(arg0: okio.BufferedSource, arg1: java.nio.charset.Charset): java.nio.charset.Charset;
    
    fun readFieldOrNull(arg0: java.lang.Object, arg1: java.lang.Class, arg2: java.lang.String): java.lang.Object;
    
    fun readMedium(arg0: okio.BufferedSource): int {
        assigns arg0;
    }
    
    fun readMedium(arg0: okio.BufferedSource): int;
    
    fun skipAll(arg0: okio.Source, arg1: int, arg2: java.util.concurrent.TimeUnit): bool {
        assigns arg0;
    }
    
    fun skipAll(arg0: okio.Buffer, arg1: byte): int {
        assigns arg0.head;
        assigns arg0.head.pos;
        assigns arg0.size;
    }
    
    fun skipAll(arg0: okio.Source, arg1: int, arg2: java.util.concurrent.TimeUnit): bool;
    
    fun skipAll(arg0: okio.Buffer, arg1: byte): int;
    
    fun `static-constructor`(): void {
        assigns EMPTY_BYTE_ARRAY;
        assigns EMPTY_HEADERS;
        assigns EMPTY_RESPONSE;
        assigns EMPTY_REQUEST;
        assigns UNICODE_BOMS;
        assigns UTC;
        assigns assertionsEnabled;
        assigns okHttpName;
    }
    
    fun threadFactory(arg0: java.lang.String, arg1: bool): java.util.concurrent.ThreadFactory;
    
    fun threadName(arg0: java.lang.String, arg1: kotlin.jvm.functions.Function0): void;
    
    fun toHeaderList(arg0: okhttp3.Headers): java.util.List;
    
    fun toHeaders(arg0: java.util.List): okhttp3.Headers;
    
    fun toHexString(arg0: long): java.lang.String;
    
    fun toHexString(arg0: int): java.lang.String;
    
    fun toHostHeader(arg0: okhttp3.HttpUrl, arg1: bool): java.lang.String;
    
    fun toHostHeader$default(arg0: okhttp3.HttpUrl, arg1: bool, arg2: int, arg3: java.lang.Object): java.lang.String;
    
    fun toImmutableList(arg0: java.util.List): java.util.List;
    
    fun toImmutableMap(arg0: java.util.Map): java.util.Map;
    
    fun toLongOrDefault(arg0: java.lang.String, arg1: long): long;
    
    fun toNonNegativeInt(arg0: java.lang.String, arg1: int): int;
    
    fun trimSubstring(arg0: java.lang.String, arg1: int, arg2: int): java.lang.String;
    
    fun trimSubstring$default(arg0: java.lang.String, arg1: int, arg2: int, arg3: int, arg4: java.lang.Object): java.lang.String;
    
    fun wait(arg0: java.lang.Object): void;
    
    fun withSuppressed(arg0: java.lang.Exception, arg1: java.util.List): java.lang.Throwable;
    
    fun writeMedium(arg0: okio.BufferedSink, arg1: int): void {
        assigns arg0;
    }
    
    fun writeMedium(arg0: okio.BufferedSink, arg1: int): void;
}
automaton okhttp3.internal.Util$asFactory$1 (val arg0: okhttp3.EventListener) : okhttp3.internal.Util$asFactory$1 {
    val $this_asFactory: okhttp3.EventListener;
    fun create(arg0: okhttp3.Call): okhttp3.EventListener;
}
automaton okhttp3.internal.Util$threadFactory$1 (val arg0: java.lang.String, val arg1: bool) : okhttp3.internal.Util$threadFactory$1 {
    val $name: java.lang.String;
    val $daemon: bool;
    fun newThread(arg0: java.lang.Runnable): java.lang.Thread;
}
automaton okhttp3.WebSocket : okhttp3.WebSocket {
    fun cancel(): void;
    
    fun close(arg0: int, arg1: java.lang.String): bool;
    
    fun queueSize(): long;
    
    fun request(): okhttp3.Request;
    
    fun send(arg0: java.lang.String): bool;
    
    fun send(arg0: okio.ByteString): bool;
    
    fun send(arg0: okio.ByteString): bool;
}
automaton okhttp3.WebSocket$Factory : okhttp3.WebSocket$Factory {
    fun newWebSocket(arg0: okhttp3.Request, arg1: okhttp3.WebSocketListener): okhttp3.WebSocket;
}
automaton okhttp3.internal.ws.WebSocketExtensions (val arg0: bool, val arg1: int, val arg2: bool, val arg3: int, val arg4: bool, val arg5: bool) : okhttp3.internal.ws.WebSocketExtensions {
    val perMessageDeflate: bool;
    val clientMaxWindowBits: int;
    val clientNoContextTakeover: bool;
    val serverMaxWindowBits: int;
    val serverNoContextTakeover: bool;
    val unknownValues: bool;
    val HEADER_WEB_SOCKET_EXTENSION: java.lang.String;
    val Companion: okhttp3.internal.ws.WebSocketExtensions$Companion;
    fun component1(): bool;
    
    fun component2(): int;
    
    fun component3(): bool;
    
    fun component4(): int;
    
    fun component5(): bool;
    
    fun component6(): bool;
    
    fun copy(arg0: bool, arg1: int, arg2: bool, arg3: int, arg4: bool, arg5: bool): okhttp3.internal.ws.WebSocketExtensions;
    
    fun copy$default(arg0: okhttp3.internal.ws.WebSocketExtensions, arg1: bool, arg2: int, arg3: bool, arg4: int, arg5: bool, arg6: bool, arg7: int, arg8: java.lang.Object): okhttp3.internal.ws.WebSocketExtensions;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun hashCode(): int;
    
    fun noContextTakeover(arg0: bool): bool;
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
    
    fun toString(): java.lang.String;
}
automaton okhttp3.internal.ws.WebSocketExtensions$Companion : okhttp3.internal.ws.WebSocketExtensions$Companion {
    fun parse(arg0: okhttp3.Headers): okhttp3.internal.ws.WebSocketExtensions;
}
automaton okhttp3.WebSocketListener : okhttp3.WebSocketListener {
    fun onClosed(arg0: okhttp3.WebSocket, arg1: int, arg2: java.lang.String): void;
    
    fun onClosing(arg0: okhttp3.WebSocket, arg1: int, arg2: java.lang.String): void;
    
    fun onFailure(arg0: okhttp3.WebSocket, arg1: java.lang.Throwable, arg2: okhttp3.Response): void;
    
    fun onMessage(arg0: okhttp3.WebSocket, arg1: java.lang.String): void;
    
    fun onMessage(arg0: okhttp3.WebSocket, arg1: okio.ByteString): void;
    
    fun onMessage(arg0: okhttp3.WebSocket, arg1: okio.ByteString): void;
    
    fun onOpen(arg0: okhttp3.WebSocket, arg1: okhttp3.Response): void;
}
automaton okhttp3.internal.ws.WebSocketProtocol : okhttp3.internal.ws.WebSocketProtocol {
    val ACCEPT_MAGIC: java.lang.String;
    val B0_FLAG_FIN: int;
    val B0_FLAG_RSV1: int;
    val B0_FLAG_RSV2: int;
    val B0_FLAG_RSV3: int;
    val B0_MASK_OPCODE: int;
    val OPCODE_FLAG_CONTROL: int;
    val B1_FLAG_MASK: int;
    val B1_MASK_LENGTH: int;
    val OPCODE_CONTINUATION: int;
    val OPCODE_TEXT: int;
    val OPCODE_BINARY: int;
    val OPCODE_CONTROL_CLOSE: int;
    val OPCODE_CONTROL_PING: int;
    val OPCODE_CONTROL_PONG: int;
    val PAYLOAD_BYTE_MAX: long;
    val CLOSE_MESSAGE_MAX: long;
    val PAYLOAD_SHORT: int;
    val PAYLOAD_SHORT_MAX: long;
    val PAYLOAD_LONG: int;
    val CLOSE_CLIENT_GOING_AWAY: int;
    val CLOSE_NO_STATUS_CODE: int;
    val INSTANCE: okhttp3.internal.ws.WebSocketProtocol;
    fun acceptHeader(arg0: java.lang.String): java.lang.String;
    
    fun closeCodeExceptionMessage(arg0: int): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns INSTANCE;
    }
    
    fun toggleMask(arg0: okio.Buffer$UnsafeCursor, arg1: array): void {
        assigns arg0.segment;
        assigns arg0.offset;
        assigns arg0.data;
        assigns arg0.start;
        assigns arg0.end;
        assigns arg0.buffer.head;
    }
    
    fun toggleMask(arg0: okio.Buffer$UnsafeCursor, arg1: array): void;
    
    fun validateCloseCode(arg0: int): void;
}
automaton okhttp3.internal.ws.WebSocketReader (val arg0: bool, val arg1: okio.BufferedSource, val arg2: okhttp3.internal.ws.WebSocketReader$FrameCallback, val arg3: bool, val arg4: bool) : okhttp3.internal.ws.WebSocketReader {
    val closed: bool;
    val opcode: int;
    val frameLength: long;
    val isFinalFrame: bool;
    val isControlFrame: bool;
    val readingCompressedMessage: bool;
    val controlFrameBuffer: okio.Buffer;
    val messageFrameBuffer: okio.Buffer;
    val messageInflater: okhttp3.internal.ws.MessageInflater;
    val maskKey: array<byte>;
    val maskCursor: okio.Buffer$UnsafeCursor;
    val isClient: bool;
    val source: okio.BufferedSource;
    val frameCallback: okhttp3.internal.ws.WebSocketReader$FrameCallback;
    val perMessageDeflate: bool;
    val noContextTakeover: bool;
    val controlFrameBuffer: okio.Buffer;
    val messageFrameBuffer: okio.Buffer;
    val maskCursor: okio.Buffer$UnsafeCursor;
    val source: okio.BufferedSource;
    fun close(): void;
    
    fun getSource(): okio.BufferedSource;
    
    fun getSource(): okio.BufferedSource;
    
    fun processNextFrame(): void {
        assigns opcode;
        assigns isFinalFrame;
        assigns isControlFrame;
        assigns readingCompressedMessage;
        assigns frameLength;
        assigns closed;
        assigns messageInflater;
    }
    
    fun readControlFrame(): void {
        assigns closed;
    }
    
    fun readHeader(): void {
        assigns opcode;
        assigns isFinalFrame;
        assigns isControlFrame;
        assigns readingCompressedMessage;
        assigns frameLength;
    }
    
    fun readMessage(): void {
        assigns opcode;
        assigns isFinalFrame;
        assigns isControlFrame;
        assigns readingCompressedMessage;
        assigns frameLength;
        assigns closed;
    }
    
    fun readMessageFrame(): void {
        assigns messageInflater;
        assigns opcode;
        assigns isFinalFrame;
        assigns isControlFrame;
        assigns readingCompressedMessage;
        assigns frameLength;
        assigns closed;
    }
    
    fun readUntilNonControlFrame(): void {
        assigns opcode;
        assigns isFinalFrame;
        assigns isControlFrame;
        assigns readingCompressedMessage;
        assigns frameLength;
        assigns closed;
    }
}
automaton okhttp3.internal.ws.WebSocketReader$FrameCallback : okhttp3.internal.ws.WebSocketReader$FrameCallback {
    fun onReadClose(arg0: int, arg1: java.lang.String): void;
    
    fun onReadMessage(arg0: java.lang.String): void;
    
    fun onReadMessage(arg0: okio.ByteString): void;
    
    fun onReadMessage(arg0: okio.ByteString): void;
    
    fun onReadPing(arg0: okio.ByteString): void;
    
    fun onReadPing(arg0: okio.ByteString): void;
    
    fun onReadPong(arg0: okio.ByteString): void;
    
    fun onReadPong(arg0: okio.ByteString): void;
}
automaton okhttp3.internal.ws.WebSocketWriter (val arg0: bool, val arg1: okio.BufferedSink, val arg2: java.util.Random, val arg3: bool, val arg4: bool, val arg5: long) : okhttp3.internal.ws.WebSocketWriter {
    val messageBuffer: okio.Buffer;
    val sinkBuffer: okio.Buffer;
    val writerClosed: bool;
    val messageDeflater: okhttp3.internal.ws.MessageDeflater;
    val maskKey: array<byte>;
    val maskCursor: okio.Buffer$UnsafeCursor;
    val isClient: bool;
    val sink: okio.BufferedSink;
    val random: java.util.Random;
    val perMessageDeflate: bool;
    val noContextTakeover: bool;
    val minimumDeflateSize: long;
    val messageBuffer: okio.Buffer;
    val sinkBuffer: okio.Buffer;
    val maskCursor: okio.Buffer$UnsafeCursor;
    val sink: okio.BufferedSink;
    fun close(): void;
    
    fun getRandom(): java.util.Random;
    
    fun getSink(): okio.BufferedSink;
    
    fun getSink(): okio.BufferedSink;
    
    fun writeClose(arg0: int, arg1: okio.ByteString): void {
        assigns writerClosed;
    }
    
    fun writeClose(arg0: int, arg1: okio.ByteString): void;
    
    fun writeControlFrame(arg0: int, arg1: okio.ByteString): void;
    
    fun writeControlFrame(arg0: int, arg1: okio.ByteString): void;
    
    fun writeMessageFrame(arg0: int, arg1: okio.ByteString): void {
        assigns messageDeflater;
    }
    
    fun writeMessageFrame(arg0: int, arg1: okio.ByteString): void;
    
    fun writePing(arg0: okio.ByteString): void;
    
    fun writePing(arg0: okio.ByteString): void;
    
    fun writePong(arg0: okio.ByteString): void;
    
    fun writePong(arg0: okio.ByteString): void;
}
