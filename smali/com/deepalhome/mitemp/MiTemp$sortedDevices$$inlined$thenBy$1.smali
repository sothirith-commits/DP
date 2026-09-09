.class public final Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_thenBy:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    check-cast p2, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p0, p2, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p1, p1, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_2
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    check-cast p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    iget p0, p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    iget p1, p2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_3
    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_7

    :cond_4
    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p0, p1, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v0

    :goto_4
    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    iget-object p0, p1, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    :goto_5
    check-cast p2, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p1, p2, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    move-object v0, p1

    :cond_7
    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    iget-object v0, p2, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    :goto_6
    invoke-static {p0, v0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_7
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
