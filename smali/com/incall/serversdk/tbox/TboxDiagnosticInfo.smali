.class public Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fixed:I

.field private reason:I

.field private status:I

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFixed()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    return p0
.end method

.method public getReason()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    return p0
.end method

.method public getTotal()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    return p0
.end method

.method public setFixed(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    return-void
.end method

.method public setReason(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TboxDiagnosticInfo{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->reason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->total:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;->fixed:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
