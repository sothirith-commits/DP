.class public final Lcom/deepalhome/launcher/http/ServerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/http/ServerUtil;

.field public static final builds:[Ljava/lang/String;

.field public static final devices:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/deepalhome/launcher/http/ServerUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/http/ServerUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/http/ServerUtil;->INSTANCE:Lcom/deepalhome/launcher/http/ServerUtil;

    const-string v13, "OPPO Find X6"

    const-string v14, "vivo X90"

    const-string v1, "Pixel 7"

    const-string v2, "Pixel 8"

    const-string v3, "SM-G998B"

    const-string v4, "SM-S918B"

    const-string v5, "SM-A546B"

    const-string v6, "Mi 10"

    const-string v7, "Mi 11"

    const-string v8, "Mi 12"

    const-string v9, "Redmi K50"

    const-string v10, "HUAWEI P60"

    const-string v11, "HUAWEI Mate 50"

    const-string v12, "OnePlus 11"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/http/ServerUtil;->devices:[Ljava/lang/String;

    const-string v6, "QQ3A"

    const-string v7, "PP1A"

    const-string v1, "TQ3A"

    const-string v2, "UP1A"

    const-string v3, "TP1A"

    const-string v4, "SP2A"

    const-string v5, "RQ3A"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/http/ServerUtil;->builds:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 9

    const-string v0, "releaseUrl"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v3, v1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v4, v2, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    iget-object v3, v1, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v4, v2, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    iget-object v3, v1, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iget-boolean v3, v1, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iget-object v3, v1, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    iget-boolean v3, v1, Lokhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iget-boolean v3, v1, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iget-object v3, v1, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v3, v1, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iget v3, v1, Lokhttp3/OkHttpClient;->callTimeoutMillis:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    iget v3, v1, Lokhttp3/OkHttpClient;->connectTimeoutMillis:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iget v3, v1, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iget v3, v1, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iget v3, v1, Lokhttp3/OkHttpClient;->pingIntervalMillis:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    iget-wide v3, v1, Lokhttp3/OkHttpClient;->minWebSocketMessageToCompress:J

    iput-wide v3, v2, Lokhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    iget-object v1, v1, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    iput-object v1, v2, Lokhttp3/OkHttpClient$Builder;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v3, v4, v1}, Lokhttp3/internal/Util;->checkDuration(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v2, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    const/4 v1, 0x1

    iput-boolean v1, v2, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/deepalhome/launcher/http/ServerUtil$getClient$$inlined$-addInterceptor$1;

    invoke-direct {p2}, Lcom/deepalhome/launcher/http/ServerUtil$getClient$$inlined$-addInterceptor$1;-><init>()V

    invoke-virtual {v2, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)V

    new-instance p2, Lcom/deepalhome/launcher/http/RetryInterceptor;

    const/4 v3, 0x2

    invoke-direct {p2, v3}, Lcom/deepalhome/launcher/http/RetryInterceptor;-><init>(I)V

    invoke-virtual {v2, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)V

    new-instance p2, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(I)V

    iput v1, p2, Lokhttp3/logging/HttpLoggingInterceptor;->level:I

    invoke-virtual {v2, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)V

    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2, v2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    iput-object p2, v0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    sget-object p2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    iget-object p2, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iput-object p0, v0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p2, Lretrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {p2, p0}, Lretrofit2/converter/gson/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    iget-object p0, v0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    if-eqz p0, :cond_8

    iget-object p0, v0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    if-nez p0, :cond_1

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    :cond_1
    sget-object p2, Lretrofit2/Platform;->callbackExecutor:Lretrofit2/AndroidMainExecutor;

    sget-object v2, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p2}, Lretrofit2/BuiltInFactories;->createDefaultCallAdapterFactories(Lretrofit2/AndroidMainExecutor;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lretrofit2/BuiltInFactories;->createDefaultConverterFactories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v8, v5

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lretrofit2/BuiltInConverters;

    invoke-direct {v5}, Lretrofit2/BuiltInConverters;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lretrofit2/Retrofit;

    iget-object v0, v0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    invoke-direct {v2, p0, v0, v5, v4}, Lretrofit2/Retrofit;-><init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Type parameters are unsupported on "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p2, p1, :cond_2

    const-string p2, " which is an interface of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-boolean p0, v2, Lretrofit2/Retrofit;->validateEagerly:Z

    if-eqz p0, :cond_6

    sget-object p0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p2

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v1, p2, v3

    invoke-virtual {p0, v1}, Lretrofit2/Reflection;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, p1, v1}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p2

    new-instance v0, Lretrofit2/Retrofit$1;

    invoke-direct {v0, v2, p1}, Lretrofit2/Retrofit$1;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V

    invoke-static {p0, p2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API declarations must be interfaces."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Base URL required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "baseUrl must end in /: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static randomUserAgent()Ljava/lang/String;
    .locals 8

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lkotlin/random/Random;->nextInt(II)I

    move-result v1

    sget-object v2, Lcom/deepalhome/launcher/http/ServerUtil;->devices:[Ljava/lang/String;

    array-length v3, v2

    invoke-virtual {v0, v3}, Lkotlin/random/AbstractPlatformRandom;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/deepalhome/launcher/http/ServerUtil;->builds:[Ljava/lang/String;

    array-length v4, v3

    invoke-virtual {v0, v4}, Lkotlin/random/AbstractPlatformRandom;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    invoke-virtual {v0, v4, v5}, Lkotlin/random/Random;->nextInt(II)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1770

    invoke-virtual {v0, v5, v6}, Lkotlin/random/Random;->nextInt(II)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Build/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0x186a0

    const v2, 0xf423f

    invoke-virtual {v0, v1, v2}, Lkotlin/random/Random;->nextInt(II)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") AppleWebKit/537.36 (KHTML, like Gecko) Chrome/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".0."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".0 Mobile Safari/537.36"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
