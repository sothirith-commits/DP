.class public final Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/music/MusicBar;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicBar;

    return-void
.end method


# virtual methods
.method public final onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V
    .locals 7

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicBar;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/music/MusicBar;->access$buildMusicKey(Lcom/deepalhome/launcher/music/MusicBar;Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$getCurrentMusicKey$p(Lcom/deepalhome/launcher/music/MusicBar;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar;->access$setCurrentMusicKey$p(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->titleTv:Landroid/widget/TextView;

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->getTitle(Lcom/deepalhome/launcher/music/Music;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->titleTv:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/music/MusicBar;->access$shouldUpdateCoverForSameMusic(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/music/MusicBar;->access$updateCover(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/Object;)V

    :cond_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$getCoverInfoRequestToken$p(Lcom/deepalhome/launcher/music/MusicBar;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lcom/deepalhome/launcher/music/MusicBar;->access$setCoverInfoRequestToken$p(Lcom/deepalhome/launcher/music/MusicBar;J)V

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$getCoverInfoRequestToken$p(Lcom/deepalhome/launcher/music/MusicBar;)J

    move-result-wide v3

    new-instance p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->loadMusicInfo(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    return-void
.end method

.method public final onMusicAppChanged(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicBar;

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$setCurrentMusicAppPackageName$p(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/music/MusicBar;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public final onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->access$showLoading(Lcom/deepalhome/launcher/music/MusicBar;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0, p0}, Lcom/deepalhome/launcher/music/MusicBar;->access$hideLoading(Lcom/deepalhome/launcher/music/MusicBar;Lcom/deepalhome/launcher/music/MusicBar;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0, p0}, Lcom/deepalhome/launcher/music/MusicBar;->access$hideLoading(Lcom/deepalhome/launcher/music/MusicBar;Lcom/deepalhome/launcher/music/MusicBar;)V

    :goto_0
    return-void
.end method
