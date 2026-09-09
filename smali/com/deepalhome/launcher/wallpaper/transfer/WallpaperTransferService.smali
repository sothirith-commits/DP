.class public final Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

.field public static instance:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;


# instance fields
.field public final asyncServer:Lcom/koushikdutta/async/AsyncServer;

.field public final existingHashes:Ljava/util/Set;

.field public final existingIconHashes:Ljava/util/Set;

.field public final failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public lastProgressAt:J

.field public final receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public routesRegistered:Z

.field public running:Z

.field public securityToken:Ljava/lang/String;

.field public final server:Lcom/koushikdutta/async/http/server/AsyncHttpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->server:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    new-instance v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->asyncServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingHashes:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingIconHashes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getIndexContent()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "wallpaper_transfer/index.html"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v1, "toByteArray(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final notifyProgressIfNeeded(Ljava/lang/String;JJ)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->lastProgressAt:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    return-void

    :cond_0
    iput-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->lastProgressAt:J

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const/4 v9, 0x0

    const-string v1, "receiving"

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->instance:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->instance:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->running:Z

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->securityToken:Ljava/lang/String;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->server:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/AsyncServer$2$1;

    iget-object v3, v2, Lcom/koushikdutta/async/AsyncServer$2$1;->val$wrapper:Lcom/koushikdutta/async/ServerSocketChannelWrapper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v3, v4, v0

    invoke-static {v4}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v2, Lcom/koushikdutta/async/AsyncServer$2$1;->val$key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget v0, Lkotlin/Result;->$r8$clinit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->asyncServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 14

    move-object v11, p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2f6729fe

    if-eq v1, v2, :cond_3

    const v2, 0x4397fac6

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "com.deepalhome.launcher.wallpaper.transfer.action.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    :cond_3
    const-string v1, "com.deepalhome.launcher.wallpaper.transfer.action.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v12, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v13, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v0, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->running:Z

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->routesRegistered:Z

    iget-object v1, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->server:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    const/4 v2, 0x1

    if-nez v0, :cond_5

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    const-string v3, "GET"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    const-string v3, "POST"

    const-string v4, "/verify-token"

    invoke-virtual {v1, v3, v4, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v0, p0, v4}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    const-string v4, "/wallpapers"

    invoke-virtual {v1, v3, v4, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v0, p0, v4}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    const-string v4, "/icons"

    invoke-virtual {v1, v3, v4, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;)V

    iput-boolean v2, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->routesRegistered:Z

    :cond_5
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v3, 0x3e8

    const/16 v4, 0x270f

    invoke-direct {v0, v3, v4, v2}, Lkotlin/ranges/IntProgression;-><init>(III)V

    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-string v4, "random"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v3, v0}, Lokio/Okio;->nextInt(Lkotlin/random/Random$Default;Lkotlin/ranges/IntRange;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->securityToken:Ljava/lang/String;

    iget-object v0, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingHashes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperHashCache;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperHashCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperHashCache;->buildExistingFileHashes()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingIconHashes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v3, Lcom/deepalhome/launcher/floating/IconHashCache;->INSTANCE:Lcom/deepalhome/launcher/floating/IconHashCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/IconHashCache;->buildExistingIconHashes()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :try_start_1
    iget-object v0, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->asyncServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;-><init>(I)V

    new-instance v4, Lcom/koushikdutta/async/AsyncServer$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    invoke-direct {v4, v0, v1, v3}, Lcom/koushikdutta/async/AsyncServer$2;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V

    invoke-virtual {v0, v4}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    iput-boolean v2, v11, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->running:Z

    const-string v2, "waiting"

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v2, "error"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    const/4 v0, 0x2

    return v0
.end method

.method public final sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.deepalhome.launcher.wallpaper.transfer.action.STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_file_name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_received_bytes"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "extra_total_bytes"

    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "extra_success_count"

    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_failed_count"

    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p9, :cond_1

    invoke-static {p9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "extra_message"

    invoke-virtual {v0, p1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
