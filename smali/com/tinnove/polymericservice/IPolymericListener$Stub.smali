.class public abstract Lcom/tinnove/polymericservice/IPolymericListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/tinnove/polymericservice/IPolymericListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.polymericservice.IPolymericListener"

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

    const-string v0, "com.tinnove.polymericservice.IPolymericListener"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tinnove/polymericservice/base/model/WTResultModel;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;->createFromParcel(Landroid/os/Parcel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$psGetValue$1;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$psGetValue$1;->$alias:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->getRequestCost(Ljava/lang/String;)J

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleResultModel(Lcom/tinnove/polymericservice/base/model/WTResultModel;Ljava/lang/String;Z)V

    :goto_1
    return v1

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_3
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
