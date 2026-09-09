.class public final Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;

.field public static final fieldByTopic$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final fields$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final signalByName$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->fields$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fieldByTopic$2;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fieldByTopic$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->fieldByTopic$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$signalByName$2;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$signalByName$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->signalByName$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveField(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->fieldByTopic$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method
