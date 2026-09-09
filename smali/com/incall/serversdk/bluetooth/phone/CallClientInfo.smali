.class public Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreationElapsedMilli:J

.field private mId:I

.field private mInBandRing:Z

.field private mMultiParty:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoing:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mMultiParty:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mOutgoing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mCreationElapsedMilli:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mInBandRing:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getmCreationElapsedMilli()J
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mCreationElapsedMilli:J

    return-wide v0
.end method

.method public getmId()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mId:I

    return p0
.end method

.method public getmNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getmState()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mState:I

    return p0
.end method

.method public ismInBandRing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mInBandRing:Z

    return p0
.end method

.method public ismMultiParty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mMultiParty:Z

    return p0
.end method

.method public ismOutgoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mOutgoing:Z

    return p0
.end method

.method public setmCreationElapsedMilli(J)V
    .locals 0

    iput-wide p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mCreationElapsedMilli:J

    return-void
.end method

.method public setmId(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mId:I

    return-void
.end method

.method public setmInBandRing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mInBandRing:Z

    return-void
.end method

.method public setmMultiParty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mMultiParty:Z

    return-void
.end method

.method public setmNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setmOutgoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mOutgoing:Z

    return-void
.end method

.method public setmState(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mMultiParty:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mOutgoing:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mCreationElapsedMilli:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;->mInBandRing:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
