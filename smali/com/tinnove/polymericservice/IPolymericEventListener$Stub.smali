.class public abstract Lcom/tinnove/polymericservice/IPolymericEventListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/tinnove/polymericservice/IPolymericEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.polymericservice.IPolymericEventListener"

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

    const-string v0, "com.tinnove.polymericservice.IPolymericEventListener"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    sget-object p3, Lcom/tinnove/polymericservice/base/model/WTResultModel;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;->createFromParcel(Landroid/os/Parcel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x44e

    if-ne p0, p3, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sput-wide p3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastEventAt:J

    const/16 p0, 0x8ee

    if-eq p1, p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p2, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->normalizeFrontAirModeRaw(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda5;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p4, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleResultModel(Lcom/tinnove/polymericservice/base/model/WTResultModel;Ljava/lang/String;Z)V

    :goto_1
    return v1

    :cond_5
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
