.class public abstract Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineProgressListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.wt.musicsdk.IMusicOnLineProgressListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const v0, 0x5f4e5446

    const-string v1, "com.wt.musicsdk.IMusicOnLineProgressListener"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_0
    if-ne p1, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$3;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$3;->this$0:Lcom/wt/musicsdk/MusicOnLineManager;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mProgressListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    const-string v1, "this$0"

    iget-object v0, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;

    move-object v3, v1

    move-object v4, v0

    move-wide v5, p3

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;JJ)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
