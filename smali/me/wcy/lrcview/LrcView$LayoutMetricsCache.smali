.class public final Lme/wcy/lrcview/LrcView$LayoutMetricsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public boldEnabled:Z

.field public gravity:I

.field public lineIndex:I

.field public metrics:Lme/wcy/lrcview/LrcView$LayoutMetrics;

.field public textSizePx:F

.field public widthPx:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->lineIndex:I

    iput v0, p0, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->widthPx:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->textSizePx:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->boldEnabled:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->gravity:I

    sget-object v0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->EMPTY:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    iput-object v0, p0, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->metrics:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;-><init>()V

    return-void
.end method
