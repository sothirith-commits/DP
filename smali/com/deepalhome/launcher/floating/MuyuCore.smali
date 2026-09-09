.class public final Lcom/deepalhome/launcher/floating/MuyuCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

.field public static isLoaded:Z

.field public static final meritMilestones:Ljava/util/Set;

.field public static final onMeritChangedListeners:Ljava/util/ArrayList;

.field public static final onMilestoneReachedListeners:Ljava/util/ArrayList;

.field public static soundId:I

.field public static soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepalhome/launcher/floating/MuyuCore;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/MuyuCore;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuCore;->meritMilestones:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMeritChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMilestoneReachedListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
