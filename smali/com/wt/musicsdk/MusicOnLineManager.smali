.class public final Lcom/wt/musicsdk/MusicOnLineManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static volatile musicOnLineManager:Lcom/wt/musicsdk/MusicOnLineManager;


# instance fields
.field public final deathRecipient:Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;

.field public hasInit:Z

.field public iBinder:Landroid/os/IBinder;

.field public iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMusicChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mPlayStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mProgressListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mServiceConnectedCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final remoteMusicListener:Lcom/wt/musicsdk/MusicOnLineManager$1;

.field public remoteMusicListenerRegistered:Z

.field public final remotePlayStateListener:Lcom/wt/musicsdk/MusicOnLineManager$2;

.field public remotePlayStateListenerRegistered:Z

.field public final remoteProgressListener:Lcom/wt/musicsdk/MusicOnLineManager$3;

.field public remoteProgressListenerRegistered:Z

.field public serviceConnected:Z


# direct methods
.method public static -$$Nest$mnotifyPlayStateChanged(Lcom/wt/musicsdk/MusicOnLineManager;I)V
    .locals 2

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mPlayStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-direct {v1, v0, p1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;I)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mServiceConnectedCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mMusicChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mPlayStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mProgressListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda0;-><init>(Lcom/wt/musicsdk/MusicOnLineManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;-><init>(Lcom/wt/musicsdk/MusicOnLineManager;)V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->deathRecipient:Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/wt/musicsdk/MusicOnLineManager$1;

    invoke-direct {v0, p0}, Lcom/wt/musicsdk/MusicOnLineManager$1;-><init>(Lcom/wt/musicsdk/MusicOnLineManager;)V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListener:Lcom/wt/musicsdk/MusicOnLineManager$1;

    new-instance v0, Lcom/wt/musicsdk/MusicOnLineManager$2;

    invoke-direct {v0, p0}, Lcom/wt/musicsdk/MusicOnLineManager$2;-><init>(Lcom/wt/musicsdk/MusicOnLineManager;)V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListener:Lcom/wt/musicsdk/MusicOnLineManager$2;

    new-instance v0, Lcom/wt/musicsdk/MusicOnLineManager$3;

    invoke-direct {v0, p0}, Lcom/wt/musicsdk/MusicOnLineManager$3;-><init>(Lcom/wt/musicsdk/MusicOnLineManager;)V

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListener:Lcom/wt/musicsdk/MusicOnLineManager$3;

    return-void
.end method


# virtual methods
.method public final bindServiceAsCurrentUser(Landroid/content/Intent;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MusicOnLineManager"

    const-string v2, "resolve current user failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    :cond_1
    iget-object v2, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p0, v1, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final clearRemote()V
    .locals 4

    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    const/4 v1, 0x0

    const-string v2, "MusicOnLineManager"

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListenerRegistered:Z

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListener:Lcom/wt/musicsdk/MusicOnLineManager$1;

    check-cast v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-virtual {v0, v3}, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->unRegisterMusicOnLineMusicListener(Lcom/wt/musicsdk/MusicOnLineManager$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListenerRegistered:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "unRegisterMusicOnLineMusicListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListenerRegistered:Z

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListenerRegistered:Z

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListener:Lcom/wt/musicsdk/MusicOnLineManager$2;

    check-cast v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-virtual {v0, v3}, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->unRegisterMusicOnLinePlayStateListener(Lcom/wt/musicsdk/MusicOnLineManager$2;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListenerRegistered:Z

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    const-string v3, "unRegisterMusicOnLinePlayStateListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_4
    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListenerRegistered:Z

    throw v0

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListenerRegistered:Z

    if-nez v3, :cond_4

    goto :goto_8

    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListener:Lcom/wt/musicsdk/MusicOnLineManager$3;

    check-cast v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-virtual {v0, v3}, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->unRegisterMusicOnLineProgressListener(Lcom/wt/musicsdk/MusicOnLineManager$3;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListenerRegistered:Z

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_5
    const-string v3, "unRegisterMusicOnLineProgressListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :goto_7
    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListenerRegistered:Z

    throw v0

    :cond_5
    :goto_8
    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    :try_start_6
    iget-object v2, p0, Lcom/wt/musicsdk/MusicOnLineManager;->deathRecipient:Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iBinder:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z

    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    invoke-virtual {p0, v1}, Lcom/wt/musicsdk/MusicOnLineManager;->notifyServiceConnectChanged(Z)V

    return-void
.end method

.method public final getCurrentMusic()Lcom/wt/musicsdk/MusicInfo;
    .locals 3

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->getCurrentMusic()Lcom/wt/musicsdk/MusicInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "MusicOnLineManager"

    const-string v2, "getCurrentMusic failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final getCurrentPlayState()I
    .locals 5

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->remote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "MusicOnLineManager"

    const-string v2, "getCurrentPlayState failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final getCurrentProgress()J
    .locals 6

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->remote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {p0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    int-to-long v0, p0

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v2, "MusicOnLineManager"

    const-string v3, "getCurrentProgress failed"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public final notifyServiceConnectChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mServiceConnectedCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onError$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onError$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindingDied: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicOnLineManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->clearRemote()V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/wt/musicsdk/MusicOnLineManager;->scheduleBindService(J)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNullBinding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicOnLineManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->clearRemote()V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/wt/musicsdk/MusicOnLineManager;->scheduleBindService(J)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicOnLineManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iBinder:Landroid/os/IBinder;

    sget p1, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v1, p1, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-direct {p1, p2}, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    iget-object p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->registerRemoteMusicListenerIfNeeded()V

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->registerRemotePlayStateListenerIfNeeded()V

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->registerRemoteProgressListenerIfNeeded()V

    iget-boolean p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->deathRecipient:Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "linkToDeath failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    invoke-virtual {p0, p1}, Lcom/wt/musicsdk/MusicOnLineManager;->notifyServiceConnectChanged(Z)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicOnLineManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->clearRemote()V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/wt/musicsdk/MusicOnLineManager;->scheduleBindService(J)V

    return-void
.end method

.method public final registerRemoteMusicListenerIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mMusicChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListenerRegistered:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListener:Lcom/wt/musicsdk/MusicOnLineManager$1;

    check-cast v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->remote:Landroid/os/IBinder;

    const/16 v1, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteMusicListenerRegistered:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const-string v0, "MusicOnLineManager"

    const-string v1, "registerMusicOnLineMusicListener failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerRemotePlayStateListenerIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mPlayStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListenerRegistered:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListener:Lcom/wt/musicsdk/MusicOnLineManager$2;

    check-cast v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->remote:Landroid/os/IBinder;

    const/16 v1, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remotePlayStateListenerRegistered:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const-string v0, "MusicOnLineManager"

    const-string v1, "registerMusicOnLinePlayStateListener failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerRemoteProgressListenerIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mProgressListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListenerRegistered:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListener:Lcom/wt/musicsdk/MusicOnLineManager$3;

    check-cast v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, v0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->remote:Landroid/os/IBinder;

    const/16 v1, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->remoteProgressListenerRegistered:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const-string v0, "MusicOnLineManager"

    const-string v1, "registerMusicOnLineProgressListener failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final scheduleBindService(J)V
    .locals 1

    iget-object v0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
