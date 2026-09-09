.class public final Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final entries:Ljava/util/LinkedHashMap;

.field public final maxEntries:I

.field public final nowMs:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$broadcastLyricCandidateStore$1;I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$broadcastLyricCandidateStore$1;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$1;->INSTANCE:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$1;

    :cond_0
    const-string p2, "nowMs"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->nowMs:Lkotlin/jvm/functions/Function0;

    const/16 p1, 0x40

    iput p1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->maxEntries:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->entries:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static textMatchScore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final find(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;
    .locals 9

    const-string v0, "title"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "artist"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->entries:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->nowMs:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;

    iget-wide v3, v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    return-object v1

    :cond_2
    invoke-static {p3}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/high16 v0, -0x80000000

    move-object v2, v1

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;

    iget-object v4, v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    if-ne v4, p1, :cond_3

    iget-object v4, v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedTitle:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->textMatchScore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    move-object v4, v1

    goto :goto_5

    :cond_4
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedArtist:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p2, v5}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->textMatchScore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v0, :cond_8

    if-ne v4, v0, :cond_3

    if-eqz v2, :cond_8

    iget-wide v5, v2, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    iget-wide v7, v3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    cmp-long v5, v7, v5

    if-lez v5, :cond_3

    :cond_8
    move-object v2, v3

    move v0, v4

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    iget-object v1, v2, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    :cond_a
    return-object v1
.end method

.method public final recordPayload(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 10

    const-string v0, "title"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "artist"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p3, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->nowMs:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    move-object v0, p3

    move-object v1, p1

    move-object v4, p2

    move-object v5, v9

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;-><init>(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    iget-object p4, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->entries:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p4}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->maxEntries:I

    if-le p1, p2, :cond_2

    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
