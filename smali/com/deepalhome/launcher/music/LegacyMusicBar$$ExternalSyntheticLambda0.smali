.class public final synthetic Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/LegacyMusicBar;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/LegacyMusicBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "this$0"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/LegacyMusicBar;

    iget p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    iget-boolean v1, v2, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
