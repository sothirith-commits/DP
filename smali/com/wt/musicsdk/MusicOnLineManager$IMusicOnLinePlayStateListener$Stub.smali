.class public abstract Lcom/wt/musicsdk/MusicOnLineManager$IMusicOnLinePlayStateListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.wt.musicsdk.IMusicOnLinePlayStateListener"

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

    const-string v1, "com.wt.musicsdk.IMusicOnLinePlayStateListener"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$2;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$2;->this$0:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-static {p0, p1}, Lcom/wt/musicsdk/MusicOnLineManager;->-$$Nest$mnotifyPlayStateChanged(Lcom/wt/musicsdk/MusicOnLineManager;I)V

    return v2

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$2;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$2;->this$0:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentPlayState()I

    move-result p1

    invoke-static {p0, p1}, Lcom/wt/musicsdk/MusicOnLineManager;->-$$Nest$mnotifyPlayStateChanged(Lcom/wt/musicsdk/MusicOnLineManager;I)V

    return v2

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    check-cast p0, Lcom/wt/musicsdk/MusicOnLineManager$2;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$2;->this$0:Lcom/wt/musicsdk/MusicOnLineManager;

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mPlayStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Private play error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MusicPrivateBridge"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
