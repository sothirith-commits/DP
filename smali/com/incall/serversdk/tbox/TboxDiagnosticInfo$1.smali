.class final Lcom/incall/serversdk/tbox/TboxDiagnosticInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;
    .locals 0

    new-instance p0, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;

    invoke-direct {p0, p1}, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;
    .locals 0

    new-array p0, p1, [Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/incall/serversdk/tbox/TboxDiagnosticInfo$1;->newArray(I)[Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;

    move-result-object p0

    return-object p0
.end method
