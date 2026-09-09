.class public final Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final currentHeightPx:I

.field public final currentLine:I

.field public final currentSingleVisualLineHeightPx:I

.field public final currentTwoVisualLinesHeightPx:I

.field public final currentVisualLineCount:I

.field public final dividerHeightPx:I

.field public final nextHeightPx:I

.field public final nextSingleVisualLineHeightPx:I

.field public final nextVisualLineCount:I

.field public final oneLineSuggestedHeightPx:I

.field public final textAvailableWidthPx:I

.field public final twoLineSuggestedHeightPx:I


# direct methods
.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentLine:I

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    iput p3, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    iput p4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentSingleVisualLineHeightPx:I

    iput p5, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iput p6, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextHeightPx:I

    iput p7, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextVisualLineCount:I

    iput p8, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextSingleVisualLineHeightPx:I

    iput p9, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->dividerHeightPx:I

    iput p10, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    iput p11, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->twoLineSuggestedHeightPx:I

    iput p12, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->textAvailableWidthPx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;

    iget v1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentLine:I

    iget v3, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentLine:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentSingleVisualLineHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentSingleVisualLineHeightPx:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextHeightPx:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextVisualLineCount:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextVisualLineCount:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextSingleVisualLineHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextSingleVisualLineHeightPx:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->dividerHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->dividerHeightPx:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->twoLineSuggestedHeightPx:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->twoLineSuggestedHeightPx:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->textAvailableWidthPx:I

    iget p1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->textAvailableWidthPx:I

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentLine:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentSingleVisualLineHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextVisualLineCount:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextSingleVisualLineHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->dividerHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->twoLineSuggestedHeightPx:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->textAvailableWidthPx:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TtmlLineRenderInfo(currentLine="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVisualLineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSingleVisualLineHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentSingleVisualLineHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentTwoVisualLinesHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextVisualLineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextVisualLineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextSingleVisualLineHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextSingleVisualLineHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dividerHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->dividerHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oneLineSuggestedHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", twoLineSuggestedHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->twoLineSuggestedHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textAvailableWidthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->textAvailableWidthPx:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
