.class public final Lcom/deepalhome/launcher/util/AppUtil$iconCache$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/AppUtil$iconCache$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$iconCache$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/AppUtil$iconCache$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/AppUtil$iconCache$2;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil$iconCache$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const/16 p0, 0x400

    int-to-long v2, p0

    div-long/2addr v0, v2

    long-to-int p0, v0

    div-int/lit8 p0, p0, 0x10

    const/16 v0, 0x2000

    const/16 v1, 0x6000

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$iconCache$2$1;

    invoke-direct {v0, p0}, Landroid/util/LruCache;-><init>(I)V

    return-object v0
.end method
