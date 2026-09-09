.class public Lcom/incall/serversdk/devices/VolumeRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/devices/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public type:I

.field u:Landroid/os/storage/VolumeRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/devices/VolumeRecord$1;

    invoke-direct {v0}, Lcom/incall/serversdk/devices/VolumeRecord$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/devices/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    iput-object v0, p0, Lcom/incall/serversdk/devices/VolumeRecord;->u:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/incall/serversdk/devices/VolumeRecord;->type:I

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/VolumeRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/devices/VolumeRecord;->u:Landroid/os/storage/VolumeRecord;

    const/4 p1, 0x1

    iput p1, p0, Lcom/incall/serversdk/devices/VolumeRecord;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/incall/serversdk/devices/VolumeRecord;->u:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/incall/serversdk/devices/VolumeRecord;->type:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
