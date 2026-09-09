.class public final Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

.field public static final activeOverlays:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public static final conditions:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static volatile isStarted:Z

.field public static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final logcatListener:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$logcatListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    invoke-direct {v0}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->conditions:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->activeOverlays:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$logcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$logcatListener$1;

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->logcatListener:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$logcatListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyListeners(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static refreshLogcatListenerRegistration()V
    .locals 6

    sget-boolean v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->conditions:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    iget-object v3, v2, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;->showPatterns:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, v2, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;->hidePatterns:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$3;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$3;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toCollection(Lkotlin/sequences/Sequence;Ljava/util/AbstractCollection;)Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->logcatListener:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$logcatListener$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/LogcatUtil;->removeOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v2, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->logcatListener:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$logcatListener$1;

    new-instance v3, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v4}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v2, v3}, Lcom/deepalhome/launcher/util/LogcatUtil;->addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V

    return-void
.end method

.method public static setOverlayShowing(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->activeOverlays:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->notifyListeners(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
