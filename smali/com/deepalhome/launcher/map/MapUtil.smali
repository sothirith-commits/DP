.class public final Lcom/deepalhome/launcher/map/MapUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

.field public static final deepalMapPackages:Ljava/util/Set;

.field public static final systemOverlaySensitiveDeepalMapPackages:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/map/MapUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/map/MapUtil$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    const-string v0, "com.baidu.naviauto.deepal"

    const-string v1, "com.baidu.naviauto"

    const-string v2, "com.tencent.wecarnavi.deepal"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/map/MapUtil;->deepalMapPackages:Ljava/util/Set;

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/map/MapUtil;->systemOverlaySensitiveDeepalMapPackages:Ljava/util/Set;

    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;->INSTANCE:Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
