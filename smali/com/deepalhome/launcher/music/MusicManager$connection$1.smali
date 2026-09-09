.class public final Lcom/deepalhome/launcher/music/MusicManager$connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p0, "name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "service"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    check-cast p2, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    sput-object p2, Lcom/deepalhome/launcher/music/MusicManager;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    new-instance p0, Lcom/deepalhome/launcher/music/MusicManager$connection$1$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;->this$0:Lcom/deepalhome/launcher/music/MusicService;

    iput-object p0, p1, Lcom/deepalhome/launcher/music/MusicService;->listener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/deepalhome/launcher/music/MusicService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/music/MusicService;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p0, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;->refreshMediaController()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p0, "name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;->stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaControllerCallback:Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;

    invoke-virtual {p0, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    sput-object p1, Lcom/deepalhome/launcher/music/MusicManager;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
