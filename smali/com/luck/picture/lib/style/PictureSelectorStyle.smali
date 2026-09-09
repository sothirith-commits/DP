.class public final Lcom/luck/picture/lib/style/PictureSelectorStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;
    .locals 3

    iget-object v0, p0, Lcom/luck/picture/lib/style/PictureSelectorStyle;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f010033

    iput v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    const v2, 0x7f010034

    iput v2, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    iput v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    iput v2, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    iput-object v0, p0, Lcom/luck/picture/lib/style/PictureSelectorStyle;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    :cond_0
    iget-object p0, p0, Lcom/luck/picture/lib/style/PictureSelectorStyle;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    return-object p0
.end method
