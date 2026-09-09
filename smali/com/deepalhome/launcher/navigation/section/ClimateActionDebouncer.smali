.class public final Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_WINDOW_MS:J = 0xc8L

.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

.field private static final lastTriggeredAtMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->lastTriggeredAtMs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z
.end method
