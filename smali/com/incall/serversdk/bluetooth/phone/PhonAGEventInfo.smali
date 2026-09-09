.class public Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private battery_level:I

.field private device_manufacturer_id:Ljava/lang/String;

.field private network_roaming:I

.field private network_singnal_strength:I

.field private network_status:I

.field private operator_name:Ljava/lang/String;

.field private subscriber_info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_status:I

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->battery_level:I

    const-string v1, " "

    iput-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->subscriber_info:Ljava/lang/String;

    iput-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->operator_name:Ljava/lang/String;

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_roaming:I

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_singnal_strength:I

    iput-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->device_manufacturer_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_status:I

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->battery_level:I

    const-string v1, " "

    iput-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->subscriber_info:Ljava/lang/String;

    iput-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->operator_name:Ljava/lang/String;

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_roaming:I

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_singnal_strength:I

    iput-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->device_manufacturer_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->battery_level:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->subscriber_info:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->operator_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_roaming:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_singnal_strength:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBattery_level()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->battery_level:I

    return p0
.end method

.method public getDevice_manufacturer_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->device_manufacturer_id:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork_roaming()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_roaming:I

    return p0
.end method

.method public getNetwork_singnal_strength()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_singnal_strength:I

    return p0
.end method

.method public getNetwork_status()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_status:I

    return p0
.end method

.method public getOperator_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->operator_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriber_info()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->subscriber_info:Ljava/lang/String;

    return-object p0
.end method

.method public setBattery_level(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->battery_level:I

    return-void
.end method

.method public setDevice_manufacturer_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->device_manufacturer_id:Ljava/lang/String;

    return-void
.end method

.method public setNetwork_roaming(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_roaming:I

    return-void
.end method

.method public setNetwork_singnal_strength(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_singnal_strength:I

    return-void
.end method

.method public setNetwork_status(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_status:I

    return-void
.end method

.method public setOperator_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->operator_name:Ljava/lang/String;

    return-void
.end method

.method public setSubscriber_info(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->subscriber_info:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->battery_level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->subscriber_info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->operator_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_roaming:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->network_singnal_strength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
