.class public final Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

.field public static volatile defaultParser:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;

.field public static volatile defaultParserDisabled:Z

.field public static volatile ez6Parser:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;

.field public static volatile ez6ParserDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableParser(Ljava/lang/Throwable;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sput-object v1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6Parser:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;

    sput-boolean v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6ParserDisabled:Z

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParser:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;

    sput-boolean v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParserDisabled:Z

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "EZ6"

    goto :goto_1

    :cond_1
    const-string p1, "default"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " vehicle parser: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VehicleLogParserManager"

    invoke-static {v0, p1, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->w$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseWithParser(Lcom/deepalhome/launcher/util/carlog/VehicleLogParser;ZLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {p0, p2}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParser;->parse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->disableParser(Ljava/lang/Throwable;Z)V

    :cond_1
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    check-cast v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    return-object v0
.end method

.method public static resolveRoute(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isEZ6()Z

    move-result v0

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;

    sget-object v2, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "log"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "MessageProperty"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const-string v2, "AC/"

    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Climate#"

    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v0, :cond_4

    sget-object v5, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->Companion:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "carStatusTriples content: ["

    invoke-static {p0, v5, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Signal#"

    invoke-static {p0, v5, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "AC/Status@"

    invoke-static {p0, v5, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "AC/Temperature"

    invoke-static {p0, v5, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->Companion:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;->mightParse(Ljava/lang/String;)Z

    move-result v3

    :cond_5
    :goto_1
    invoke-direct {v1, v0, v2, v3}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;-><init>(ZZZ)V

    return-object v1
.end method
