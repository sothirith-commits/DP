.class public final Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/music/MusicService;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicService;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;->this$0:Lcom/deepalhome/launcher/music/MusicService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final refreshMediaController()V
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;->this$0:Lcom/deepalhome/launcher/music/MusicService;

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicService;->listener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicService;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v3, Lcom/deepalhome/launcher/music/MusicService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_0
    :goto_0
    return-void
.end method
