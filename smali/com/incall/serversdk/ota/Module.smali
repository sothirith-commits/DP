.class public Lcom/incall/serversdk/ota/Module;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/ota/Module;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHardPartnumber:Ljava/lang/String;

.field private mHardVersion:Ljava/lang/String;

.field private mSoftPartnumber:Ljava/lang/String;

.field private mSoftVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/ota/Module$1;

    invoke-direct {v0}, Lcom/incall/serversdk/ota/Module$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/ota/Module;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/ota/Module;->mHardPartnumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/ota/Module;->mHardVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/ota/Module;->mSoftPartnumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/ota/Module;->mSoftVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/ota/Module;->mHardPartnumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/incall/serversdk/ota/Module;->mHardVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/incall/serversdk/ota/Module;->mSoftPartnumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/incall/serversdk/ota/Module;->mSoftVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHardPartnumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/Module;->mHardPartnumber:Ljava/lang/String;

    return-object p0
.end method

.method public getHardVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/Module;->mHardVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSoftPartnumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/Module;->mSoftPartnumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSoftVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/Module;->mSoftVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setHardPartnumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/Module;->mHardPartnumber:Ljava/lang/String;

    return-void
.end method

.method public setHardVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/Module;->mHardVersion:Ljava/lang/String;

    return-void
.end method

.method public setSoftPartnumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/Module;->mSoftPartnumber:Ljava/lang/String;

    return-void
.end method

.method public setSoftVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/Module;->mSoftVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Module{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/incall/serversdk/ota/Module;->mHardPartnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/incall/serversdk/ota/Module;->mHardVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/incall/serversdk/ota/Module;->mSoftPartnumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/ota/Module;->mSoftVersion:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/incall/serversdk/ota/Module;->mHardPartnumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/ota/Module;->mHardVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/ota/Module;->mSoftPartnumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/ota/Module;->mSoftVersion:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
