.class public abstract Lcom/openos/virtualcar/IVirtualCarPropertyEventListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/openos/virtualcar/IVirtualCarPropertyEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.openos.virtualcar.IVirtualCarPropertyEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/openos/virtualcar/IVirtualCarPropertyEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.openos.virtualcar.IVirtualCarPropertyEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/openos/virtualcar/IVirtualCarPropertyEventListener;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/openos/virtualcar/IVirtualCarPropertyEventListener;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/openos/virtualcar/IVirtualCarPropertyEventListener$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/openos/virtualcar/IVirtualCarPropertyEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const-string v0, "VirtualManager"

    const-string v1, "service onChangeEvent mEventHandle is null"

    const-string v2, "onChangeEvent  VirtualCarPropertyManager is null"

    const/4 v3, 0x1

    const-string v4, "com.openos.virtualcar.IVirtualCarPropertyEventListener"

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/openos/virtualcar/entity/VirtualCarValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    iget-object p2, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;->this$0:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mEventHandle:Lcom/openos/virtualcar/VirtualCarPropertyManager$1;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$1;->mHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcom/openos/virtualcar/utils/WTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x3

    if-ne p1, v5, :cond_6

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/openos/virtualcar/entity/VirtualCarValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openos/virtualcar/entity/VirtualCarValue;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    check-cast p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    iget-object p2, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;->this$0:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mEventHandle:Lcom/openos/virtualcar/VirtualCarPropertyManager$1;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$1;->mHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v0, v1}, Lcom/openos/virtualcar/utils/WTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3
.end method
