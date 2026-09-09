.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;II)V
    .locals 0

    iput p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$0:Lme/wcy/lrcview/LrcView;

    iput p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$1:I

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$0:Lme/wcy/lrcview/LrcView;

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lme/wcy/lrcview/LrcView;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v0, v1, Lme/wcy/lrcview/LrcView;->mDrawHeight:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iput p0, v1, Lme/wcy/lrcview/LrcView;->mDrawHeight:I

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :pswitch_0
    iget p0, v1, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    iput v0, v1, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_2

    iget-boolean p0, v1, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez p0, :cond_2

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget p0, v1, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {v1, p0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p0

    iput p0, v1, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :pswitch_1
    iget p0, v1, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    iput v0, v1, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_4

    iget-boolean p0, v1, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez p0, :cond_4

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget p0, v1, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {v1, p0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p0

    iput p0, v1, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
