.class public Lcom/incall/serversdk/devices/UsbDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/devices/UsbDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/devices/UsbDevice$1;

    invoke-direct {v0}, Lcom/incall/serversdk/devices/UsbDevice$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/devices/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    iput-object p1, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceClass()I
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result p0

    return p0
.end method

.method public getDeviceId()I
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p0

    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceProtocol()I
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result p0

    return p0
.end method

.method public getDeviceSubclass()I
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result p0

    return p0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProductId()I
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    return p0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVendorId()I
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/UsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
