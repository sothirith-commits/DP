.class public final Lretrofit2/OkHttpCall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;
.implements Lretrofit2/Callback;
.implements Lokhttp3/Callback;
.implements Lretrofit2/Converter;


# static fields
.field public static e:Z

.field public static f:Z

.field public static g:Z


# instance fields
.field public this$0:Ljava/lang/Object;

.field public val$callback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lretrofit2/Call;Lretrofit2/Callback;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "invld_id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public a([BZZLjava/lang/String;)[B
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const-string v0, "domain_p"

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "domain_s"

    invoke-static {v2, v4, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "https://"

    if-nez v4, :cond_0

    invoke-static {v5, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    sget-object v3, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v3

    move v5, v4

    :goto_0
    sget-object v6, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_11

    aget-object v0, v6, v5

    const/4 v6, 0x1

    const-string v7, "cfgfd"

    if-eqz p3, :cond_2

    sget-boolean v8, Lretrofit2/OkHttpCall$1;->f:Z

    if-nez v8, :cond_3

    const-string v8, "MobclickRT"

    const-string v9, "--->>> Register zero-number report imprint response callback handler."

    invoke-static {v8, v9}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v8

    new-instance v9, Lcom/umeng/commonsdk/statistics/internal/c$2;

    invoke-direct {v9, v1}, Lcom/umeng/commonsdk/statistics/internal/c$2;-><init>(Lretrofit2/OkHttpCall$1;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "iscfg"

    invoke-static {v8, v9}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registPreProcessCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;)V

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v8

    new-instance v9, Lcom/umeng/commonsdk/statistics/internal/c$1;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10}, Lcom/umeng/commonsdk/statistics/internal/c$1;-><init>(Lretrofit2/OkHttpCall$1;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v9}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    sput-boolean v6, Lretrofit2/OkHttpCall$1;->f:Z

    goto :goto_1

    :cond_2
    sget-boolean v8, Lretrofit2/OkHttpCall$1;->g:Z

    if-nez v8, :cond_3

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v8

    new-instance v9, Lcom/umeng/commonsdk/statistics/internal/c$1;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/umeng/commonsdk/statistics/internal/c$1;-><init>(Lretrofit2/OkHttpCall$1;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v9}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    sput-boolean v6, Lretrofit2/OkHttpCall$1;->g:Z

    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v8, p4

    invoke-static {v0, v7, v8}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "Content-Type"

    const/4 v9, 0x2

    :try_start_0
    iget-object v10, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v10, Lcom/umeng/commonsdk/statistics/internal/StatTracer;
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v10, :cond_4

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-object/from16 v12, p1

    move-object v10, v3

    move-object v11, v10

    :catchall_1
    :goto_2
    move v15, v5

    goto/16 :goto_c

    :catch_0
    move-object/from16 v12, p1

    move-object v10, v3

    move-object v11, v10

    :catch_1
    :goto_3
    move v15, v5

    goto/16 :goto_e

    :catch_2
    move-object/from16 v12, p1

    move-object v10, v3

    move-object v11, v10

    :catch_3
    :goto_4
    move v15, v5

    goto/16 :goto_11

    :cond_4
    :goto_5
    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    sget-boolean v0, Lretrofit2/OkHttpCall$1;->e:Z
    :try_end_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v0, :cond_5

    :try_start_4
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v3, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sput-boolean v6, Lretrofit2/OkHttpCall$1;->e:Z
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-object/from16 v12, p1

    move-object v11, v3

    goto :goto_2

    :catch_4
    move-object/from16 v12, p1

    move-object v11, v3

    goto :goto_3

    :catch_5
    move-object/from16 v12, p1

    move-object v11, v3

    goto :goto_4

    :cond_5
    :goto_6
    :try_start_5
    const-string v0, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Umeng-Sdk"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v11

    iget-object v11, v11, Lcom/umeng/commonsdk/statistics/internal/a;->b:Ljava/lang/String;

    invoke-virtual {v10, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/commonsdk/statistics/internal/a;->c:Ljava/lang/String;

    invoke-virtual {v10, v7, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Msg-Type"

    const-string v11, "envelope/json"

    invoke-virtual {v10, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Umeng-Pro-Ver"

    const-string v11, "1.0.0"

    invoke-virtual {v10, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SM-IMP"

    const-string v11, "1"

    invoke-virtual {v10, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getCustomAgt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7530

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "POST"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v10, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v10, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v10}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v12, p1

    :try_start_6
    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    iget-object v0, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v15, v5

    :try_start_7
    iget-wide v4, v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    sub-long/2addr v13, v4

    long-to-int v4, v13

    iput v4, v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    goto :goto_7

    :cond_6
    move v15, v5

    :goto_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v10, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "application/thrift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    :goto_8
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_9
    :try_start_b
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v5

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_c
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v5
    :try_end_c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_8
    :try_start_d
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_a
    :try_start_e
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :catch_9
    :goto_b
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move-object v0, v3

    goto/16 :goto_13

    :catchall_4
    move-object/from16 v12, p1

    move v15, v5

    move-object v11, v3

    goto :goto_c

    :catch_a
    move-object/from16 v12, p1

    move v15, v5

    move-object v11, v3

    goto :goto_e

    :catch_b
    move-object/from16 v12, p1

    move v15, v5

    move-object v11, v3

    goto :goto_11

    :catchall_5
    move-object/from16 v12, p1

    move v15, v5

    move-object v10, v3

    move-object v11, v10

    goto :goto_c

    :catch_c
    move-object/from16 v12, p1

    move v15, v5

    move-object v10, v3

    move-object v11, v10

    goto :goto_e

    :catch_d
    move-object/from16 v12, p1

    move v15, v5

    move-object v10, v3

    move-object v11, v10

    goto :goto_11

    :catchall_6
    :goto_c
    if-eqz v11, :cond_a

    :try_start_f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_d

    :catch_e
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_a
    :goto_d
    if-eqz v10, :cond_9

    :try_start_10
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_b

    :catch_f
    :goto_e
    :try_start_11
    const-string v0, "A_10200"

    invoke-static {v0, v9, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v11, :cond_b

    :try_start_12
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_f

    :catch_10
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_b
    :goto_f
    if-eqz v10, :cond_9

    :try_start_13
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_b

    :goto_10
    move-object v1, v0

    goto :goto_14

    :catchall_7
    move-exception v0

    goto :goto_10

    :catch_11
    :goto_11
    :try_start_14
    const-string v0, "A_10201"

    invoke-static {v0, v9, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v11, :cond_c

    :try_start_15
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_c
    :goto_12
    if-eqz v10, :cond_9

    :try_start_16
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_b

    :goto_13
    if-eqz v0, :cond_d

    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-eqz v1, :cond_11

    iget v2, v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    if-eqz p2, :cond_11

    iget-wide v2, v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    iput-wide v2, v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    goto :goto_16

    :cond_d
    iget-object v4, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-eqz v4, :cond_e

    iget v5, v4, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    :cond_e
    add-int/lit8 v5, v15, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :goto_14
    if-eqz v11, :cond_f

    :try_start_17
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_15

    :catch_13
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_f
    :goto_15
    if-eqz v10, :cond_10

    :try_start_18
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_14

    :catch_14
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v1

    :cond_11
    :goto_16
    return-object v0
.end method

.method public adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    invoke-direct {v0, p0, p1}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/Gson;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v2, v0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-boolean v0, v1, Lcom/google/gson/Gson;->lenient:Z

    iput-boolean v0, v2, Lcom/google/gson/stream/JsonReader;->lenient:Z

    :try_start_0
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/TypeAdapter;

    invoke-virtual {p0, v2}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/google/gson/JsonIOException;

    const-string v0, "JSON document was not fully consumed."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw p0
.end method

.method public onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p1, Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lretrofit2/OkHttpCall;

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Lretrofit2/Callback;

    const/16 v2, 0x14

    invoke-direct {v0, p0, v1, p2, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 0

    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p1, Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lretrofit2/OkHttpCall;

    :try_start_0
    invoke-virtual {p0, p2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p2

    invoke-static {p2}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    :try_start_2
    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3

    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Lretrofit2/Callback;

    const/16 v2, 0x13

    invoke-direct {v0, p0, v1, p2, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method
