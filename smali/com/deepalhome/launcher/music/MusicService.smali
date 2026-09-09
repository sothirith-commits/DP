.class public final Lcom/deepalhome/launcher/music/MusicService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/music/MusicService$Companion;


# instance fields
.field public final binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

.field public listener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field public final mediaSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/MusicService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/MusicService$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicService;->Companion:Lcom/deepalhome/launcher/music/MusicService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;-><init>(Lcom/deepalhome/launcher/music/MusicService;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicService;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.session.MediaSessionManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicService;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicService;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    const-string v3, "MusicService"

    invoke-direct {v1, v3, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1e240

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
