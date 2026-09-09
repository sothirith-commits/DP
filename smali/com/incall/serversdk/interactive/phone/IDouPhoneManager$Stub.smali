.class public abstract Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.interactive.phone.IDouPhoneManager"

.field static final TRANSACTION_setCallInfo:I = 0x5

.field static final TRANSACTION_setHandStatus:I = 0x4

.field static final TRANSACTION_setMicMuteStatus:I = 0x3

.field static final TRANSACTION_setPhoneStatus:I = 0x2

.field static final TRANSACTION_setPhoneTime:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.interactive.phone.IDouPhoneManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.interactive.phone.IDouPhoneManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.incall.serversdk.interactive.phone.IDouPhoneManager"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/incall/serversdk/interactive/phone/CaCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/incall/serversdk/interactive/phone/CaCallInfo;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;->setCallInfo(Lcom/incall/serversdk/interactive/phone/CaCallInfo;)Z

    move-result p0

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;->setHandStatus(I)Z

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;->setMicMuteStatus(I)Z

    move-result p0

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;->setPhoneStatus(I)Z

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;->setPhoneTime(I)Z

    move-result p0

    goto :goto_1

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2
.end method
