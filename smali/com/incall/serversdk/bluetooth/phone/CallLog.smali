.class public Lcom/incall/serversdk/bluetooth/phone/CallLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/bluetooth/phone/CallLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Name:Ljava/lang/String;

.field private date:J

.field private phoneNumber:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/bluetooth/phone/CallLog$1;

    invoke-direct {v0}, Lcom/incall/serversdk/bluetooth/phone/CallLog$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->type:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->date:J

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->date:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->type:I

    return p0
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->date:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallLog   >>   CallLog : name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " || phoneNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " || type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " || date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " || time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->time:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->Name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/CallLog;->time:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
