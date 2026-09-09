.class public abstract Ln8/IPCPushMessageObserver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ln8/IPCPushMessageObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.navi.skill.observer.IPCPushMessageObserver"

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

    const-string v0, "com.tinnove.navi.skill.observer.IPCPushMessageObserver"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received PushMessage.onPushMessage payload="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received PushMessage.onPushNotification payload="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received PushMessage.onPushCommand payload="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v1

    :cond_2
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method