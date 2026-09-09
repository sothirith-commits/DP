.class public abstract Lcom/tinnove/polymericservice/IPolymericService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/tinnove/polymericservice/IPolymericService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.polymericservice.IPolymericService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.tinnove.polymericservice.IPolymericService"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tinnove/polymericservice/base/model/WTRequestModel;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    invoke-direct {v0, p2}, Lcom/tinnove/polymericservice/base/model/WTRequestModel;-><init>(Landroid/os/Parcel;)V

    :cond_0
    invoke-interface {p0, v0}, Lcom/tinnove/polymericservice/IPolymericService;->callMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Lcom/tinnove/polymericservice/base/model/WTResultModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tinnove/polymericservice/base/model/WTRequestModel;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    invoke-direct {p1, p2}, Lcom/tinnove/polymericservice/base/model/WTRequestModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    const-string p3, "com.tinnove.polymericservice.IPolymericListener"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_6

    instance-of p4, p3, Lcom/tinnove/polymericservice/IPolymericListener;

    if-nez p4, :cond_5

    goto :goto_3

    :cond_5
    check-cast p3, Lcom/tinnove/polymericservice/IPolymericListener;

    :goto_2
    move-object v0, p3

    goto :goto_4

    :cond_6
    :goto_3
    new-instance p3, Lcom/tinnove/polymericservice/IPolymericListener$Stub$Proxy;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p2, p3, Lcom/tinnove/polymericservice/IPolymericListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_2

    :goto_4
    invoke-interface {p0, p1, v0}, Lcom/tinnove/polymericservice/IPolymericService;->asynCallMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;Lcom/tinnove/polymericservice/IPolymericListener;)V

    return v2

    :cond_7
    const/4 v3, 0x3

    const-string v4, "com.tinnove.polymericservice.IPolymericEventListener"

    if-ne p1, v3, :cond_b

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/tinnove/polymericservice/IPolymericEventListener;

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    check-cast v0, Lcom/tinnove/polymericservice/IPolymericEventListener;

    goto :goto_6

    :cond_a
    :goto_5
    new-instance v0, Lcom/tinnove/polymericservice/IPolymericEventListener$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/tinnove/polymericservice/IPolymericEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_6
    invoke-interface {p0, p1, p3, p4, v0}, Lcom/tinnove/polymericservice/IPolymericService;->registerEventListener(IIILcom/tinnove/polymericservice/IPolymericEventListener;)V

    return v2

    :cond_b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {p1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_e

    instance-of p2, p1, Lcom/tinnove/polymericservice/IPolymericEventListener;

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    check-cast p1, Lcom/tinnove/polymericservice/IPolymericEventListener;

    :cond_e
    :goto_7
    invoke-interface {p0}, Lcom/tinnove/polymericservice/IPolymericService;->unRegisterEventListener()V

    return v2

    :cond_f
    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2
.end method
