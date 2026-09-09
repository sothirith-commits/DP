.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$next$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$next$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$next$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->iMusicOnLineControlInterface:Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.wt.musicsdk.IMusicOnLineControlInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineControlInterface$Proxy;->remote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "MusicOnLineManager"

    const-string v1, "next failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
