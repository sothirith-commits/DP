.class public Lcom/incall/serversdk/network/bean/NetworkRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/network/bean/NetworkRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bodyDataType:Ljava/lang/String;

.field private bodyParams:Ljava/lang/Object;

.field private headParams:Ljava/util/Map;

.field private methodType:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$1;

    invoke-direct {v0}, Lcom/incall/serversdk/network/bean/NetworkRequestParams$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->methodType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyDataType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->headParams:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyParams:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/incall/serversdk/network/bean/NetworkRequestParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->access$000(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->access$100(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->methodType:Ljava/lang/String;

    invoke-static {p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->access$200(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyDataType:Ljava/lang/String;

    invoke-static {p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->access$300(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->headParams:Ljava/util/Map;

    invoke-static {p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->access$400(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyParams:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;Lcom/incall/serversdk/network/bean/NetworkRequestParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams;-><init>(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBodyDataType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyDataType:Ljava/lang/String;

    return-object p0
.end method

.method public getBodyParams()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyParams:Ljava/lang/Object;

    return-object p0
.end method

.method public getHeadParams()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->headParams:Ljava/util/Map;

    return-object p0
.end method

.method public getMethodType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->methodType:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setBodyDataType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyDataType:Ljava/lang/String;

    return-void
.end method

.method public setBodyParams(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyParams:Ljava/lang/Object;

    return-void
.end method

.method public setHeadParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->headParams:Ljava/util/Map;

    return-void
.end method

.method public setMethodType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->methodType:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OKHttpRequestParams{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', methodType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->methodType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bodyDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->headParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyParams:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->methodType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->headParams:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;->bodyParams:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
