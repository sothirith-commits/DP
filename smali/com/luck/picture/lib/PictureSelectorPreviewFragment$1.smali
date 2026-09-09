.class public final Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnCallbackListener;
.implements Lcom/luck/picture/lib/magical/OnMagicalViewCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v4, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v4, :cond_a

    iget-boolean v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAnimationStart:Z

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v3, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    :goto_1
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    move v9, v8

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v4, v8

    :goto_4
    move v8, v1

    :goto_5
    iget-object v10, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_7

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const-string v11, "alpha"

    new-array v12, v0, [F

    aput v9, v12, v1

    aput v4, v12, v2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v11, v12, v1

    invoke-virtual {v5, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    instance-of v11, v10, Lcom/luck/picture/lib/widget/TitleBar;

    if-eqz v11, :cond_6

    const-string v11, "translationY"

    new-array v12, v0, [F

    aput v6, v12, v1

    aput v7, v12, v2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v11, v2, [Landroid/animation/Animator;

    aput-object v10, v11, v1

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    add-int/2addr v8, v2

    goto :goto_5

    :cond_7
    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAnimationStart:Z

    new-instance v0, Lcom/luck/picture/lib/magical/MagicalView$6;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, p0}, Lcom/luck/picture/lib/magical/MagicalView$6;-><init>(ZILjava/lang/Object;)V

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v3, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/2addr v0, v2

    goto :goto_6

    :cond_8
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->getEditor()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->hideFullScreenStatusBar()V

    goto :goto_7

    :cond_a
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->handleExternalPreviewBack()V

    goto :goto_7

    :cond_c
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-nez v0, :cond_d

    iget-boolean v0, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    :goto_7
    return-void
.end method

.method public onCall(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [I

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V

    return-void

    :pswitch_0
    check-cast p1, [I

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V

    return-void

    :pswitch_1
    check-cast p1, [I

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V

    return-void

    :pswitch_2
    check-cast p1, [I

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPressDownload()V
    .locals 1

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onPreviewVideoTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
