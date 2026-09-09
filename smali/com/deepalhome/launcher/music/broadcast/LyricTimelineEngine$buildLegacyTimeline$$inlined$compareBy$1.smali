.class public final Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$buildLegacyTimeline$$inlined$compareBy$1;
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
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    iget-wide p0, p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    iget-wide p1, p2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
