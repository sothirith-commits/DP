.class public final Lcom/tinnove/renderclient/ClientDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile instance:Lcom/tinnove/renderclient/ClientDataManager;


# instance fields
.field public final dataManager:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientDataManager;->dataManager:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/tinnove/renderclient/ClientDataManager;
    .locals 2

    sget-object v0, Lcom/tinnove/renderclient/ClientDataManager;->instance:Lcom/tinnove/renderclient/ClientDataManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tinnove/renderclient/ClientDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tinnove/renderclient/ClientDataManager;->instance:Lcom/tinnove/renderclient/ClientDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tinnove/renderclient/ClientDataManager;

    invoke-direct {v1}, Lcom/tinnove/renderclient/ClientDataManager;-><init>()V

    sput-object v1, Lcom/tinnove/renderclient/ClientDataManager;->instance:Lcom/tinnove/renderclient/ClientDataManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/tinnove/renderclient/ClientDataManager;->instance:Lcom/tinnove/renderclient/ClientDataManager;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinnove/renderclient/ClientDataManager;->dataManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tinnove/renderclient/CocosDataEventManager;

    invoke-direct {v0, p1}, Lcom/tinnove/renderclient/CocosDataEventManager;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tinnove/renderclient/ClientDataManager;->dataManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tinnove/renderclient/ClientDataManager;->dataManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tinnove/renderclient/CocosDataEventManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method
