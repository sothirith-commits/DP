.class public final Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil$logcatLocationListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string p0, "log"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/LocationUtil;->access$shouldInspectLog(Lcom/deepalhome/launcher/util/LocationUtil;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/LocationUtil;->access$parseCoordinateFromLog(Lcom/deepalhome/launcher/util/LocationUtil;Ljava/lang/String;)Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    if-eqz p0, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/LocationUtil;->updateCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
