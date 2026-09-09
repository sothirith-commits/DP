.class public final Lcom/tinnove/renderclient/CocosDataEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final sServiceFullClassNameListenerMap:Ljava/util/HashMap;


# instance fields
.field public final mClientUuids:[Ljava/lang/String;

.field public mIsDestroyed:Z

.field public final mIsDispatching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mScriptEventListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mServiceFullClassName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$monScriptEvent(Lcom/tinnove/renderclient/CocosDataEventManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mClientUuids:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    array-length v3, v0

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_2
    move p1, v2

    :cond_3
    iget-object v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mScriptEventListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mIsDispatching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v2, p1

    :goto_2
    return v2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tinnove/renderclient/CocosDataEventManager;->sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tinnove/renderclient/CocosDataEventManager;->sServiceFullClassNameListenerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/tinnove/renderclient/CocosDataEventManager$ClientListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tinnove/renderclient/CocosDataEventManager$ClientListener;-><init>(I)V

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sScriptEventListener:Lcom/tinnove/renderclient/CocosDataEventManager$ClientListener;

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sScriptReturnListener:Lcom/tinnove/renderclient/CocosDataEventManager$ClientListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mScriptEventListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mIsDestroyed:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mIsDispatching:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mServiceFullClassName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mClientUuids:[Ljava/lang/String;

    sget-object v0, Lcom/tinnove/renderclient/CocosDataEventManager;->sServiceFullClassNameListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/tinnove/renderclient/CocosDataEventManager$1;

    invoke-direct {v1, p0}, Lcom/tinnove/renderclient/CocosDataEventManager$1;-><init>(Lcom/tinnove/renderclient/CocosDataEventManager;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final callScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sServiceNameBinderFactoryMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mServiceFullClassName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;

    if-eqz p0, :cond_0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    if-eqz p0, :cond_0

    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;->sendToScript(Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final finalize()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-boolean v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mIsDestroyed:Z

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mScriptEventListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/tinnove/renderclient/CocosDataEventManager;->sServiceFullClassNameListenerMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mServiceFullClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tinnove/renderclient/CocosDataEventManager;

    if-ne v3, p0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tinnove/renderclient/CocosDataEventManager;->sServiceFullClassNameListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mServiceFullClassName:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tinnove/renderclient/CocosDataEventManager;->mIsDestroyed:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :goto_3
    return-void
.end method
