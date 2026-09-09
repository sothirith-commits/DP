.class public final Lme/wcy/lrcview/LrcView$LayoutMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lme/wcy/lrcview/LrcView$LayoutMetrics;


# instance fields
.field public final heightPx:I

.field public final singleVisualLineHeightPx:I

.field public final twoVisualLinesHeightPx:I

.field public final visualLineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lme/wcy/lrcview/LrcView$LayoutMetrics;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lme/wcy/lrcview/LrcView$LayoutMetrics;-><init>(IIZFII)V

    sput-object v7, Lme/wcy/lrcview/LrcView$LayoutMetrics;->EMPTY:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    return-void
.end method

.method public constructor <init>(IIZFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->heightPx:I

    iput p2, p0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->visualLineCount:I

    iput p5, p0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->singleVisualLineHeightPx:I

    iput p6, p0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->twoVisualLinesHeightPx:I

    return-void
.end method
