.class public Lcom/incall/serversdk/interactive/media/CaMediaSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/interactive/media/CaMediaSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public playingId:I

.field public programName:Ljava/lang/String;

.field public singerName:Ljava/lang/String;

.field public songName:Ljava/lang/String;

.field public sourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/interactive/media/CaMediaSource$1;

    invoke-direct {v0}, Lcom/incall/serversdk/interactive/media/CaMediaSource$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->songName:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->singerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->programName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->songName:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->singerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->programName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->playingId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->sourceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->songName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->singerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->programName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "playingId"

    iget v2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->playingId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sourceType"

    iget v2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->sourceType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "songName"

    iget-object v2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "singerName"

    iget-object v2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->singerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "programName"

    iget-object v2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->playingId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->sourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->songName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->singerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/interactive/media/CaMediaSource;->programName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
