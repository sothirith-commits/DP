.class public final Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

.field public final expandedHorizontalView:Landroid/view/View;

.field public final expandedOffsetX:Ljava/lang/Integer;

.field public final expandedOffsetY:Ljava/lang/Integer;

.field public final expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public final expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

.field public final expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

.field public final expandedVerticalView:Landroid/view/View;

.field public final horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

.field public final horizontalView:Landroid/view/View;

.field public final offsetX:I

.field public final offsetY:I

.field public final popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public final popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

.field public final verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

.field public final verticalView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;Landroid/widget/ImageView;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;I)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;->BOTTOM:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    and-int/lit16 v1, p9, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p6, v2

    :cond_0
    and-int/lit16 v1, p9, 0x400

    if-eqz v1, :cond_1

    move-object p7, v2

    :cond_1
    and-int/lit16 p9, p9, 0x1000

    if-eqz p9, :cond_2

    move-object p8, v2

    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iput-object p5, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetX:I

    iput p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetY:I

    iput-object p6, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    iput-object p7, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iput-object p8, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetX:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetY:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetX:I

    iget v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetX:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetY:I

    iget v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetY:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetX:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetX:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetY:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetY:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetX:I

    invoke-static {v0, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetY:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetX:Ljava/lang/Integer;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetY:Ljava/lang/Integer;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorSpec(horizontalView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verticalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verticalEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", popupHorizontalAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", popupVerticalAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expandedHorizontalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedVerticalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedHorizontalEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedVerticalEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedPopupHorizontalAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedPopupVerticalAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetY:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
