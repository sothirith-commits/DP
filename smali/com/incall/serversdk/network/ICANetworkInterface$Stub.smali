.class public abstract Lcom/incall/serversdk/network/ICANetworkInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/network/ICANetworkInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/network/ICANetworkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.network.ICANetworkInterface"

.field static final TRANSACTION_downloadFile:I = 0x7

.field static final TRANSACTION_getAppAuthStateByAppId:I = 0xc

.field static final TRANSACTION_getFoundationServiceState:I = 0x4

.field static final TRANSACTION_getIOVOpenHost:I = 0x14

.field static final TRANSACTION_getNetworkState:I = 0x3

.field static final TRANSACTION_getToken:I = 0x1

.field static final TRANSACTION_getUCSHost:I = 0x2

.field static final TRANSACTION_registNetworkStateListener:I = 0x11

.field static final TRANSACTION_requestAppAuthorise:I = 0xa

.field static final TRANSACTION_requestHeaderAndDownloadFileFromInCall:I = 0x13

.field static final TRANSACTION_requestInCallNetwork:I = 0x6

.field static final TRANSACTION_requestInCallNetworkWithParamsObject:I = 0x16

.field static final TRANSACTION_requestNet:I = 0x5

.field static final TRANSACTION_requestNetWithParamsObject:I = 0x15

.field static final TRANSACTION_requestSystemAuthorise:I = 0x9

.field static final TRANSACTION_setEnviroment:I = 0xb

.field static final TRANSACTION_showAutoDismissDialogWithStatus:I = 0xd

.field static final TRANSACTION_showAutoDismissDialogWithType:I = 0xe

.field static final TRANSACTION_showConfirmDialogWithStatus:I = 0xf

.field static final TRANSACTION_showConfirmDialogWithType:I = 0x10

.field static final TRANSACTION_unregistNetworkStateListener:I = 0x12

.field static final TRANSACTION_uploadFile:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.network.ICANetworkInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/ICANetworkInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.network.ICANetworkInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/network/ICANetworkInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/network/ICANetworkInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/network/ICANetworkInterface;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/network/ICANetworkInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/network/ICANetworkInterface;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/network/ICANetworkInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/network/ICANetworkInterface;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.incall.serversdk.network.ICANetworkInterface"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;

    :cond_0
    invoke-interface {p0, p1, v0}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestInCallNetworkWithParamsObject(Lcom/incall/serversdk/network/callback/IRequestCallBack;Lcom/incall/serversdk/network/bean/NetworkRequestParams;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;

    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestNetWithParamsObject(Lcom/incall/serversdk/network/callback/IRequestCallBack;Lcom/incall/serversdk/network/bean/NetworkRequestParams;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/network/ICANetworkInterface;->getIOVOpenHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestHeaderAndDownloadFileFromInCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/INetworkStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/INetworkStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->unregistNetworkStateListener(Lcom/incall/serversdk/network/callback/INetworkStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/INetworkStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/INetworkStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->registNetworkStateListener(Lcom/incall/serversdk/network/callback/INetworkStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/incall/serversdk/network/define/DialogType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/incall/serversdk/network/define/DialogType;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->showConfirmDialogWithType(Lcom/incall/serversdk/network/define/DialogType;Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/network/ICANetworkInterface;->showConfirmDialogWithStatus(Ljava/lang/String;Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/incall/serversdk/network/define/DialogType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/incall/serversdk/network/define/DialogType;

    :cond_3
    invoke-interface {p0, v0}, Lcom/incall/serversdk/network/ICANetworkInterface;->showAutoDismissDialogWithType(Lcom/incall/serversdk/network/define/DialogType;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->showAutoDismissDialogWithStatus(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->getAppAuthStateByAppId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->setEnviroment(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/IAppAuthCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IAppAuthCallBack;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    sget-object p4, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;

    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestAppAuthorise(Lcom/incall/serversdk/network/callback/IAppAuthCallBack;Lcom/incall/serversdk/network/bean/AppAuthRequestParam;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/network/callback/ISystemAuthCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/ISystemAuthCallBack;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestSystemAuthorise(Lcom/incall/serversdk/network/callback/ISystemAuthCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/incall/serversdk/network/ICANetworkInterface;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/incall/serversdk/network/ICANetworkInterface;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestInCallNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/network/callback/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/network/callback/IRequestCallBack;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/incall/serversdk/network/ICANetworkInterface;->requestNet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/network/ICANetworkInterface;->getFoundationServiceState()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/network/ICANetworkInterface;->getNetworkState()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/network/ICANetworkInterface;->getUCSHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/network/ICANetworkInterface;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
