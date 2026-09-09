.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;
.implements Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;
.implements Lcom/lzf/easyfloat/interfaces/OnInvokeView;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineRenderInfoChanged(Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string p0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    iget-object v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    iget v4, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iget v5, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    iget v2, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateDynamicLyricWindowHeight(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public onLineRenderInfoChanged(Lme/wcy/lrcview/LrcView$LineRenderInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string p0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    iget-object v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    iget v4, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iget v5, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->oneLineSuggestedHeightPx:I

    iget v2, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentHeightPx:I

    iget v3, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentVisualLineCount:I

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateDynamicLyricWindowHeight(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
