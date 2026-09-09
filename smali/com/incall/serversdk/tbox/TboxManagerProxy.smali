.class public Lcom/incall/serversdk/tbox/TboxManagerProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/tbox/ITSManager;",
        ">;"
    }
.end annotation


# static fields
.field public static mInstance:Lcom/incall/serversdk/tbox/TboxManagerProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/tbox/ICallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/incall/serversdk/tbox/IBoxEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIRmtJobListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/incall/serversdk/tbox/IRmtJobListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTboxConnectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/tbox/ITboxConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTboxDiagnosticLinsteners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;",
            ">;"
        }
    .end annotation
.end field

.field private mTboxFileListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/tbox/ITboxFileListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTboxNotifyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/tbox/ITboxNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTboxProVarChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/incall/serversdk/tbox/ITboxPropertyChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTboxSingalListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/tbox/ITboxSingalListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    const-string v0, "TboxManagerProxy"

    iput-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mIRmtJobListeners:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mEventListeners:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxProVarChangeListeners:Ljava/util/Map;

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/tbox/TboxManagerProxy;
    .locals 2

    const-class v0, Lcom/incall/serversdk/tbox/TboxManagerProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mInstance:Lcom/incall/serversdk/tbox/TboxManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/tbox/TboxManagerProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mInstance:Lcom/incall/serversdk/tbox/TboxManagerProxy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mInstance:Lcom/incall/serversdk/tbox/TboxManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/incall/serversdk/tbox/TboxManagerProxy;

    monitor-exit v1

    return-object v0

    :goto_1
    const-class v1, Lcom/incall/serversdk/tbox/TboxManagerProxy;

    monitor-exit v1

    throw v0
.end method

.method private reRegistCallListeners()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/tbox/ICallListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v3, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v3, v2}, Lcom/incall/serversdk/tbox/ITSManager;->registCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reRegistDiagnosticListeners()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v3, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v3, v2}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxDiagnosticInfoListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reRegistFileListener()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/tbox/ITboxFileListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v3, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v3, v2}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reRegistNotifyListener()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/tbox/ITboxNotifyListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v3, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v3, v2}, Lcom/incall/serversdk/tbox/ITSManager;->registNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reRegistTboxConnectListener()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/tbox/ITboxConnectListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v3, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v3, v2}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reRegistWanSingalListeners()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/tbox/ITboxSingalListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v3, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v3, v2}, Lcom/incall/serversdk/tbox/ITSManager;->registWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reRegisterRmtJobListeners()V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mIRmtJobListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mIRmtJobListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v2, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/tbox/IRmtJobListener;

    invoke-interface {v2, v3, v1}, Lcom/incall/serversdk/tbox/ITSManager;->registerRmtJobListener(ILcom/incall/serversdk/tbox/IRmtJobListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private reRegisterTboxEventListeners()V
    .locals 6

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mEventListeners:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/incall/serversdk/tbox/IBoxEventListener;

    iget-object v4, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v4, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/incall/serversdk/tbox/ITSManager;->registerTboxEventListener(ILcom/incall/serversdk/tbox/IBoxEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private reRegisterTboxPropertyChangeListeners()V
    .locals 6

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxProVarChangeListeners:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxProVarChangeListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/incall/serversdk/tbox/ITboxPropertyChangeListener;

    iget-object v4, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v4, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/incall/serversdk/tbox/ITSManager;->registerTboxPropertyChangeListener(ILcom/incall/serversdk/tbox/ITboxPropertyChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkInterNetDataChannelState(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 3

    const-string v0, "checkInterNetDataChannelState: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "checkInterNetDataChannelState: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkNetWorkChannelState(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public connectNetWork(Ljava/lang/String;IILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 6

    const-string v0, "connectNetWork: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectNetWork: ssid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", networkID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", authentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/incall/serversdk/tbox/ITSManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/incall/serversdk/tbox/ITSManager;->connectWifi(Ljava/lang/String;IILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public controlTboxWithCmd(Ljava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 5

    const-string v0, "control tbox"

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "control tbox with cmd: "

    const-string v3, "cmdContent: "

    const-string v4, ",callback = "

    invoke-static {v2, p1, v3, p2, v4}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail,connection : mInterface = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/tbox/ITSManager;->controlTboxWithCmd(Ljava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public disconnectWifi(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "disconnectWifi: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnectWifi: networkID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->disconnectWifi(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getHardWareVersion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "getTboxSoftVersion: mInterface = "

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v3, "getHardWareVersion: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getHardWareVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getIMEINumber(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "getIMEINumber: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIMEINumber: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkIMEIcode(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.tbox.service"

    return-object p0
.end method

.method public getTboxCertID()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    const-string v1, "getTboxCertID~~mInterface:"

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v3, "getTboxCertID~~~"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxCertID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getTboxConnectStatus()I
    .locals 4

    const-string v0, "getTboxConnectStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "getTboxConnectStatus: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxConnectStatus()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public getTboxFirmVersion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "getTboxFirmVersion: mInterface = "

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v3, "getTboxFirmVersion: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxFirmVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getTboxICCID()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    const-string v1, "getTboxICCID~~mInterface:"

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v3, "getTboxICCID~~~"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxICCID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getTboxSoftVersion(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "getTboxSoftVersion: mInterface = "

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v3, "getTboxSoftVersion: type = "

    invoke-static {p1, v3, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxSoftVersion(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getTboxTUID()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    const-string v1, "getTboxTUID~~mInterface:"

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v3, "getTboxTUID~~~"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxTUID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getTboxWifiMac(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "getTboxWifiMac: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTboxWifiMac: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiMacAdress(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getWansSingalCops()I
    .locals 4

    const-string v0, "getWansSingalCops: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "getWansSingalCops: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getWansSingalCops()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public getWansSingalCsq()I
    .locals 4

    const-string v0, "getWansSingalCsq: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "getWansSingalCsq: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getWansSingalCsq()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public getWifiConnectNum(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "getWifiConnectNum: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiConnectNum: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiLinker(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getWifiPassword(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "getWifiPassword: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiPassword: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiPassword(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getWifiSSID(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "getWifiSSID: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiSSID: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiSSID(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getWifiSwitchStatus(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "getWifiSwitchStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiSwitchStatus: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiState(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public loadInFileRequest(ILjava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "loadInFileRequest: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadInFileRequest: code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tokenPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", keyPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/incall/serversdk/tbox/ITSManager;->loadInFileRequest(ILjava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public loadOutFileRequest(ILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "loadOutFileRequest: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadOutFileRequest: code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fileOutPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/tbox/ITSManager;->loadOutFileRequest(ILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public noticeChangePreferredNetworkType(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "change preferred NetworkType: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "change preferred NetworkType:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->noticeChangePreferredNetworkType(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public noticeConfApn(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "reset apn: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "conf 4G two apn:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->noticeConfApn(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public noticeSetFlightMode(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "set flightMode: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set flightMode:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->noticeSetFlightMode(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public notityTboxLocation(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "notityTboxLocation: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notityTboxLocation: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->notityTboxLocation(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public openCheckTbox(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "openCheckTbox: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openCheckTbox: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->openCheckTbox(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public queryTboxPropertyInfo(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "query tbox proId fail,connection : mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query tbox proId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->queryTboxPropertyInfo(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public reRegisterCallBacks()V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegistCallListeners()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegistWanSingalListeners()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegistTboxConnectListener()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegistFileListener()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegistNotifyListener()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegistDiagnosticListeners()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegisterRmtJobListeners()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegisterTboxPropertyChangeListeners()V

    invoke-direct {p0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->reRegisterTboxEventListeners()V

    return-void
.end method

.method public refreshWifiList(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "refreshWifiList: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshWifiList: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->refreshWifiList(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public registCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V
    .locals 4

    const-string v0, "registCallListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registCallListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registDiagnosticListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V
    .locals 4

    const-string v0, "registDiagnosticListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registDiagnosticListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxDiagnosticInfoListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V
    .locals 4

    const-string v0, "registFileListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registFileListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V
    .locals 4

    const-string v0, "registNotifyListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registNotifyListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V
    .locals 4

    const-string v0, "registTboxConnectListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registTboxConnectListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registTboxInterNetDataChannelListener(Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registTboxInterNetDataChannelListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxInterNetDataChannelListener(Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string p1, "mInterface is Null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V
    .locals 4

    const-string v0, "registWanSingalListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registWanSingalListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registerRmtJobListener(ILcom/incall/serversdk/tbox/IRmtJobListener;)V
    .locals 4

    const-string v0, "registerRmtJobListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerRmtJobListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mIRmtJobListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->registerRmtJobListener(ILcom/incall/serversdk/tbox/IRmtJobListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registerTboxEventListener(ILcom/incall/serversdk/tbox/IBoxEventListener;)V
    .locals 4

    const-string v0, "registerEventIdListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register eventListener: eventId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->registerTboxEventListener(ILcom/incall/serversdk/tbox/IBoxEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public registerTboxPropertyChangeListener(ILcom/incall/serversdk/tbox/ITboxPropertyChangeListener;)V
    .locals 4

    const-string v0, "registerPropertyListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register propertyListener: eventId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxProVarChangeListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxProVarChangeListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->registerTboxPropertyChangeListener(ILcom/incall/serversdk/tbox/ITboxPropertyChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public removeALLWifiHot(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "removeALLWifiHot: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeALLWifiHot: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->delectConnectedWifiList(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public requestCallToTbox(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "requestCallToTbox: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestCallToTbox: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->sendCallToTbox(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public requestTboxNetStatusInfo(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "request tBoxNetSta fail,connection : mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request tBoxNetSta ,callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->requestTboxNetStatusInfo(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public requestTboxUpdata(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "requestTboxUpdata: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestTboxUpdata: callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->requestTboxUpdata(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public requestTspRmtJobForTest(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "request TspRmtJob fail,connection : mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request TspRmtJob ForTest(selfDefine voice) ,callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->requestTspRmtJobForTest(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public resetApnToDefaultConf(Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "reset apn: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset 4G apn:  callback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->resetApnToDefaultConf(Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendATCommand(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "sendATCommand: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendATCommand: at = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->sendATCommand(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendAudioStatus(I)V
    .locals 3

    const-string v0, "sendAudioStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendAudioStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendAudioStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendBcallStatus(I)V
    .locals 3

    const-string v0, "sendBcallStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendBcallStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendBcallStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendEcallBcallPlayCallAudio(I)V
    .locals 3

    const-string v0, "sendEcallBcallPlayCallAudio: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendEcallBcallPlayCallAudio: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendEcallBcallPlayCallAudio(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendEcallStatus(I)V
    .locals 3

    const-string v0, "sendEcallStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendEcallStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendEcallStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendSetWifiPasswordStatus(I)V
    .locals 3

    const-string v0, "sendSetWifiPasswordStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendSetWifiPasswordStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendSetWifiPasswordStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendSetWifiSSIDStatus(I)V
    .locals 3

    const-string v0, "sendSetWifiSSIDStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendSetWifiSSIDStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendSetWifiSSIDStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendTboxRequstCarStatus(I)V
    .locals 3

    const-string v0, "sendTboxRequstCarStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendTboxRequstCarStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendTboxRequstCarStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendTboxRequstLogStatus(I)V
    .locals 3

    const-string v0, "sendTboxRequstLogStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendTboxRequstLogStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendTboxRequstLogStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendTboxRequstUpLoadStatus(I)V
    .locals 3

    const-string v0, "sendTboxRequstUpLoadStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendTboxRequstUpLoadStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendTboxRequstUpLoadStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendWifiChanelStatus(I)V
    .locals 3

    const-string v0, "sendWifiChanelStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendWifiChanelStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiChanelStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendWifiConnectNum(I)V
    .locals 3

    const-string v0, "sendWifiConnectNum: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendWifiConnectNum: num = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiConnectNum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendWifiParamStatus(I)V
    .locals 3

    const-string v0, "sendWifiParamStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendWifiParamStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiParamStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendWifiPassword(ILjava/lang/String;)V
    .locals 4

    const-string v0, "sendWifiPassword: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendWifiPassword: status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiPassword(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendWifiPowerStatus(I)V
    .locals 3

    const-string v0, "sendWifiPowerStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "sendWifiPowerStatus: status = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiPowerStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendWifiSSID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "sendWifiSSID: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendWifiSSID: ssid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiSSID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setInterNetDataChannel(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "setInterNetDataChannel: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setInterNetDataChannel: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setNetWorkChannel(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setTboxEnvironment(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "setTboxEnvironment: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setTboxEnvironment: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setTboxEnvironment(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setTboxPropertyInfo(ILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "set tBox proId fail,connection : mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set tbox proId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "new var:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/tbox/ITSManager;->setTboxPropertyInfo(ILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setWifiPassword(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "setWifiPassword: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWifiPassword: pwd = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setWifiPassword(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "setWifiSSID: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWifiSSID: ssid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setWifiSSID(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setWifiStationPower(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "setWifiStationPower: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWifiStationPower: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiStationSwitch(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setWifiSwitchStatus(ILcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 4

    const-string v0, "setWifiSwitchStatus: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWifiSwitchStatus: power = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setWifiSwitch(ILcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public startDiagnostic(Ljava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    .locals 5

    const-string v0, "startDiagnostic: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string v2, "startDiagnostic: cmd = "

    const-string v3, ", function = "

    const-string v4, ", callback = "

    invoke-static {v2, p1, v3, p2, v4}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/tbox/ITSManager;->startDiagnostic(Ljava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public unRegistCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V
    .locals 4

    const-string v0, "unRegistCallListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegistCallListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public unRegistFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V
    .locals 4

    const-string v0, "unRegistFileListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegistFileListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxFileListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistTboxFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public unRegistNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V
    .locals 4

    const-string v0, "unRegistNotifyListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegistNotifyListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxNotifyListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public unRegistTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V
    .locals 4

    const-string v0, "unRegistTboxConnectListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegistTboxConnectListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxConnectListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public unRegistTboxInterNetDataChannelListener(Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unRegistTboxInterNetDataChannelListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegisTboxInterNetDataChannelListener(Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    const-string p1, "mInterface is Null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegistWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V
    .locals 4

    const-string v0, "unRegistWanSingalListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegistWanSingalListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxSingalListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public unregistDiagnosticListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V
    .locals 4

    const-string v0, "unregistDiagnosticListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregistDiagnosticListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mTboxDiagnosticLinsteners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unregistTboxDiagnosticInfoListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public unregisterRmtJobListener(Lcom/incall/serversdk/tbox/IRmtJobListener;)V
    .locals 4

    const-string v0, "unregisterRmtJobListener: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterRmtJobListener: listener = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mIRmtJobListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->mIRmtJobListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/tbox/TboxManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/tbox/ITSManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unregisterRmtJobListener(Lcom/incall/serversdk/tbox/IRmtJobListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
