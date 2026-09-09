.class public abstract Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLineMusicListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.wt.musicsdk.IMusicOnLineMusicListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const-string v1, "com.wt.musicsdk.IMusicOnLineMusicListener"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_0
    if-ne p1, v2, :cond_4

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/wt/musicsdk/MusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wt/musicsdk/MusicInfo;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$1;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$1;->this$0:Lcom/wt/musicsdk/MusicOnLineManager;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mMusicChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    if-eqz p2, :cond_2

    const-string p3, "this$0"

    iget-object p2, p2, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;

    invoke-direct {p3, p2, p1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Lcom/wt/musicsdk/MusicInfo;)V

    invoke-virtual {p2, p3}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p0, Lcom/wt/musicsdk/MusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    return v2

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
