.class public final Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

.field public lastPlaybackPositionMs:J

.field public lastPlaybackSpeed:F

.field public lastPlaybackState:I

.field public lastTraditionalChineseEnabled:Ljava/lang/Boolean;

.field public final lrcView:Lme/wcy/lrcview/LrcView;

.field public final ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lme/wcy/lrcview/LrcView;Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lme/wcy/lrcview/LrcView;->getDividerHeightPx()F

    move-result p0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setDividerHeightPx(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final forceNotifyLineHeight()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->isTtmlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->notifyRenderInfo()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz p0, :cond_1

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;-><init>(Lme/wcy/lrcview/LrcView;I)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isTtmlMode()Z
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    instance-of v0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V
    .locals 3

    const-string v0, "payload"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    instance-of v1, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->title:Ljava/lang/String;

    iget-object v1, v2, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "primary_chain"

    iget-object v1, v2, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->source:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "apple_music_"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "luna_"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "qq_music_"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    iput-wide p2, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->renderCurrentPayload(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final renderCurrentPayload(Z)V
    .locals 12

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricTraditionalChineseEnabled()Z

    move-result v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastTraditionalChineseEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastTraditionalChineseEnabled:Ljava/lang/Boolean;

    sget-object p1, Lcom/deepalhome/launcher/music/LyricChineseConverter;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertPayload(Lcom/deepalhome/launcher/music/ttml/LyricPayload;Z)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object p1

    instance-of v0, p1, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    const-string v5, " source="

    const-string v6, "LyricRenderDelegate"

    iget-object v7, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->stats(Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;)Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Render TTML: title="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/deepalhome/launcher/music/ttml/LyricPayload;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/deepalhome/launcher/music/ttml/LyricPayload;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lines="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v8, Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;->lineCount:I

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " timedLines="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v8, Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;->timedLineCount:I

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tokens="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v8, Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;->tokenCount:I

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    iput-object v0, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    const-wide/16 v0, 0x0

    invoke-static {v3, v4, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    iput-wide v0, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorRealtimeMs:J

    iget-wide v0, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    invoke-virtual {v7, v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->findLineIndex(J)I

    move-result p1

    iput p1, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    invoke-virtual {v7, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    iget p1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackState:I

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    iget p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackSpeed:F

    invoke-virtual {v7, p1, v0, v1, p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setPlaybackState(IJF)V

    return-void

    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-interface {p1}, Lcom/deepalhome/launcher/music/ttml/LyricPayload;->getSource()Ljava/lang/String;

    move-result-object v8

    const-string v9, "luna_"

    invoke-static {v8, v9, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Render legacy luna lyric: title="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/deepalhome/launcher/music/ttml/LyricPayload;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasText="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->clear()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-wide p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    iput-wide p0, v4, Lme/wcy/lrcview/LrcView;->mInitialTime:J

    new-instance p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    invoke-direct {p0, v4, v0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public final setAnchorLine(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->setAnchorLine(I)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setAnchorLine(I)V

    :cond_1
    return-void
.end method

.method public final setCurrentColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->setCurrentColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setCurrentColor(I)V

    :cond_1
    return-void
.end method

.method public final setNormalColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->setNormalColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setNormalColor(I)V

    :cond_1
    return-void
.end method

.method public final setTextGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->setTextGravity(I)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setTextGravity(I)V

    :cond_1
    return-void
.end method

.method public final setTextSize(FF)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_0

    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, p2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;-><init>(Lme/wcy/lrcview/LrcView;FF)V

    invoke-virtual {v0, v1}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTextSizePx:F

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalTextSizePx:F

    iget-object p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->refreshBlurConfig()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    :cond_1
    return-void
.end method

.method public final showEmpty(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->clear()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setLabel(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->setLabel(Ljava/lang/String;)V

    new-instance p1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const-string v0, ""

    invoke-direct {p1, p0, v0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final showLoading(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->clear()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setLabel(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->setLabel(Ljava/lang/String;)V

    new-instance p1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const-string v0, ""

    invoke-direct {p1, p0, v0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final updatePlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackState:I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackSpeed:F

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->isTtmlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setPlaybackState(IJF)V

    :cond_0
    return-void
.end method

.method public final updateTime(J)V
    .locals 2

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lastPlaybackPositionMs:J

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->isTtmlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorRealtimeMs:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->syncPlaybackFrame(Z)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz p0, :cond_1

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
