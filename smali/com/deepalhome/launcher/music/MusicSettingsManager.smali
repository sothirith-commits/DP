.class public final Lcom/deepalhome/launcher/music/MusicSettingsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

.field public static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final lyricUpdateThrottleMs$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final normalOffset$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicSettingsManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager$lyricUpdateThrottleMs$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager$lyricUpdateThrottleMs$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->lyricUpdateThrottleMs$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager$normalOffset$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager$normalOffset$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->normalOffset$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnMusicSettingsChangedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static notifyChanged()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
