.class public Lcom/incall/serversdk/mediascanner/CAFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/mediascanner/CAFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileType:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/mediascanner/CAFile$1;

    invoke-direct {v0}, Lcom/incall/serversdk/mediascanner/CAFile$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/mediascanner/CAFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/mediascanner/CAFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/mediascanner/CAFile;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/incall/serversdk/mediascanner/CAFile;->fileType:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/mediascanner/CAFile;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/incall/serversdk/mediascanner/CAFile;->filePath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/incall/serversdk/mediascanner/CAFile;->fileType:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v1, p1, Lcom/incall/serversdk/mediascanner/CAFile;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/incall/serversdk/mediascanner/CAFile;

    iget-object p0, p0, Lcom/incall/serversdk/mediascanner/CAFile;->filePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/incall/serversdk/mediascanner/CAFile;->filePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/incall/serversdk/mediascanner/CAFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/mediascanner/CAFile;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/incall/serversdk/mediascanner/CAFile;->fileType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
