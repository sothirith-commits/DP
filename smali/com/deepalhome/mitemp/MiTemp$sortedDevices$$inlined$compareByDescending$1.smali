.class public final Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$compareByDescending$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p0, p2, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    sget-object p2, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p2, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p1, p1, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-ne p1, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
