.class public abstract Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.mediascanner.IMediaScannerCallback"

.field static final TRANSACTION_postStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.mediascanner.IMediaScannerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.mediascanner.IMediaScannerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;

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

    const-string v0, "com.incall.serversdk.mediascanner.IMediaScannerCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;->postStatus(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
