.class public Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;
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
            "Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animID:I

.field public animType:I

.field public content:Ljava/lang/String;

.field public hasOptions:I

.field public iconId:I

.field public index:I

.field public maxDisplayTime:I

.field public optionTxt1:Ljava/lang/String;

.field public optionTxt2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult$1;

    invoke-direct {v0}, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt1:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt1:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->animID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->hasOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->index:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->animType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->maxDisplayTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->iconId:I

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
    const-string v1, "animID"

    iget v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->animID:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content"

    iget-object v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "options"

    iget v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->hasOptions:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "optionTxt1"

    iget-object v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionTxt2"

    iget-object v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "index"

    iget v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "animType"

    iget v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->animType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxDisplayTime"

    iget v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->maxDisplayTime:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "iconId"

    iget v2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->iconId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

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

    iget p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->animID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->hasOptions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->optionTxt2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->animType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->maxDisplayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/incall/serversdk/interactive/ai/CaAiSmartResult;->iconId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
