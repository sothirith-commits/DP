.class public Lcom/incall/serversdk/mediascanner/CAMediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/mediascanner/CAMediaInfo$AudioExtra;,
        Lcom/incall/serversdk/mediascanner/CAMediaInfo$PictureExtra;,
        Lcom/incall/serversdk/mediascanner/CAMediaInfo$VideoExtra;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/mediascanner/CAMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ID:I

.field public audioExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$AudioExtra;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pictureExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$PictureExtra;

.field public type:J

.field public videoExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$VideoExtra;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/mediascanner/CAMediaInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->type:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->path:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->ID:I

    const-class v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo$PictureExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo$PictureExtra;

    iput-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->pictureExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$PictureExtra;

    const-class v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo$AudioExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo$AudioExtra;

    iput-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->audioExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$AudioExtra;

    const-class v0, Lcom/incall/serversdk/mediascanner/CAMediaInfo$VideoExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/incall/serversdk/mediascanner/CAMediaInfo$VideoExtra;

    iput-object p1, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->videoExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$VideoExtra;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->type:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->ID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->pictureExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$PictureExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->audioExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$AudioExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/incall/serversdk/mediascanner/CAMediaInfo;->videoExtra:Lcom/incall/serversdk/mediascanner/CAMediaInfo$VideoExtra;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
