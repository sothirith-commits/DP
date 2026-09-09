.class final Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/network/bean/AppAuthRequestParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/incall/serversdk/network/bean/AppAuthRequestParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/incall/serversdk/network/bean/AppAuthRequestParam;
    .locals 1

    new-instance p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;-><init>(Landroid/os/Parcel;Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/incall/serversdk/network/bean/AppAuthRequestParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/incall/serversdk/network/bean/AppAuthRequestParam;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/incall/serversdk/network/bean/AppAuthRequestParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;->newArray(I)[Lcom/incall/serversdk/network/bean/AppAuthRequestParam;

    move-result-object p0

    return-object p0
.end method
