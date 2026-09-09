.class public final Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatPercent(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizePercent(II)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-gt p0, v1, :cond_0

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    return p0

    :cond_0
    if-gtz p1, :cond_1

    return v1

    :cond_1
    if-le p0, p1, :cond_2

    move p0, p1

    :cond_2
    int-to-float p0, p0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p0, v2

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method
