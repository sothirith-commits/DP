.class public final Lcom/deepalhome/launcher/util/CarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

.field public static final DEEPAL:Ljava/util/LinkedHashSet;

.field public static final EZ6_DEVICES:Ljava/util/Set;

.field public static final S05_DEVICES:Ljava/util/Set;

.field public static final S07_DEVICES:Ljava/util/Set;

.field public static final S7_DEVICES:Ljava/util/Set;

.field public static final SL03_DEVICES:Ljava/util/Set;

.field public static final device$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/util/CarUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/CarUtil$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;->INSTANCE:Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/CarUtil;->device$delegate:Lkotlin/SynchronizedLazyImpl;

    const-string v0, "solvang"

    const-string v1, "s7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/CarUtil;->S7_DEVICES:Ljava/util/Set;

    const-string v1, "bigsur"

    const-string v2, "sl03"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/util/CarUtil;->SL03_DEVICES:Ljava/util/Set;

    const-string v2, "parkcity"

    const-string v3, "s07"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/deepalhome/launcher/util/CarUtil;->S07_DEVICES:Ljava/util/Set;

    const-string v3, "huron"

    const-string v4, "ez6"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarUtil;->EZ6_DEVICES:Ljava/util/Set;

    const-string v4, "daoxiang"

    const-string v5, "msmnile_gvmq"

    const-string v6, "s05"

    filled-new-array {v5, v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/deepalhome/launcher/util/CarUtil;->S05_DEVICES:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/CarUtil;->DEEPAL:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
