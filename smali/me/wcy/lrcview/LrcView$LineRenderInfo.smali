.class public final Lme/wcy/lrcview/LrcView$LineRenderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final currentHeightPx:I

.field public final currentTwoVisualLinesHeightPx:I

.field public final currentVisualLineCount:I

.field public final dividerHeightPx:I

.field public final nextHeightPx:I

.field public final nextSingleVisualLineHeightPx:I

.field public final oneLineSuggestedHeightPx:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentHeightPx:I

    iput p2, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentVisualLineCount:I

    iput p4, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iput p5, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->nextHeightPx:I

    iput p6, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->nextSingleVisualLineHeightPx:I

    iput p7, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->dividerHeightPx:I

    iput p8, p0, Lme/wcy/lrcview/LrcView$LineRenderInfo;->oneLineSuggestedHeightPx:I

    return-void
.end method
