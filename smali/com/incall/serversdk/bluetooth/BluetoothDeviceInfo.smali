.class public Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private alias:Ljava/lang/String;

.field private aliasName:Ljava/lang/String;

.field private batteryLevel:I

.field private bondState:I

.field private iapState:I

.field private messageAccessPermission:I

.field private name:Ljava/lang/String;

.field private phonebookAccessPermission:I

.field private simAccessPermission:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->alias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->aliasName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->batteryLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->bondState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->phonebookAccessPermission:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->messageAccessPermission:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->simAccessPermission:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->iapState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    return-object p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->aliasName:Ljava/lang/String;

    return-object p0
.end method

.method public getBatteryLevel()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->batteryLevel:I

    return p0
.end method

.method public getBondState()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->bondState:I

    return p0
.end method

.method public getIapState()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->iapState:I

    return p0
.end method

.method public getMessageAccessPermission()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->messageAccessPermission:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPhonebookAccessPermission()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->phonebookAccessPermission:I

    return p0
.end method

.method public getSimAccessPermission()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->simAccessPermission:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->type:I

    return p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->alias:Ljava/lang/String;

    return-void
.end method

.method public setAliasName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->aliasName:Ljava/lang/String;

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->batteryLevel:I

    return-void
.end method

.method public setBondState(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->bondState:I

    return-void
.end method

.method public setIapState(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->iapState:I

    return-void
.end method

.method public setMessageAccessPermission(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->messageAccessPermission:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhonebookAccessPermission(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->phonebookAccessPermission:I

    return-void
.end method

.method public setSimAccessPermission(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->simAccessPermission:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->alias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->batteryLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->bondState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->phonebookAccessPermission:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->messageAccessPermission:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->simAccessPermission:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->iapState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
