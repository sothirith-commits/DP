.class public final Lcom/liulishuo/okdownload/OkDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile singleton:Lcom/liulishuo/okdownload/OkDownload;


# instance fields
.field public breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

.field public callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field public connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

.field public final context:Landroid/content/Context;

.field public downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

.field public downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

.field public outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

.field public processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;Lcom/liulishuo/okdownload/core/download/DownloadStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iput-object p3, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iput-object p4, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iput-object p5, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    iput-object p6, p0, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    iput-object p7, p0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iput-object p8, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    sget-object p0, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "createRemitSelf"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Get final download store is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Util"

    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p2, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    return-void
.end method

.method public static with()Lcom/liulishuo/okdownload/OkDownload;
    .locals 3

    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v0, :cond_2

    const-class v0, Lcom/liulishuo/okdownload/OkDownload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v1, :cond_1

    sget-object v1, Lcom/liulishuo/okdownload/OkDownloadProvider;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/liulishuo/okdownload/OkDownload;

    invoke-direct {v2, v1}, Lcom/liulishuo/okdownload/OkDownload;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/OkDownload;->build()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    sput-object v1, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/liulishuo/okdownload/OkDownload;
    .locals 10

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    if-nez v0, :cond_1

    new-instance v0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    sget-object v1, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    :try_start_0
    const-string v1, "com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    if-nez v0, :cond_3

    sget-object v0, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    :try_start_1
    const-string v0, "com.liulishuo.okdownload.core.connection.DownloadOkHttp3Connection$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance v0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    :cond_3
    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    if-nez v0, :cond_4

    new-instance v0, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    :cond_4
    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    if-nez v0, :cond_5

    new-instance v0, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    :cond_5
    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    if-nez v0, :cond_6

    new-instance v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    :cond_6
    new-instance v0, Lcom/liulishuo/okdownload/OkDownload;

    iget-object v3, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iget-object v4, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v5, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v6, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    iget-object v7, p0, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    iget-object v8, p0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iget-object v9, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    iget-object v2, p0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/liulishuo/okdownload/OkDownload;-><init>(Landroid/content/Context;Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;Lcom/liulishuo/okdownload/core/download/DownloadStrategy;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadStore["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] connectionFactory["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OkDownload"

    invoke-static {v1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
