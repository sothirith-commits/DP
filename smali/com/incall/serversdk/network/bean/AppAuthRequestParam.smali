.class public Lcom/incall/serversdk/network/bean/AppAuthRequestParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/network/bean/AppAuthRequestParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appid:Ljava/lang/String;

.field private itemid:Ljava/lang/String;

.field private timestamp:J

.field private vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;

    invoke-direct {v0}, Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->appid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->vid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->itemid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/incall/serversdk/network/bean/AppAuthRequestParam$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public getItemid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->itemid:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->timestamp:J

    return-wide v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->appid:Ljava/lang/String;

    return-void
.end method

.method public setItemid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->itemid:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->timestamp:J

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->vid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->appid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->vid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->itemid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/incall/serversdk/network/bean/AppAuthRequestParam;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
