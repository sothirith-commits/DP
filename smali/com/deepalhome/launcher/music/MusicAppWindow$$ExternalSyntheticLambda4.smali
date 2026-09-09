.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v4, "this$0"

    iget v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->sendLyricToHUD()V

    return-void

    :pswitch_0
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->sendLyricToHUD()V

    return-void

    :pswitch_1
    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v10}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateProgressThumbPosition(IIZZF)V

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0, v3, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isExpandedMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isLyricShow()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->bottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void

    :pswitch_5
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setFontSizeMenuExpanded(ZZ)V

    return-void

    :pswitch_6
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
